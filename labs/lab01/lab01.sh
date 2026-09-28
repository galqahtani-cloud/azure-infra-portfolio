#!/bin/bash
# Lab 01: Subscription setup and cost controls
LOC=uaenorth
RG=rg-core-lab-uaen-001

az group create --name $RG --location $LOC \
  --tags env=lab owner=ghazalah project=lab01 deleteAfter=2027-09-30

for p in Microsoft.Network Microsoft.Compute Microsoft.Storage \
         Microsoft.OperationalInsights Microsoft.Insights \
         Microsoft.RecoveryServices Microsoft.DataProtection; do
  az provider register --namespace $p --wait
done

az group show --name $RG --query tags
