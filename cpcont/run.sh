cp -a /app/resources/prometheus.yml /data/prometheus/etc/prometheus
mkdir /data/grafana/etc/grafana/provisioning/datasources
cp -a /app/resources/datasource-prometheus.yaml /data/grafana/etc/grafana/provisioning/datasources
mkdir /data/grafana/etc/grafana/provisioning/dashboards
cp -a /app/resources/config.yml /data/grafana/etc/grafana/provisioning/dashboards
mkdir /data/grafana/var/lib/grafana/dashboards
cp -a /app/resources/dashboard-eds.json /data/grafana/var/lib/grafana/dashboards
mkdir /data/grafana/var/lib/grafana/datasource