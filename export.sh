#!/bin/bash

#export OPENSTACK_DNS_NAMESERVERS="8.8.8.8"
#export OPENSTACK_FAILURE_DOMAIN="nova"
#export OPENSTACK_CONTROL_PLANE_MACHINE_FLAVOR="m1.medium"
#export OPENSTACK_NODE_MACHINE_FLAVOR="m1.medium"
#export OPENSTACK_IMAGE_NAME="Ubuntu-18.04-190314"
#export OPENSTACK_SSH_KEY_NAME="jacobbaek-keypair"

declare -x OPENSTACK_DNS_NAMESERVERS="8.8.8.8"
declare -x OPENSTACK_FAILURE_DOMAIN="nova"
declare -x OPENSTACK_CONTROL_PLANE_MACHINE_FLAVOR="m1.medium"
declare -x OPENSTACK_NODE_MACHINE_FLAVOR="m1.medium"
#declare -x OPENSTACK_IMAGE_NAME="Ubuntu-18.04-190314"
declare -x OPENSTACK_IMAGE_NAME="CentOS-7-x86_64-1901"
declare -x OPENSTACK_SSH_KEY_NAME="jacobbaek-keypair"

source env.rc clouds.yaml staging

clusterctl config cluster capo-jacobcluster --kubernetes-version v1.18.2 --control-plane-machine-count=1 --worker-machine-count=2 > capo-cluster.yaml
