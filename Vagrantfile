Vagrant.configure("2") do |config|
  config.vm.box = "generic/centos8"
  config.vm.hostname = "ansible"
  config.vm.network "private_network", ip: "11.11.11.11"
  config.vm.provider "virtualbox" do |v|
	v.memory = 4096
	v.cpus = 2
  end
  config.vm.provision "shell", inline: "sudo yum update -y && sudo yum install vim wget java-1.8.0-openjdk -y && sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo && sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key && sudo yum upgrade -y && sudo yum install jenkins -y && sudo systemctl start jenkins && sudo yum install python3 -y && sudo yum install python3-pip -y && sudo pip3 install ansible"
end
