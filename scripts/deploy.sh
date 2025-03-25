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
# Hash 2893
# Hash 2159
# Hash 3796
# Hash 9983
# Hash 9367
# Hash 8365
# Hash 7890
# Hash 5331
# Hash 6949
# Hash 9763
# Hash 7722
# Hash 5714
# Hash 2899
# Hash 4558
# Hash 1909
# Hash 6576
# Hash 5851
# Hash 4083
# Hash 4725
# Hash 1402
# Hash 2550
# Hash 4152
# Hash 5641
# Hash 3911
# Hash 1201
# Hash 8334
# Hash 1907
# Hash 3685
# Hash 8659
# Hash 3895
# Hash 1877
# Hash 7557
# Hash 8472
# Hash 9767
# Hash 3740
# Hash 2421
# Hash 7439
# Hash 1175
# Hash 8848
# Hash 7035
# Hash 2304
# Hash 6302
# Hash 7743
# Hash 7990
# Hash 4054
# Hash 6314
# Hash 3465
# Hash 4707
# Hash 1842
# Hash 1333
# Hash 4987
# Hash 2412
# Hash 6388
# Hash 1732
# Hash 1416
# Hash 2715
# Hash 7298
# Hash 1837
# Hash 5196
# Hash 5927
# Hash 7761
# Hash 8608
# Hash 1822
# Hash 8891
# Hash 7670
# Hash 8481
# Hash 8906
# Hash 7153
# Hash 4336
# Hash 2876
# Hash 1563
# Hash 1022
# Hash 2973
# Hash 1441
# Hash 3045
# Hash 1301