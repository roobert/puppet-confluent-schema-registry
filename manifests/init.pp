class confluent_schema_registry (
  $version                   = '1.0.1-2',
  $kafkastore_connection_url = 'localhost:2181',
  $kafkastore_topic          = '_schemas',
  $debug                     = 'false',
  $port                      = '8081',
) {
  class { 'confluent_schema_registry::install': } ->
  class { 'confluent_schema_registry::config': } ->
  class { 'confluent_schema_registry::service': } ->
  Class['confluent_schema_registry']
}
