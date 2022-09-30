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
 
