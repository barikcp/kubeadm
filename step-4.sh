# Join the "WorkerNode-1" to MasterNode.​ (Fire this command in WorkerNode-1 only)

#copy this command from the "kubeadm init" command execution output lastline from MasterNode (like below example)
#                   kubeadm join 10.160.0.19:6443 --token z5cjqc.n2npw36lyibc8f0h \
#                               --discovery-token-ca-cert-hash sha256:ecf74dba27b33833762ac39d67974886f61fe93568830763a997c57db9d800c6
