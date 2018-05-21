# Oracle Ansible Role
## Oracle Dockerized
 oracle.com cookies.txt is required valid for 30 minutes
 
`
wget --load-cookies=./cookies.txt --no-check-certificate "http://download.oracle.com/otn/linux/oracle12c/122010/linuxx64_12201_database.zip" -O linuxx64_12201_database.zip
`
## [Get Some Infra - GCP](https://gist.github.com/dwaiba/c977a1440855d296b6e508b570915a10#file-gcloud-centos7-docker-tools-L64-L120)

### Run the playbook in the infra 

`
cd /data
`

`
git clone https://github.com/dwaiba/oracle
`

`
cd oracle
`

`
nohup ansible-playbook -i inventory oracle.yml &
`

