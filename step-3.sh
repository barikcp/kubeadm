    # Initialize kubeadm
    kubeadm init
    
    # If you are the root user, you can run:
    export KUBECONFIG=/etc/kubernetes/admin.conf     # It will be shown in kubeadm init command output
    
    #If you are other than "root" user, run below:    # It will be shown in kubeadm init command output
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    
    #******** Note down the "kubeadm join ...." command, need to fire in worker node for joining in masterNode  # shown in kubeadm init command output
