---
title: Architecture
description: Learn how Helmless works under the hood.
---

# Helmless Architecture

```mermaid
graph LR
    A[Application
    Repository] --> B[CI/CD Pipeline]
    subgraph B[CI/CD Pipeline]
        direction LR
        B1[Template Helm Chart] --> B2[Deploy with
        Cloud Provider CLI]
    end
    B --> D[Serverless
    Application]
```