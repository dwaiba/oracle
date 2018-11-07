# Oracle Ansible Role via Oracle Dockerized on persistent volume with image built from src

# Get some Cloud Infra with LVM - Automated 
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


cookies.txt is required valid for 30 minutes

Obtain cookie post loggin in at `https://login.oracle.com/mysso/signon.jsp` from browser via any [cookies.txt Chrome Plugin](https://chrome.google.com/webstore/search/cookies.txt) post download page license acceptance **[ here ](https://www.oracle.com/technetwork/database/enterprise-edition/downloads/oracle12c-linux-12201-3608234.html)** and put cookie content in `{{ oracle_cookie_put_dir }}` variable mentioned directory as declared in `oracle.yml` playbook.
 

`
**nohup sudo ansible-playbook -i inventory oracle.yml &**
`

### Connect
`docker exec -ti oracle-ee bash -c "sqlplus sys/rollapolla23D#@localhost:1521/orclcdb as sysdba"`

`docker exec -ti oracle-ee bash -c "sqlplus schema_owner/schema_owner@localhost:1521/orclcdb"`
