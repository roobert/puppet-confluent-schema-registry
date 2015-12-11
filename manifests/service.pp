class confluent_schema_registry::service {
  service { 'schema_registry':
    ensure     => 'schema-registry',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
