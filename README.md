# Projet : Cloud computing 
API written by Fabien HUITELEC and declarative code of infrastructure (Microsoft Azure) using HCL Terraform.

## Working group
The whole project has been written by four persons. Feel free to explore this repo, ask us questions but please mention us if you want to use a part of our code (CI/CD or terraform module). :
- Louis SKRZYPCZAK (Software engineer, DevOps @Bopizy)
- Arthur LAFONT (Cybersecurity consultant @Cintamaya)
- Mélodie COCHET (Cybersecurity consultant @Orange_Cyberdéfense)
- Alexandra RENOUVIN--DELECOURT (Cybersecurity student @Junia_ISEN)

## Technologies used

- Terraform by HashiCorp `v1.5.7`
- Python `>=v3.12`
- FastAPI `>=v0.115.0`


## Project structure

The repo has been splitted into several folders :
- `.github` : contains the CI/CD declaration
- `examples ` : contains the API written in Python using FastAPI framework
- `infrastructure` : contains the cloud architecture declarations
- `test` : contains as the name suggest, unit test for API endpoints 

## Installation

### Requirements

- HashiCorp Terraform `v1.5.7+` : https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
- A working brain
- Azure CLI `v2.66+` :
https://learn.microsoft.com/fr-fr/cli/azure/install-azure-cli
