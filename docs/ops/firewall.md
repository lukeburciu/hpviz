## Managing Firewall rules

The serves use UFW for the firewall and is managed via the CICD process through group_vars

`tcp` is the default protocol, `udp` needs to be specified with `protocol: udp`

### [theSink]

````
### Firewall
firewall_services:
  - name: ssh     # <- Do no remove will break CICD
  - name: https
  - name: 522
  - name: 1514    # syslog ingestion
  - name: 9000
````

### [viz001]

````
### Firewall - defaults to tcp
firewall_services:
  - name: ssh # <- Do no remove will break CICD
  - name: https
  - name: 522
  - name: 9000 # vector2vector
````
