#!/bin/bash

# Generate JSON schema documentation
npx @adobe/jsonschema2md --header false --input . --out docs/cloudrun/schema/

# Move and cleanup files
mv docs/cloudrun/schema/values.md docs/cloudrun/schema/index.md
rm docs/cloudrun/schema/README.md
rm docs/cloudrun/schema/values-1*.md

# Initialize nav section in mkdocs.yaml
echo "nav:" > mkdocs.yaml
echo "  - cloudrun/schema/index.md" >> mkdocs.yaml

# Create a temporary file to store unique base properties
temp_file=$(mktemp)

# Find all files that indicate nested properties
for file in docs/cloudrun/schema/values-properties-*-properties*.md
do
    if [ -f "$file" ]
    then
        # Get filename without path and extension
        filename=${file##*/}
        filename=${filename%.md}

        # Remove 'values-properties-' prefix and everything after '-properties'
        base_property=${filename#values-properties-}
        base_property=${base_property%%-properties*}

        echo "$base_property" >> "$temp_file"
    fi
done

# Sort and remove duplicates
sort -u "$temp_file" > "${temp_file}.sorted"

# Process each unique base property
while read -r base_property
do
    base_file="docs/cloudrun/schema/values-properties-${base_property}.md"
    if [ -f "$base_file" ]
    then
        echo "  - $base_property: cloudrun/schema/values-properties-$base_property.md" >> mkdocs.yaml
    fi
done < "${temp_file}.sorted"

# Cleanup temporary files
rm "$temp_file" "${temp_file}.sorted"
