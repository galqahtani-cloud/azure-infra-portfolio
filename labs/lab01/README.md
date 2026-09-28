# Lab 01: Subscription Setup and Cost Controls

## Ticket
CS-001: Contoso Saudi is starting an Azure lab. Set up cost controls before any resource is deployed.

## What I implemented
- Monthly budget of USD 30 with alerts at 50% and 90% of actual cost, and 100% of forecast cost
- Resource group `rg-core-lab-uaen-001` with standard tags: env, owner, project, deleteAfter
- Naming convention based on Cloud Adoption Framework abbreviations
- Resource providers registered in advance to avoid deployment failures

## Naming convention
`<type>-<workload>-<env>-<region>-<instance>`, for example `rg-core-lab-uaen-001`

## Lessons learned
- Budgets alert but do not stop spending; automation needs an action group.
- Budget scope matters: billing account vs subscription vs resource group.
- Cost data can take 8 to 24 hours to appear, so alerts are not instant.
- CLI deployments can fail with MissingSubscriptionRegistration if providers are not registered.
