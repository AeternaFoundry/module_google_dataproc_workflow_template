resource "google_dataproc_workflow_template" "dataproc_workflow_templates" {
  for_each = var.dataproc_workflow_templates

  location        = each.value.location
  name            = each.value.name
  dag_timeout     = each.value.dag_timeout
  deletion_policy = each.value.deletion_policy
  labels          = each.value.labels
  project         = each.value.project
  version         = each.value.version

  dynamic "jobs" {
    for_each = each.value.jobs
    content {
      dynamic "hadoop_job" {
        for_each = jobs.value.hadoop_job != null ? [jobs.value.hadoop_job] : []
        content {
          archive_uris  = hadoop_job.value.archive_uris
          args          = hadoop_job.value.args
          file_uris     = hadoop_job.value.file_uris
          jar_file_uris = hadoop_job.value.jar_file_uris
          dynamic "logging_config" {
            for_each = hadoop_job.value.logging_config != null ? [hadoop_job.value.logging_config] : []
            content {
              driver_log_levels = logging_config.value.driver_log_levels
            }
          }
          main_class        = hadoop_job.value.main_class
          main_jar_file_uri = hadoop_job.value.main_jar_file_uri
          properties        = hadoop_job.value.properties
        }
      }
      dynamic "hive_job" {
        for_each = jobs.value.hive_job != null ? [jobs.value.hive_job] : []
        content {
          continue_on_failure = hive_job.value.continue_on_failure
          jar_file_uris       = hive_job.value.jar_file_uris
          properties          = hive_job.value.properties
          query_file_uri      = hive_job.value.query_file_uri
          dynamic "query_list" {
            for_each = hive_job.value.query_list != null ? [hive_job.value.query_list] : []
            content {
              queries = query_list.value.queries
            }
          }
          script_variables = hive_job.value.script_variables
        }
      }
      labels = jobs.value.labels
      dynamic "pig_job" {
        for_each = jobs.value.pig_job != null ? [jobs.value.pig_job] : []
        content {
          continue_on_failure = pig_job.value.continue_on_failure
          jar_file_uris       = pig_job.value.jar_file_uris
          dynamic "logging_config" {
            for_each = pig_job.value.logging_config != null ? [pig_job.value.logging_config] : []
            content {
              driver_log_levels = logging_config.value.driver_log_levels
            }
          }
          properties     = pig_job.value.properties
          query_file_uri = pig_job.value.query_file_uri
          dynamic "query_list" {
            for_each = pig_job.value.query_list != null ? [pig_job.value.query_list] : []
            content {
              queries = query_list.value.queries
            }
          }
          script_variables = pig_job.value.script_variables
        }
      }
      prerequisite_step_ids = jobs.value.prerequisite_step_ids
      dynamic "presto_job" {
        for_each = jobs.value.presto_job != null ? [jobs.value.presto_job] : []
        content {
          client_tags         = presto_job.value.client_tags
          continue_on_failure = presto_job.value.continue_on_failure
          dynamic "logging_config" {
            for_each = presto_job.value.logging_config != null ? [presto_job.value.logging_config] : []
            content {
              driver_log_levels = logging_config.value.driver_log_levels
            }
          }
          output_format  = presto_job.value.output_format
          properties     = presto_job.value.properties
          query_file_uri = presto_job.value.query_file_uri
          dynamic "query_list" {
            for_each = presto_job.value.query_list != null ? [presto_job.value.query_list] : []
            content {
              queries = query_list.value.queries
            }
          }
        }
      }
      dynamic "pyspark_job" {
        for_each = jobs.value.pyspark_job != null ? [jobs.value.pyspark_job] : []
        content {
          archive_uris  = pyspark_job.value.archive_uris
          args          = pyspark_job.value.args
          file_uris     = pyspark_job.value.file_uris
          jar_file_uris = pyspark_job.value.jar_file_uris
          dynamic "logging_config" {
            for_each = pyspark_job.value.logging_config != null ? [pyspark_job.value.logging_config] : []
            content {
              driver_log_levels = logging_config.value.driver_log_levels
            }
          }
          main_python_file_uri = pyspark_job.value.main_python_file_uri
          properties           = pyspark_job.value.properties
          python_file_uris     = pyspark_job.value.python_file_uris
        }
      }
      dynamic "scheduling" {
        for_each = jobs.value.scheduling != null ? [jobs.value.scheduling] : []
        content {
          max_failures_per_hour = scheduling.value.max_failures_per_hour
          max_failures_total    = scheduling.value.max_failures_total
        }
      }
      dynamic "spark_job" {
        for_each = jobs.value.spark_job != null ? [jobs.value.spark_job] : []
        content {
          archive_uris  = spark_job.value.archive_uris
          args          = spark_job.value.args
          file_uris     = spark_job.value.file_uris
          jar_file_uris = spark_job.value.jar_file_uris
          dynamic "logging_config" {
            for_each = spark_job.value.logging_config != null ? [spark_job.value.logging_config] : []
            content {
              driver_log_levels = logging_config.value.driver_log_levels
            }
          }
          main_class        = spark_job.value.main_class
          main_jar_file_uri = spark_job.value.main_jar_file_uri
          properties        = spark_job.value.properties
        }
      }
      dynamic "spark_r_job" {
        for_each = jobs.value.spark_r_job != null ? [jobs.value.spark_r_job] : []
        content {
          archive_uris = spark_r_job.value.archive_uris
          args         = spark_r_job.value.args
          file_uris    = spark_r_job.value.file_uris
          dynamic "logging_config" {
            for_each = spark_r_job.value.logging_config != null ? [spark_r_job.value.logging_config] : []
            content {
              driver_log_levels = logging_config.value.driver_log_levels
            }
          }
          main_r_file_uri = spark_r_job.value.main_r_file_uri
          properties      = spark_r_job.value.properties
        }
      }
      dynamic "spark_sql_job" {
        for_each = jobs.value.spark_sql_job != null ? [jobs.value.spark_sql_job] : []
        content {
          jar_file_uris = spark_sql_job.value.jar_file_uris
          dynamic "logging_config" {
            for_each = spark_sql_job.value.logging_config != null ? [spark_sql_job.value.logging_config] : []
            content {
              driver_log_levels = logging_config.value.driver_log_levels
            }
          }
          properties     = spark_sql_job.value.properties
          query_file_uri = spark_sql_job.value.query_file_uri
          dynamic "query_list" {
            for_each = spark_sql_job.value.query_list != null ? [spark_sql_job.value.query_list] : []
            content {
              queries = query_list.value.queries
            }
          }
          script_variables = spark_sql_job.value.script_variables
        }
      }
      step_id = jobs.value.step_id
    }
  }

  placement {
    dynamic "cluster_selector" {
      for_each = each.value.placement.cluster_selector != null ? [each.value.placement.cluster_selector] : []
      content {
        cluster_labels = cluster_selector.value.cluster_labels
        zone           = cluster_selector.value.zone
      }
    }
    dynamic "managed_cluster" {
      for_each = each.value.placement.managed_cluster != null ? [each.value.placement.managed_cluster] : []
      content {
        cluster_name = managed_cluster.value.cluster_name
        config {
          dynamic "autoscaling_config" {
            for_each = managed_cluster.value.config.autoscaling_config != null ? [managed_cluster.value.config.autoscaling_config] : []
            content {
              policy = autoscaling_config.value.policy
            }
          }
          dynamic "encryption_config" {
            for_each = managed_cluster.value.config.encryption_config != null ? [managed_cluster.value.config.encryption_config] : []
            content {
              gce_pd_kms_key_name = encryption_config.value.gce_pd_kms_key_name
            }
          }
          dynamic "endpoint_config" {
            for_each = managed_cluster.value.config.endpoint_config != null ? [managed_cluster.value.config.endpoint_config] : []
            content {
              enable_http_port_access = endpoint_config.value.enable_http_port_access
            }
          }
          dynamic "gce_cluster_config" {
            for_each = managed_cluster.value.config.gce_cluster_config != null ? [managed_cluster.value.config.gce_cluster_config] : []
            content {
              internal_ip_only = gce_cluster_config.value.internal_ip_only
              metadata         = gce_cluster_config.value.metadata
              network          = gce_cluster_config.value.network
              dynamic "node_group_affinity" {
                for_each = gce_cluster_config.value.node_group_affinity != null ? [gce_cluster_config.value.node_group_affinity] : []
                content {
                  node_group = node_group_affinity.value.node_group
                }
              }
              private_ipv6_google_access = gce_cluster_config.value.private_ipv6_google_access
              dynamic "reservation_affinity" {
                for_each = gce_cluster_config.value.reservation_affinity != null ? [gce_cluster_config.value.reservation_affinity] : []
                content {
                  consume_reservation_type = reservation_affinity.value.consume_reservation_type
                  key                      = reservation_affinity.value.key
                  values                   = reservation_affinity.value.values
                }
              }
              service_account        = gce_cluster_config.value.service_account
              service_account_scopes = gce_cluster_config.value.service_account_scopes
              dynamic "shielded_instance_config" {
                for_each = gce_cluster_config.value.shielded_instance_config != null ? [gce_cluster_config.value.shielded_instance_config] : []
                content {
                  enable_integrity_monitoring = shielded_instance_config.value.enable_integrity_monitoring
                  enable_secure_boot          = shielded_instance_config.value.enable_secure_boot
                  enable_vtpm                 = shielded_instance_config.value.enable_vtpm
                }
              }
              subnetwork = gce_cluster_config.value.subnetwork
              tags       = gce_cluster_config.value.tags
              zone       = gce_cluster_config.value.zone
            }
          }
          dynamic "initialization_actions" {
            for_each = managed_cluster.value.config.initialization_actions != null ? managed_cluster.value.config.initialization_actions : []
            content {
              executable_file   = initialization_actions.value.executable_file
              execution_timeout = initialization_actions.value.execution_timeout
            }
          }
          dynamic "lifecycle_config" {
            for_each = managed_cluster.value.config.lifecycle_config != null ? [managed_cluster.value.config.lifecycle_config] : []
            content {
              auto_delete_time = lifecycle_config.value.auto_delete_time
              auto_delete_ttl  = lifecycle_config.value.auto_delete_ttl
              idle_delete_ttl  = lifecycle_config.value.idle_delete_ttl
            }
          }
          dynamic "master_config" {
            for_each = managed_cluster.value.config.master_config != null ? [managed_cluster.value.config.master_config] : []
            content {
              dynamic "accelerators" {
                for_each = master_config.value.accelerators != null ? master_config.value.accelerators : []
                content {
                  accelerator_count = accelerators.value.accelerator_count
                  accelerator_type  = accelerators.value.accelerator_type
                }
              }
              dynamic "disk_config" {
                for_each = master_config.value.disk_config != null ? [master_config.value.disk_config] : []
                content {
                  dynamic "attached_disk_config" {
                    for_each = disk_config.value.attached_disk_config != null ? disk_config.value.attached_disk_config : []
                    content {
                      disk_size_gb           = attached_disk_config.value.disk_size_gb
                      disk_type              = attached_disk_config.value.disk_type
                      provisioned_iops       = attached_disk_config.value.provisioned_iops
                      provisioned_throughput = attached_disk_config.value.provisioned_throughput
                    }
                  }
                  boot_disk_provisioned_iops       = disk_config.value.boot_disk_provisioned_iops
                  boot_disk_provisioned_throughput = disk_config.value.boot_disk_provisioned_throughput
                  boot_disk_size_gb                = disk_config.value.boot_disk_size_gb
                  boot_disk_type                   = disk_config.value.boot_disk_type
                  local_ssd_interface              = disk_config.value.local_ssd_interface
                  num_local_ssds                   = disk_config.value.num_local_ssds
                }
              }
              image = master_config.value.image
              dynamic "instance_flexibility_policy" {
                for_each = master_config.value.instance_flexibility_policy != null ? [master_config.value.instance_flexibility_policy] : []
                content {
                  dynamic "instance_selection_list" {
                    for_each = instance_flexibility_policy.value.instance_selection_list != null ? instance_flexibility_policy.value.instance_selection_list : []
                    content {
                      dynamic "disk_config" {
                        for_each = instance_selection_list.value.disk_config != null ? [instance_selection_list.value.disk_config] : []
                        content {
                          dynamic "attached_disk_config" {
                            for_each = disk_config.value.attached_disk_config != null ? disk_config.value.attached_disk_config : []
                            content {
                              disk_size_gb           = attached_disk_config.value.disk_size_gb
                              disk_type              = attached_disk_config.value.disk_type
                              provisioned_iops       = attached_disk_config.value.provisioned_iops
                              provisioned_throughput = attached_disk_config.value.provisioned_throughput
                            }
                          }
                          boot_disk_provisioned_iops       = disk_config.value.boot_disk_provisioned_iops
                          boot_disk_provisioned_throughput = disk_config.value.boot_disk_provisioned_throughput
                          boot_disk_size_gb                = disk_config.value.boot_disk_size_gb
                          boot_disk_type                   = disk_config.value.boot_disk_type
                          local_ssd_interface              = disk_config.value.local_ssd_interface
                          num_local_ssds                   = disk_config.value.num_local_ssds
                        }
                      }
                      machine_types = instance_selection_list.value.machine_types
                      rank          = instance_selection_list.value.rank
                    }
                  }
                }
              }
              machine_type     = master_config.value.machine_type
              min_cpu_platform = master_config.value.min_cpu_platform
              num_instances    = master_config.value.num_instances
              preemptibility   = master_config.value.preemptibility
            }
          }
          dynamic "secondary_worker_config" {
            for_each = managed_cluster.value.config.secondary_worker_config != null ? [managed_cluster.value.config.secondary_worker_config] : []
            content {
              dynamic "accelerators" {
                for_each = secondary_worker_config.value.accelerators != null ? secondary_worker_config.value.accelerators : []
                content {
                  accelerator_count = accelerators.value.accelerator_count
                  accelerator_type  = accelerators.value.accelerator_type
                }
              }
              dynamic "disk_config" {
                for_each = secondary_worker_config.value.disk_config != null ? [secondary_worker_config.value.disk_config] : []
                content {
                  dynamic "attached_disk_config" {
                    for_each = disk_config.value.attached_disk_config != null ? disk_config.value.attached_disk_config : []
                    content {
                      disk_size_gb           = attached_disk_config.value.disk_size_gb
                      disk_type              = attached_disk_config.value.disk_type
                      provisioned_iops       = attached_disk_config.value.provisioned_iops
                      provisioned_throughput = attached_disk_config.value.provisioned_throughput
                    }
                  }
                  boot_disk_provisioned_iops       = disk_config.value.boot_disk_provisioned_iops
                  boot_disk_provisioned_throughput = disk_config.value.boot_disk_provisioned_throughput
                  boot_disk_size_gb                = disk_config.value.boot_disk_size_gb
                  boot_disk_type                   = disk_config.value.boot_disk_type
                  local_ssd_interface              = disk_config.value.local_ssd_interface
                  num_local_ssds                   = disk_config.value.num_local_ssds
                }
              }
              image = secondary_worker_config.value.image
              dynamic "instance_flexibility_policy" {
                for_each = secondary_worker_config.value.instance_flexibility_policy != null ? [secondary_worker_config.value.instance_flexibility_policy] : []
                content {
                  dynamic "instance_selection_list" {
                    for_each = instance_flexibility_policy.value.instance_selection_list != null ? instance_flexibility_policy.value.instance_selection_list : []
                    content {
                      dynamic "disk_config" {
                        for_each = instance_selection_list.value.disk_config != null ? [instance_selection_list.value.disk_config] : []
                        content {
                          dynamic "attached_disk_config" {
                            for_each = disk_config.value.attached_disk_config != null ? disk_config.value.attached_disk_config : []
                            content {
                              disk_size_gb           = attached_disk_config.value.disk_size_gb
                              disk_type              = attached_disk_config.value.disk_type
                              provisioned_iops       = attached_disk_config.value.provisioned_iops
                              provisioned_throughput = attached_disk_config.value.provisioned_throughput
                            }
                          }
                          boot_disk_provisioned_iops       = disk_config.value.boot_disk_provisioned_iops
                          boot_disk_provisioned_throughput = disk_config.value.boot_disk_provisioned_throughput
                          boot_disk_size_gb                = disk_config.value.boot_disk_size_gb
                          boot_disk_type                   = disk_config.value.boot_disk_type
                          local_ssd_interface              = disk_config.value.local_ssd_interface
                          num_local_ssds                   = disk_config.value.num_local_ssds
                        }
                      }
                      machine_types = instance_selection_list.value.machine_types
                      rank          = instance_selection_list.value.rank
                    }
                  }
                  dynamic "provisioning_model_mix" {
                    for_each = instance_flexibility_policy.value.provisioning_model_mix != null ? [instance_flexibility_policy.value.provisioning_model_mix] : []
                    content {
                      standard_capacity_base               = provisioning_model_mix.value.standard_capacity_base
                      standard_capacity_percent_above_base = provisioning_model_mix.value.standard_capacity_percent_above_base
                    }
                  }
                }
              }
              machine_type     = secondary_worker_config.value.machine_type
              min_cpu_platform = secondary_worker_config.value.min_cpu_platform
              num_instances    = secondary_worker_config.value.num_instances
              preemptibility   = secondary_worker_config.value.preemptibility
            }
          }
          dynamic "security_config" {
            for_each = managed_cluster.value.config.security_config != null ? [managed_cluster.value.config.security_config] : []
            content {
              dynamic "kerberos_config" {
                for_each = security_config.value.kerberos_config != null ? [security_config.value.kerberos_config] : []
                content {
                  cross_realm_trust_admin_server    = kerberos_config.value.cross_realm_trust_admin_server
                  cross_realm_trust_kdc             = kerberos_config.value.cross_realm_trust_kdc
                  cross_realm_trust_realm           = kerberos_config.value.cross_realm_trust_realm
                  cross_realm_trust_shared_password = kerberos_config.value.cross_realm_trust_shared_password
                  enable_kerberos                   = kerberos_config.value.enable_kerberos
                  kdc_db_key                        = kerberos_config.value.kdc_db_key
                  key_password                      = kerberos_config.value.key_password
                  keystore                          = kerberos_config.value.keystore
                  keystore_password                 = kerberos_config.value.keystore_password
                  kms_key                           = kerberos_config.value.kms_key
                  realm                             = kerberos_config.value.realm
                  root_principal_password           = kerberos_config.value.root_principal_password
                  tgt_lifetime_hours                = kerberos_config.value.tgt_lifetime_hours
                  truststore                        = kerberos_config.value.truststore
                  truststore_password               = kerberos_config.value.truststore_password
                }
              }
            }
          }
          dynamic "software_config" {
            for_each = managed_cluster.value.config.software_config != null ? [managed_cluster.value.config.software_config] : []
            content {
              image_version       = software_config.value.image_version
              optional_components = software_config.value.optional_components
              properties          = software_config.value.properties
            }
          }
          staging_bucket = managed_cluster.value.config.staging_bucket
          temp_bucket    = managed_cluster.value.config.temp_bucket
          dynamic "worker_config" {
            for_each = managed_cluster.value.config.worker_config != null ? [managed_cluster.value.config.worker_config] : []
            content {
              dynamic "accelerators" {
                for_each = worker_config.value.accelerators != null ? worker_config.value.accelerators : []
                content {
                  accelerator_count = accelerators.value.accelerator_count
                  accelerator_type  = accelerators.value.accelerator_type
                }
              }
              dynamic "disk_config" {
                for_each = worker_config.value.disk_config != null ? [worker_config.value.disk_config] : []
                content {
                  dynamic "attached_disk_config" {
                    for_each = disk_config.value.attached_disk_config != null ? disk_config.value.attached_disk_config : []
                    content {
                      disk_size_gb           = attached_disk_config.value.disk_size_gb
                      disk_type              = attached_disk_config.value.disk_type
                      provisioned_iops       = attached_disk_config.value.provisioned_iops
                      provisioned_throughput = attached_disk_config.value.provisioned_throughput
                    }
                  }
                  boot_disk_provisioned_iops       = disk_config.value.boot_disk_provisioned_iops
                  boot_disk_provisioned_throughput = disk_config.value.boot_disk_provisioned_throughput
                  boot_disk_size_gb                = disk_config.value.boot_disk_size_gb
                  boot_disk_type                   = disk_config.value.boot_disk_type
                  local_ssd_interface              = disk_config.value.local_ssd_interface
                  num_local_ssds                   = disk_config.value.num_local_ssds
                }
              }
              image = worker_config.value.image
              dynamic "instance_flexibility_policy" {
                for_each = worker_config.value.instance_flexibility_policy != null ? [worker_config.value.instance_flexibility_policy] : []
                content {
                  dynamic "instance_selection_list" {
                    for_each = instance_flexibility_policy.value.instance_selection_list != null ? instance_flexibility_policy.value.instance_selection_list : []
                    content {
                      dynamic "disk_config" {
                        for_each = instance_selection_list.value.disk_config != null ? [instance_selection_list.value.disk_config] : []
                        content {
                          dynamic "attached_disk_config" {
                            for_each = disk_config.value.attached_disk_config != null ? disk_config.value.attached_disk_config : []
                            content {
                              disk_size_gb           = attached_disk_config.value.disk_size_gb
                              disk_type              = attached_disk_config.value.disk_type
                              provisioned_iops       = attached_disk_config.value.provisioned_iops
                              provisioned_throughput = attached_disk_config.value.provisioned_throughput
                            }
                          }
                          boot_disk_provisioned_iops       = disk_config.value.boot_disk_provisioned_iops
                          boot_disk_provisioned_throughput = disk_config.value.boot_disk_provisioned_throughput
                          boot_disk_size_gb                = disk_config.value.boot_disk_size_gb
                          boot_disk_type                   = disk_config.value.boot_disk_type
                          local_ssd_interface              = disk_config.value.local_ssd_interface
                          num_local_ssds                   = disk_config.value.num_local_ssds
                        }
                      }
                      machine_types = instance_selection_list.value.machine_types
                      rank          = instance_selection_list.value.rank
                    }
                  }
                }
              }
              machine_type     = worker_config.value.machine_type
              min_cpu_platform = worker_config.value.min_cpu_platform
              num_instances    = worker_config.value.num_instances
              preemptibility   = worker_config.value.preemptibility
            }
          }
        }
        labels = managed_cluster.value.labels
      }
    }
  }

  dynamic "encryption_config" {
    for_each = each.value.encryption_config != null ? [each.value.encryption_config] : []
    content {
      kms_key = encryption_config.value.kms_key
    }
  }

  dynamic "parameters" {
    for_each = each.value.parameters != null ? each.value.parameters : []
    content {
      description = parameters.value.description
      fields      = parameters.value.fields
      name        = parameters.value.name
      dynamic "validation" {
        for_each = parameters.value.validation != null ? [parameters.value.validation] : []
        content {
          dynamic "regex" {
            for_each = validation.value.regex != null ? [validation.value.regex] : []
            content {
              regexes = regex.value.regexes
            }
          }
          dynamic "values" {
            for_each = validation.value.values != null ? [validation.value.values] : []
            content {
              values = values.value.values
            }
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

