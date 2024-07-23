#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 2709
# Hash 5112
# Hash 3113
# Hash 5401
# Hash 8106
# Hash 4774
# Hash 5597
# Hash 4898
# Hash 3584
# Hash 3977
# Hash 8188
# Hash 7967
# Hash 3270
# Hash 4426
# Hash 4947
# Hash 4241
# Hash 9685
# Hash 8572
# Hash 8461
# Hash 9667
# Hash 5591
# Hash 6666
# Hash 8723
# Hash 7745
# Hash 3938