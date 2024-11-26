#!/bin/bash

echo "Starting schema documentation generation..."
echo "-----------------------------------"
echo "Running in directory: $(pwd)"
echo "Charts to process: $(find charts -name Chart.yaml -exec dirname {} \; | wc -l)"
echo "-----------------------------------"


# Find all directories containing Chart.yaml
while IFS= read -r chart_path; do

    chart_dir=$(dirname "$chart_path")
    echo "Processing chart: $chart_dir"
    base_path=${chart_dir#charts/}  # Remove 'charts/' prefix
    schema_dir="docs/schemas/${base_path}"

    echo "Generating schema docs in: $schema_dir"

    # Clear existing schema directory
    echo "Cleaning up existing schema directory..."
    rm -rf "$schema_dir"

    # Create schema directory
    echo "Creating schema directory..."
    mkdir -p "$schema_dir"

    # Generate JSON schema documentation
    echo "Generating JSON schema documentation..."
    npx @adobe/jsonschema2md --header false --input "$chart_dir" --out "$schema_dir"

    # Move and cleanup files
    echo "Moving and cleaning up generated files..."
    mv "$schema_dir/values.md" "$schema_dir/index.md"
    rm -f "$schema_dir/README.md"

    # First pass: Create directories and move files
    echo "Reorganizing files into directory structure..."
    find "$schema_dir" -name "values-properties-*.md" | while read -r file; do
        # Get the new path and name
        rel_path=${file#$schema_dir/values-properties-}

        if [[ $rel_path == *"-properties-"* ]]; then
            # This is a nested property
            parent_dir=${rel_path%%-properties-*}
            prop_name=${rel_path##*-properties-}
            prop_name=${prop_name%.md}

            # Create parent directory
            mkdir -p "$schema_dir/$parent_dir"

            if [[ $rel_path == *"-properties-"*"-properties-"* ]]; then
                # This is a sub-property
                mv "$file" "$schema_dir/$parent_dir/$prop_name.md"
            else
                # This is the parent property's main file
                if [[ "$file" == *"values-properties-$parent_dir.md" ]]; then
                    mv "$file" "$schema_dir/$parent_dir/index.md"
                else
                    mv "$file" "$schema_dir/$parent_dir/$prop_name.md"
                fi
            fi
        else
            # This is a top-level property
            prop_name=${rel_path%.md}
            mv "$file" "$schema_dir/$prop_name.md"
        fi
    done

    # Additional pass: Move standalone .md files into their directories if they exist
    echo "Moving standalone files into their directories..."
    find "$schema_dir" -maxdepth 1 -name "*.md" | while read -r file; do
        if [[ "$file" != "$schema_dir/index.md" ]]; then  # Skip main index.md
            basename=${file%.md}
            dirname=${basename##*/}
            if [[ -d "$schema_dir/$dirname" ]]; then
                mv "$file" "$schema_dir/$dirname/index.md"
            fi
        fi
    done

    # Update internal links
    echo "Updating internal links..."
    find "$schema_dir" -type f -name "*.md" | while read -r file; do
        # Get the directory depth relative to schema_dir
        rel_dir=${file#$schema_dir/}
        dir_depth=$(echo "$rel_dir" | tr -cd '/' | wc -c)

        if [[ "$OSTYPE" == "darwin"* ]]; then
            if [[ $dir_depth -eq 0 ]]; then
                # Root level files
                sed -i '' 's/values-properties-\([^-]*\)\.md/\1\/index.md/g' "$file"
                sed -i '' 's/values-properties-\([^-]*\)-properties-\([^.]*\)\.md/\1\/\2.md/g' "$file"
            else
                # Files in subdirectories - use relative paths
                sed -i '' 's/values-properties-\([^-]*\)\.md/index.md/g' "$file"
                sed -i '' 's/values-properties-\([^-]*\)-properties-\([^.]*\)\.md/\2.md/g' "$file"
            fi
        else
            if [[ $dir_depth -eq 0 ]]; then
                # Root level files
                sed -i 's/values-properties-\([^-]*\)\.md/\1\/index.md/g' "$file"
                sed -i 's/values-properties-\([^-]*\)-properties-\([^.]*\)\.md/\1\/\2.md/g' "$file"
            else
                # Files in subdirectories - use relative paths
                sed -i 's/values-properties-\([^-]*\)\.md/index.md/g' "$file"
                sed -i 's/values-properties-\([^-]*\)-properties-\([^.]*\)\.md/\2.md/g' "$file"
            fi
        fi
    done

    echo "Completed processing $chart_dir"
    echo "-----------------------------------"

done < <(find charts -name Chart.yaml)
