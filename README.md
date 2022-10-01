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
    
    #Install Docker Engine
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
    
    #Check Docker process staus
     ps -eaf|grep docker
     sudo service docker status  # press q to exit
 
                     

Step-2: Install kubelet, Kubeadm, Kubectl.​

    
    #Update the apt package index and install packages needed to use the Kubernetes apt repository:
    sudo apt-get update
    sudo apt-get install -y apt-transport-https ca-certificates curl

    
    #Download the Google Cloud public signing key:
    sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
    
    #Add the Kubernetes apt repository:
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

    
    #Update apt package index, install kubelet, kubeadm and kubectl
    sudo apt-get update
    sudo apt-get install -y kubelet kubeadm kubectl
    
    
    

Step-3: Install Kubeadm cluster in Master Node.​

    # Initialize kubeadm
    kubeadm init
    
    # If you are the root user, you can run:
    export KUBECONFIG=/etc/kubernetes/admin.conf     # It will be shown in kubeadm init command output
    
    #If you are other than "root" user, run below:    # It will be shown in kubeadm init command output
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    
    #********* Note down the "kubeadm join ...." command, need to fire in worker node for joining in masterNode  # shown in kubeadm init command output




    

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

        
    kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"![image](https://user-images.githubusercontent.com/113718872/193353928-b63a69c3-6cb6-41d0-9b3b-d7a690b92def.png)


    

Step-7: Display the nodes.​

    wget https://github.com/k3s-io/k3s/releases/download/v1.23.5%2Bk3s1/k3s   # Download the binary

    chmod +x k3s ​                                                            # Give Executable permission  

    sudo ./k3s server​                                                        # Install K3s cluster in Master Node   
    
    sudo ./k3s kubectl get nodes -o wide                                      # Check how many nodes got created
     
    cat /var/lib/rancher/k3s/server/token                                     # Use this token for connecting Worker-Node to MasterNode
