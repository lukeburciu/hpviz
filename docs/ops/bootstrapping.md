## Bootstrap for the CI/CD pipeline

New servers need to be bootstrapped for the CI/CD pipeline.

### pre-requisites

* existing account with elevated privileges (example shows root user)
* your pub key in authorize_hosts file for that user on the remote host(s).

### Command
!!! Example "Command"
    `ansible-playbook -i "x.x.x.x," bootstrap.yml --extra-vars "user=root"`

!!! important 
    "x.x.x.x," represents the ip address of the remote host.

    Note the ',' in the above command in the '-i' parameter.  Multiple IP address can be added separated with ',' and make sure trailing ',' still exists or will look for an inventory file of that name and fail.

The following is performed by the bootstrap.yml playbook:

1. 'hpviz-ci' is added as a user to the remote server(s)
2. 'hpviz-ci' ssh pub key is added to users authorized keys file
3. 'wheel' group is added if required
4. 'wheel' group is added to sudo and set to NOPASS
5. 'hpviz-ci' is added to wheel group
