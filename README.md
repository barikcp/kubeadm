# kubeadm
kubeadm
K3s cluster creation:

Step-1: Install K3S cluster in MasterNode.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-1: Install K3S cluster in MasterNode.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-1: Install K3S cluster in MasterNode.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-1: Install K3S cluster in MasterNode.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

