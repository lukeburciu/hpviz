# Grafana Dashboards

This directory is for information relating to dashboards, configurations etc for grafana within the hpviz project



1. Docker configuration for Grafana can be found here: [hpviz/docker/docker-compose.yml](https://github.com/lukeburciu/hpviz/tree/master/docker)

docker-compose base (intended to be a reference point. No changes to be made)

```yml
grafana:
      image: grafana/grafana-ubuntu #-<os> flag when omitted defaults to alpine
      restart: unless-stopped
      depends_on:
      ports: 3000:3000
      container_name: grafana
      environment:
        - GF_INSTALL_PLUGINS=grafana-worldmap-panel,heatmap,graph,simpod-json-datasource #Most grafana plugins are default
```

## Version History
*place new versions on top when editing*

**2020-09-29: Added plugins and dashboards for base**

docker-compose


**Plugins**

Default plugins required:
- prometheus [link](https://grafana.com/grafana/plugins/prometheus) 
- elasticsearch [link](https://grafana.com/grafana/plugins/elasticsearch/)
- graph [link](https://grafana.com/grafana/plugins/graph)
- table [link](https://grafana.com/grafana/plugins/table)


**Dashboards**

- kafka [link](https://grafana.com/grafana/dashboards/721) 
    - Dependent on 
        - [prometheus](https://grafana.com/grafana/plugins/prometheus)
        - [graph] (https://grafana.com/grafana/plugins/graph)
- docker and system monitoring [link](https://grafana.com/grafana/dashboards/893)
    - Dependent on 
        - [graph](https://grafana.com/grafana/plugins/graph)
        - [prometheus](https://grafana.com/grafana/plugins/prometheus)
        - [singlestat](https://grafana.com/grafana/plugins/singlestat)
        - [table](https://grafana.com/grafana/plugins/table)
        - grafana 4.0.0-beta2 +