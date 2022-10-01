# kubeadm
kubeadm
Kubernetes cluster creation:

Step-1:  Install Docker.​ (Fire these commands in MasterNode and WorkerNodes)

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
 
                     

Step-2: Install kubelet, Kubeadm, Kubectl.​ (Fire these commands in MasterNode and workerNodes)

    
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
    
    
    

Step-3: Install Kubeadm cluster in Master Node.​ (*****Fire these commands in MasterNode only)

    # Initialize kubeadm
    kubeadm init
    
    # If you are the root user, you can run:
    export KUBECONFIG=/etc/kubernetes/admin.conf     # It will be shown in kubeadm init command output
    
    #If you are other than "root" user, run below:    # It will be shown in kubeadm init command output
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
    
    #********* Note down the "kubeadm join ...." command, need to fire in worker node for joining in masterNode  # shown in kubeadm init command output




    

Step-4: Join the "WorkerNode-1" to MasterNode.​ (Fire this command in WorkerNode-1 only)

    #copy this command from the "kubeadm init" command execution output lastline from MasterNode (like below example)
    #                   kubeadm join 10.160.0.19:6443 --token z5cjqc.n2npw36lyibc8f0h \
    #                               --discovery-token-ca-cert-hash sha256:ecf74dba27b33833762ac39d67974886f61fe93568830763a997c57db9d800c6


   

Step-5: Join the "WorkerNode-2" to MasterNode.​  (Fire this command in WorkerNode-2 only)

    
    #copy this command from the "kubeadm init" command execution output lastline from MasterNode (like below example)
    #                   kubeadm join 10.160.0.19:6443 --token z5cjqc.n2npw36lyibc8f0h \
    #                               --discovery-token-ca-cert-hash sha256:ecf74dba27b33833762ac39d67974886f61fe93568830763a997c57db9d800c6

    

Step-6: Install CNI in Master Node.​ (Fire this commands in MasterNode)

        
    kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"![image](https://user-images.githubusercontent.com/113718872/193353928-b63a69c3-6cb6-41d0-9b3b-d7a690b92def.png)


    
Step-7: Display the nodes.​ (Fire these commands in MasterNode)

    kubectl get nodes
    kubectl get nodes -o wide

  
