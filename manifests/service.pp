class confluent_schema_registry::config {
  service { 'schema_registry':
    ensure     => 'schema-registry',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
