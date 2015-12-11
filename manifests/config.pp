class confluent_schema_registry::config {
  file { '/etc/schema-registry/schema-registry.properties':
    content => template('confluent_schema_registry/schema-registry.properties.erb'),
    owner   => 'schema-registry',
    group   => 'schema-registry',
    mode    => '0644',
  }
}
