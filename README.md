Table of Contents (Oracle Ansible Role)
=================

* [Oracle Dockerized on persistent volume and tools automations ](#Oracle-dockerized-on-persistent-volume-and-tools-automations)
  * [Get some Cloud Infra with LVM - Automated along with ansible latest. RHEL75 or CentOS7](#get-some-cloud-infra-with-lvm---automated-along-with-ansible-latest--rhel75-or-centos7)
   * [Get Some Infra - GCP](#get-some-infra---gcp)
   * [Get Some Infra - AWS](#get-some-infra---aws)
  * [Steps to run the playbook in the infra](#steps-to-run-the-playbook-in-the-infra)
* [Reporting bugs](#reporting-bugs)
* [Patches and pull requests](#patches-and-pull-requests)
* [License](#license)
* [Code of conduct](#code-of-conduct)

### Oracle Dockerized on persistent volume and tools automations

#### Get some Cloud Infra with LVM - Automated along with ansible latest- RHEL75 or CentOS7
##### [Get Some Infra - GCP](https://github.com/dwaiba/gcp-terraform)
##### [Get Some Infra - AWS](https://github.com/dwaiba/aws-terraform)

#### Steps to run the playbook in the infra 

`
cd /data
`

`
git clone https://github.com/dwaiba/oracle
`

`
cd oracle
`


> **cookies.txt is required valid for 30 minutes**

> Obtain cookie post loggin in at `https://login.oracle.com/mysso/signon.jsp` from browser via any [cookies.txt Chrome Plugin](https://chrome.google.com/webstore/search/cookies.txt) post download page license acceptance **[ here ](https://www.oracle.com/technetwork/database/enterprise-edition/downloads/oracle12c-linux-12201-3608234.html)** and put cookie content in `{{ oracle_cookie_put_dir }}` variable mentioned directory as declared in `oracle.yml` playbook. The Cookie file in `{{ oracle_cookie_put_dir }}` defaulted as `roles/oracle/files/` should be named **cookies.txt**. 

**`
nohup sudo ansible-playbook -i inventory oracle.yml &
`**

##### Connect with default creds in oracle.yml
`docker exec -ti oracle-ee bash -c "sqlplus sys/rollapolla23D#@localhost:1521/orclcdb as sysdba"`

`docker exec -ti oracle-ee bash -c "sqlplus schema_owner/schema_owner@localhost:1521/orclcdb"`

OR

**As sql client directly to VM over ports `1521`**

### Reporting bugs

Please report bugs  by opening an issue in the [GitHub Issue Tracker](https://github.com/dwaiba/oracle/issues).
Bugs have auto template defined. Please view it [here](https://github.com/dwaiba/oracle/blob/master/.github/ISSUE_TEMPLATE/bug_report.md)

### Patches and pull requests

Patches can be submitted as GitHub pull requests. If using GitHub please make sure your branch applies to the current master as a 'fast forward' merge (i.e. without creating a merge commit). Use the `git rebase` command to update your branch to the current master if necessary.

### License
  * Please see the [LICENSE file](https://github.com/dwaiba/oracle/blob/master/LICENSE) for licensing information.

### Code of Conduct
  * Please see the [Code of Conduct](https://github.com/dwaiba/oracle/blob/master/CODE_OF_CONDUCT.md)
