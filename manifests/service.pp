class confluent_schema_registry::service {
  service { 'schema_registry':
    name       => 'schema-registry',
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
