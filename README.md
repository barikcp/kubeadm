# kubeadm
kubeadm
Kubernetes cluster creation:

Step-1:  Install Docker.​

    sudo apt-get update   # Update the apt package index
      
    # install packages to allow apt to use a repository over HTTPS
    sudo apt-get install \              
    ca-certificates \
    curl \
    gnupg \
    lsb-release ​                                                              

    # Add Docker’s official GPG key:  
    sudo mkdir -p /etc/apt/keyrings​      
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg       
     
    # set up the repository
    
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
 
                     

Step-2: Install kubelet, Kubeadm, Kubectl.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-3: Install Kubeadm cluster in Master Node.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-4: Join the "WorkerNode-1" to MasterNode.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-5: Join the "WorkerNode-2" to MasterNode.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-6: Install CNI in Master Node.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode

Step-7: Display the nodes.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode
