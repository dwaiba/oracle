# Oracle Ansible Role
## Oracle Dockerized
 oracle.com cookies.txt is required valid for 30 minutes
 
`
wget --load-cookies=./cookies.txt --no-check-certificate "http://download.oracle.com/otn/linux/oracle12c/122010/linuxx64_12201_database.zip" -O linuxx64_12201_database.zip
`
### [Get Some Infra - GCP](https://github.com/dwaiba/gcp-terraform)
### [Get Some Infra - AWS](https://github.com/dwaiba/aws-terraform)

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

