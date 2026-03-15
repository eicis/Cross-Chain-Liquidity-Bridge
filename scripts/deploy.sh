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
# Hash 1996
# Hash 1428
# Hash 7331
# Hash 2232
# Hash 7977
# Hash 9488
# Hash 3927
# Hash 6481
# Hash 5477
# Hash 9956
# Hash 6016
# Hash 1109
# Hash 1676
# Hash 7397
# Hash 5057
# Hash 4271
# Hash 8089
# Hash 7453
# Hash 1213
# Hash 3833
# Hash 3008
# Hash 3611
# Hash 2882
# Hash 1558
# Hash 5344
# Hash 1280
# Hash 2346
# Hash 8096
# Hash 7307
# Hash 3846
# Hash 4886
# Hash 1822
# Hash 8681
# Hash 3556
# Hash 1730
# Hash 9769
# Hash 7493
# Hash 6516
# Hash 1912
# Hash 9135
# Hash 7498
# Hash 6511
# Hash 9552
# Hash 4381
# Hash 9233
# Hash 5282
# Hash 6498
# Hash 1317
# Hash 6567
# Hash 7818
# Hash 8631
# Hash 4995
# Hash 3180
# Hash 2597
# Hash 7681
# Hash 9276
# Hash 6911
# Hash 1052
# Hash 2454
# Hash 7158
# Hash 7612
# Hash 5752
# Hash 2375
# Hash 8481
# Hash 2429
# Hash 7774
# Hash 1119
# Hash 5311
# Hash 7828
# Hash 8731
# Hash 7427
# Hash 6034
# Hash 9362
# Hash 9801
# Hash 3184
# Hash 6181
# Hash 8110
# Hash 3461
# Hash 3106
# Hash 9036
# Hash 2536
# Hash 8207
# Hash 8940
# Hash 8957
# Hash 1117
# Hash 8567
# Hash 5604
# Hash 4873
# Hash 6255
# Hash 2012
# Hash 4054
# Hash 5617
# Hash 2338
# Hash 8859
# Hash 8316
# Hash 5203
# Hash 6974
# Hash 9265
# Hash 6588
# Hash 9745