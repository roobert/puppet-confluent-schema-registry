class confluent_schema_registry::config (
  $kafkastore_connection_url = 'localhost:2181',
  $kafkastore_topic          = '_schemas',
  $debug                     = 'false',
  $port                      = '8081',
) {
  file { '/etc/schema-registry/schema-registry.properties':
    content => template('confluent_schema_registry/schema-registry.properties.erb'),
    owner   => 'schema-registry',
    group   => 'schema-registry',
    mode    => '0644',
  }
}
