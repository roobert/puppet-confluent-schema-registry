class confluent_schema_registry (
  $kafkastore_connection_url = $::confluent_schema_registry::params::kafkastore_connection_url,
  $kafkastore_topic          = $::confluent_schema_registry::params::kafkastore_topic,
  $debug                     = $::confluent_schema_registry::params::debug,
  $port                      = $::confluent_schema_registry::params::port,
  $version                   = $::confluent_schema_registry::params::version,
) inherits from $::confluent_schema_registry::params {
  class { 'confluent_schema_registry::install': } ->
  class { 'confluent_schema_registry::config': } ->
  class { 'confluent_schema_registry::service': } ->
  Class['confluent_schema_registry']
}
