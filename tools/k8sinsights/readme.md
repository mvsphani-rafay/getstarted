# Usage

export KUBECONFIG=kubeconfig.file

bash k8s-insights.sh CLUSTER_NAME

# What does the discovery script do? 

## Step 1 

Verifies if given user inputs are valid. Cluster name & kuneconfig to access the cluster for discovery

## Step 2 

List all namespaces

## Step 3 

List all CRDs

## Step 4

Creates a list of all namespace-scoped resources using kubectl api-resources --verbs=list --namespaced=true

## Step 5

Uses the resource list from Step 4 and performs kubectl get $resource -A and saves the output into txt file

## Step 6

Creates a list of all Cluster-Scoped resources using kubectl api-resources --verbs=list --namespaced=false

## Step 7

Uses the resource list from step 6 and performs kubectl get $resource  and saves the output into txt file