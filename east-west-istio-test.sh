for i in $(seq 10); do 
kubectl exec -n sample -c sleep \
    "$(kubectl get pod -n sample -l \
    app=sleep -o jsonpath='{.items[0].metadata.name}')" \
    -- curl -sS helloworld.sample:5000/hello ;
    done