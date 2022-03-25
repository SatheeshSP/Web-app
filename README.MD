In this project, I'm going to deploy simple web application
Step 1:
a. Creating the Dockerfile & Jenkinsfile in the local system in VSC editor

Step 2:
a. Creating the remote repo in github and pushing the files

Step 3: Installation of jenkins in docker container on AWS account:
Note: Open the ports of 20,80,8080 in Inbound security rule & I'm using default VPC, subnet & security group.
a.	apt-get update -y
b.	apt-get install -y docker.io
c.	docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker jenkins/jenkins:lts (configurating ports & volumes to store data and access docker commands inside the container)
d.	docker exec -it -u 0 container_ID /bin/bash (to enter into jenkins container)
e.	chmod 666 /var/run/docker.sock (inside the container)
f.	cat /var/jenkins_home/secrets/initialAdminPassword (to view the password)

Step 4:
a. Creating jenkins pipeline job and configuring webhook build trigger and main branch of github repository

Step 5:
Add webhooks in github repo settings
Webhook:jenkins_url/github-webhook/

Step 6:
Build the job in jenkins container

Step 7:
Create target group and add existing instance to perform health checks

Step 8:
Create Loadbalancer and add existing target group

Step 9:
Copy the DNS of loadbalancer and paste it in google to view the web page

