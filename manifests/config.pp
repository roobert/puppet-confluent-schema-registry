class confluent_schema_registry::config {
  service { 'schema_registry':
    ensure     => 'schema-registry',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

  file { '/etc/schema-registry/schema-registry.properties':
    content => template('confluent_schema_registry/schema-registry.properties.erb')
  }
}
