###
### Vaultron: Vault custom configuration file
###

cluster_name = "${cluster_name }"
ui = true

storage "consul" {
  address = "${consul_address}:8500"
  path = "vault/"
  disable_clustering = "${disable_clustering}"
  service_tags = "${service_tags}"
}

listener "tcp" {
  address = "${address}"
  tls_disable = "${tls_disable}"
}

telemetry {
  statsd_address = "172.17.0.2:8125"
}

plugin_directory  = "/vault/plugins"
