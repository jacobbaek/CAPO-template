sudo curl -L https://github.com/kubernetes-sigs/cluster-api/releases/download/v0.3.14/clusterctl-linux-amd64 -o /usr/local/bin/clusterctl
sudo chmod +x /usr/local/bin/clusterctl
sudo curl -L https://github.com/mikefarah/yq/releases/download/3.4.1/yq_linux_amd64 -o /usr/local/bin/yq
sudo chmod +x /usr/local/bin/yq

wget https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-openstack/master/templates/env.rc -O env.rc

clusterctl init --infrastructure openstack

