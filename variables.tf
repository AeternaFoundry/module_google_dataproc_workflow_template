variable "dataproc_workflow_templates" {
  description = <<EOT
Map of dataproc_workflow_templates, attributes below
Required:
    - location
    - name
    - jobs (block):
        - hadoop_job (optional, block):
            - archive_uris (optional)
            - args (optional)
            - file_uris (optional)
            - jar_file_uris (optional)
            - logging_config (optional, block):
                - driver_log_levels (optional)
            - main_class (optional)
            - main_jar_file_uri (optional)
            - properties (optional)
        - hive_job (optional, block):
            - continue_on_failure (optional)
            - jar_file_uris (optional)
            - properties (optional)
            - query_file_uri (optional)
            - query_list (optional, block):
                - queries (required)
            - script_variables (optional)
        - labels (optional)
        - pig_job (optional, block):
            - continue_on_failure (optional)
            - jar_file_uris (optional)
            - logging_config (optional, block):
                - driver_log_levels (optional)
            - properties (optional)
            - query_file_uri (optional)
            - query_list (optional, block):
                - queries (required)
            - script_variables (optional)
        - prerequisite_step_ids (optional)
        - presto_job (optional, block):
            - client_tags (optional)
            - continue_on_failure (optional)
            - logging_config (optional, block):
                - driver_log_levels (optional)
            - output_format (optional)
            - properties (optional)
            - query_file_uri (optional)
            - query_list (optional, block):
                - queries (required)
        - pyspark_job (optional, block):
            - archive_uris (optional)
            - args (optional)
            - file_uris (optional)
            - jar_file_uris (optional)
            - logging_config (optional, block):
                - driver_log_levels (optional)
            - main_python_file_uri (required)
            - properties (optional)
            - python_file_uris (optional)
        - scheduling (optional, block):
            - max_failures_per_hour (optional)
            - max_failures_total (optional)
        - spark_job (optional, block):
            - archive_uris (optional)
            - args (optional)
            - file_uris (optional)
            - jar_file_uris (optional)
            - logging_config (optional, block):
                - driver_log_levels (optional)
            - main_class (optional)
            - main_jar_file_uri (optional)
            - properties (optional)
        - spark_r_job (optional, block):
            - archive_uris (optional)
            - args (optional)
            - file_uris (optional)
            - logging_config (optional, block):
                - driver_log_levels (optional)
            - main_r_file_uri (required)
            - properties (optional)
        - spark_sql_job (optional, block):
            - jar_file_uris (optional)
            - logging_config (optional, block):
                - driver_log_levels (optional)
            - properties (optional)
            - query_file_uri (optional)
            - query_list (optional, block):
                - queries (required)
            - script_variables (optional)
        - step_id (required)
    - placement (block):
        - cluster_selector (optional, block):
            - cluster_labels (required)
            - zone (optional)
        - managed_cluster (optional, block):
            - cluster_name (required)
            - config (required, block):
                - autoscaling_config (optional, block):
                    - policy (optional)
                - encryption_config (optional, block):
                    - gce_pd_kms_key_name (optional)
                - endpoint_config (optional, block):
                    - enable_http_port_access (optional)
                - gce_cluster_config (optional, block):
                    - internal_ip_only (optional)
                    - metadata (optional)
                    - network (optional)
                    - node_group_affinity (optional, block):
                        - node_group (required)
                    - private_ipv6_google_access (optional)
                    - reservation_affinity (optional, block):
                        - consume_reservation_type (optional)
                        - key (optional)
                        - values (optional)
                    - service_account (optional)
                    - service_account_scopes (optional)
                    - shielded_instance_config (optional, block):
                        - enable_integrity_monitoring (optional)
                        - enable_secure_boot (optional)
                        - enable_vtpm (optional)
                    - subnetwork (optional)
                    - tags (optional)
                    - zone (optional)
                - initialization_actions (optional, block):
                    - executable_file (optional)
                    - execution_timeout (optional)
                - lifecycle_config (optional, block):
                    - auto_delete_time (optional)
                    - auto_delete_ttl (optional)
                    - idle_delete_ttl (optional)
                - master_config (optional, block):
                    - accelerators (optional, block):
                        - accelerator_count (optional)
                        - accelerator_type (optional)
                    - disk_config (optional, block):
                        - attached_disk_config (optional, block):
                            - disk_size_gb (optional)
                            - disk_type (optional)
                            - provisioned_iops (optional)
                            - provisioned_throughput (optional)
                        - boot_disk_provisioned_iops (optional)
                        - boot_disk_provisioned_throughput (optional)
                        - boot_disk_size_gb (optional)
                        - boot_disk_type (optional)
                        - local_ssd_interface (optional)
                        - num_local_ssds (optional)
                    - image (optional)
                    - instance_flexibility_policy (optional, block):
                        - instance_selection_list (optional, block):
                            - disk_config (optional, block):
                                - attached_disk_config (optional, block):
                                    - disk_size_gb (optional)
                                    - disk_type (optional)
                                    - provisioned_iops (optional)
                                    - provisioned_throughput (optional)
                                - boot_disk_provisioned_iops (optional)
                                - boot_disk_provisioned_throughput (optional)
                                - boot_disk_size_gb (optional)
                                - boot_disk_type (optional)
                                - local_ssd_interface (optional)
                                - num_local_ssds (optional)
                            - machine_types (optional)
                            - rank (optional)
                    - machine_type (optional)
                    - min_cpu_platform (optional)
                    - num_instances (optional)
                    - preemptibility (optional)
                - secondary_worker_config (optional, block):
                    - accelerators (optional, block):
                        - accelerator_count (optional)
                        - accelerator_type (optional)
                    - disk_config (optional, block):
                        - attached_disk_config (optional, block):
                            - disk_size_gb (optional)
                            - disk_type (optional)
                            - provisioned_iops (optional)
                            - provisioned_throughput (optional)
                        - boot_disk_provisioned_iops (optional)
                        - boot_disk_provisioned_throughput (optional)
                        - boot_disk_size_gb (optional)
                        - boot_disk_type (optional)
                        - local_ssd_interface (optional)
                        - num_local_ssds (optional)
                    - image (optional)
                    - instance_flexibility_policy (optional, block):
                        - instance_selection_list (optional, block):
                            - disk_config (optional, block):
                                - attached_disk_config (optional, block):
                                    - disk_size_gb (optional)
                                    - disk_type (optional)
                                    - provisioned_iops (optional)
                                    - provisioned_throughput (optional)
                                - boot_disk_provisioned_iops (optional)
                                - boot_disk_provisioned_throughput (optional)
                                - boot_disk_size_gb (optional)
                                - boot_disk_type (optional)
                                - local_ssd_interface (optional)
                                - num_local_ssds (optional)
                            - machine_types (optional)
                            - rank (optional)
                        - provisioning_model_mix (optional, block):
                            - standard_capacity_base (optional)
                            - standard_capacity_percent_above_base (optional)
                    - machine_type (optional)
                    - min_cpu_platform (optional)
                    - num_instances (optional)
                    - preemptibility (optional)
                - security_config (optional, block):
                    - kerberos_config (optional, block):
                        - cross_realm_trust_admin_server (optional)
                        - cross_realm_trust_kdc (optional)
                        - cross_realm_trust_realm (optional)
                        - cross_realm_trust_shared_password (optional)
                        - enable_kerberos (optional)
                        - kdc_db_key (optional)
                        - key_password (optional)
                        - keystore (optional)
                        - keystore_password (optional)
                        - kms_key (optional)
                        - realm (optional)
                        - root_principal_password (optional)
                        - tgt_lifetime_hours (optional)
                        - truststore (optional)
                        - truststore_password (optional)
                - software_config (optional, block):
                    - image_version (optional)
                    - optional_components (optional)
                    - properties (optional)
                - staging_bucket (optional)
                - temp_bucket (optional)
                - worker_config (optional, block):
                    - accelerators (optional, block):
                        - accelerator_count (optional)
                        - accelerator_type (optional)
                    - disk_config (optional, block):
                        - attached_disk_config (optional, block):
                            - disk_size_gb (optional)
                            - disk_type (optional)
                            - provisioned_iops (optional)
                            - provisioned_throughput (optional)
                        - boot_disk_provisioned_iops (optional)
                        - boot_disk_provisioned_throughput (optional)
                        - boot_disk_size_gb (optional)
                        - boot_disk_type (optional)
                        - local_ssd_interface (optional)
                        - num_local_ssds (optional)
                    - image (optional)
                    - instance_flexibility_policy (optional, block):
                        - instance_selection_list (optional, block):
                            - disk_config (optional, block):
                                - attached_disk_config (optional, block):
                                    - disk_size_gb (optional)
                                    - disk_type (optional)
                                    - provisioned_iops (optional)
                                    - provisioned_throughput (optional)
                                - boot_disk_provisioned_iops (optional)
                                - boot_disk_provisioned_throughput (optional)
                                - boot_disk_size_gb (optional)
                                - boot_disk_type (optional)
                                - local_ssd_interface (optional)
                                - num_local_ssds (optional)
                            - machine_types (optional)
                            - rank (optional)
                    - machine_type (optional)
                    - min_cpu_platform (optional)
                    - num_instances (optional)
                    - preemptibility (optional)
            - labels (optional)
Optional:
    - dag_timeout
    - deletion_policy
    - labels
    - project
    - version
    - encryption_config (block):
        - kms_key (optional)
    - parameters (block):
        - description (optional)
        - fields (required)
        - name (required)
        - validation (optional, block):
            - regex (optional, block):
                - regexes (required)
            - values (optional, block):
                - values (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    dag_timeout     = optional(string)
    deletion_policy = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    version         = optional(number)
    jobs = list(object({
      hadoop_job = optional(object({
        archive_uris  = optional(list(string))
        args          = optional(list(string))
        file_uris     = optional(list(string))
        jar_file_uris = optional(list(string))
        logging_config = optional(object({
          driver_log_levels = optional(map(string))
        }))
        main_class        = optional(string)
        main_jar_file_uri = optional(string)
        properties        = optional(map(string))
      }))
      hive_job = optional(object({
        continue_on_failure = optional(bool)
        jar_file_uris       = optional(list(string))
        properties          = optional(map(string))
        query_file_uri      = optional(string)
        query_list = optional(object({
          queries = list(string)
        }))
        script_variables = optional(map(string))
      }))
      labels = optional(map(string))
      pig_job = optional(object({
        continue_on_failure = optional(bool)
        jar_file_uris       = optional(list(string))
        logging_config = optional(object({
          driver_log_levels = optional(map(string))
        }))
        properties     = optional(map(string))
        query_file_uri = optional(string)
        query_list = optional(object({
          queries = list(string)
        }))
        script_variables = optional(map(string))
      }))
      prerequisite_step_ids = optional(list(string))
      presto_job = optional(object({
        client_tags         = optional(list(string))
        continue_on_failure = optional(bool)
        logging_config = optional(object({
          driver_log_levels = optional(map(string))
        }))
        output_format  = optional(string)
        properties     = optional(map(string))
        query_file_uri = optional(string)
        query_list = optional(object({
          queries = list(string)
        }))
      }))
      pyspark_job = optional(object({
        archive_uris  = optional(list(string))
        args          = optional(list(string))
        file_uris     = optional(list(string))
        jar_file_uris = optional(list(string))
        logging_config = optional(object({
          driver_log_levels = optional(map(string))
        }))
        main_python_file_uri = string
        properties           = optional(map(string))
        python_file_uris     = optional(list(string))
      }))
      scheduling = optional(object({
        max_failures_per_hour = optional(number)
        max_failures_total    = optional(number)
      }))
      spark_job = optional(object({
        archive_uris  = optional(list(string))
        args          = optional(list(string))
        file_uris     = optional(list(string))
        jar_file_uris = optional(list(string))
        logging_config = optional(object({
          driver_log_levels = optional(map(string))
        }))
        main_class        = optional(string)
        main_jar_file_uri = optional(string)
        properties        = optional(map(string))
      }))
      spark_r_job = optional(object({
        archive_uris = optional(list(string))
        args         = optional(list(string))
        file_uris    = optional(list(string))
        logging_config = optional(object({
          driver_log_levels = optional(map(string))
        }))
        main_r_file_uri = string
        properties      = optional(map(string))
      }))
      spark_sql_job = optional(object({
        jar_file_uris = optional(list(string))
        logging_config = optional(object({
          driver_log_levels = optional(map(string))
        }))
        properties     = optional(map(string))
        query_file_uri = optional(string)
        query_list = optional(object({
          queries = list(string)
        }))
        script_variables = optional(map(string))
      }))
      step_id = string
    }))
    placement = object({
      cluster_selector = optional(object({
        cluster_labels = map(string)
        zone           = optional(string)
      }))
      managed_cluster = optional(object({
        cluster_name = string
        config = object({
          autoscaling_config = optional(object({
            policy = optional(string)
          }))
          encryption_config = optional(object({
            gce_pd_kms_key_name = optional(string)
          }))
          endpoint_config = optional(object({
            enable_http_port_access = optional(bool)
          }))
          gce_cluster_config = optional(object({
            internal_ip_only = optional(bool)
            metadata         = optional(map(string))
            network          = optional(string)
            node_group_affinity = optional(object({
              node_group = string
            }))
            private_ipv6_google_access = optional(string)
            reservation_affinity = optional(object({
              consume_reservation_type = optional(string)
              key                      = optional(string)
              values                   = optional(list(string))
            }))
            service_account        = optional(string)
            service_account_scopes = optional(list(string))
            shielded_instance_config = optional(object({
              enable_integrity_monitoring = optional(bool)
              enable_secure_boot          = optional(bool)
              enable_vtpm                 = optional(bool)
            }))
            subnetwork = optional(string)
            tags       = optional(set(string))
            zone       = optional(string)
          }))
          initialization_actions = optional(list(object({
            executable_file   = optional(string)
            execution_timeout = optional(string)
          })))
          lifecycle_config = optional(object({
            auto_delete_time = optional(string)
            auto_delete_ttl  = optional(string)
            idle_delete_ttl  = optional(string)
          }))
          master_config = optional(object({
            accelerators = optional(list(object({
              accelerator_count = optional(number)
              accelerator_type  = optional(string)
            })))
            disk_config = optional(object({
              attached_disk_config = optional(list(object({
                disk_size_gb           = optional(number)
                disk_type              = optional(string)
                provisioned_iops       = optional(number)
                provisioned_throughput = optional(number)
              })))
              boot_disk_provisioned_iops       = optional(number)
              boot_disk_provisioned_throughput = optional(number)
              boot_disk_size_gb                = optional(number)
              boot_disk_type                   = optional(string)
              local_ssd_interface              = optional(string)
              num_local_ssds                   = optional(number)
            }))
            image = optional(string)
            instance_flexibility_policy = optional(object({
              instance_selection_list = optional(list(object({
                disk_config = optional(object({
                  attached_disk_config = optional(list(object({
                    disk_size_gb           = optional(number)
                    disk_type              = optional(string)
                    provisioned_iops       = optional(number)
                    provisioned_throughput = optional(number)
                  })))
                  boot_disk_provisioned_iops       = optional(number)
                  boot_disk_provisioned_throughput = optional(number)
                  boot_disk_size_gb                = optional(number)
                  boot_disk_type                   = optional(string)
                  local_ssd_interface              = optional(string)
                  num_local_ssds                   = optional(number)
                }))
                machine_types = optional(list(string))
                rank          = optional(number)
              })))
            }))
            machine_type     = optional(string)
            min_cpu_platform = optional(string)
            num_instances    = optional(number)
            preemptibility   = optional(string)
          }))
          secondary_worker_config = optional(object({
            accelerators = optional(list(object({
              accelerator_count = optional(number)
              accelerator_type  = optional(string)
            })))
            disk_config = optional(object({
              attached_disk_config = optional(list(object({
                disk_size_gb           = optional(number)
                disk_type              = optional(string)
                provisioned_iops       = optional(number)
                provisioned_throughput = optional(number)
              })))
              boot_disk_provisioned_iops       = optional(number)
              boot_disk_provisioned_throughput = optional(number)
              boot_disk_size_gb                = optional(number)
              boot_disk_type                   = optional(string)
              local_ssd_interface              = optional(string)
              num_local_ssds                   = optional(number)
            }))
            image = optional(string)
            instance_flexibility_policy = optional(object({
              instance_selection_list = optional(list(object({
                disk_config = optional(object({
                  attached_disk_config = optional(list(object({
                    disk_size_gb           = optional(number)
                    disk_type              = optional(string)
                    provisioned_iops       = optional(number)
                    provisioned_throughput = optional(number)
                  })))
                  boot_disk_provisioned_iops       = optional(number)
                  boot_disk_provisioned_throughput = optional(number)
                  boot_disk_size_gb                = optional(number)
                  boot_disk_type                   = optional(string)
                  local_ssd_interface              = optional(string)
                  num_local_ssds                   = optional(number)
                }))
                machine_types = optional(list(string))
                rank          = optional(number)
              })))
              provisioning_model_mix = optional(object({
                standard_capacity_base               = optional(number)
                standard_capacity_percent_above_base = optional(number)
              }))
            }))
            machine_type     = optional(string)
            min_cpu_platform = optional(string)
            num_instances    = optional(number)
            preemptibility   = optional(string)
          }))
          security_config = optional(object({
            kerberos_config = optional(object({
              cross_realm_trust_admin_server    = optional(string)
              cross_realm_trust_kdc             = optional(string)
              cross_realm_trust_realm           = optional(string)
              cross_realm_trust_shared_password = optional(string)
              enable_kerberos                   = optional(bool)
              kdc_db_key                        = optional(string)
              key_password                      = optional(string)
              keystore                          = optional(string)
              keystore_password                 = optional(string)
              kms_key                           = optional(string)
              realm                             = optional(string)
              root_principal_password           = optional(string)
              tgt_lifetime_hours                = optional(number)
              truststore                        = optional(string)
              truststore_password               = optional(string)
            }))
          }))
          software_config = optional(object({
            image_version       = optional(string)
            optional_components = optional(list(string))
            properties          = optional(map(string))
          }))
          staging_bucket = optional(string)
          temp_bucket    = optional(string)
          worker_config = optional(object({
            accelerators = optional(list(object({
              accelerator_count = optional(number)
              accelerator_type  = optional(string)
            })))
            disk_config = optional(object({
              attached_disk_config = optional(list(object({
                disk_size_gb           = optional(number)
                disk_type              = optional(string)
                provisioned_iops       = optional(number)
                provisioned_throughput = optional(number)
              })))
              boot_disk_provisioned_iops       = optional(number)
              boot_disk_provisioned_throughput = optional(number)
              boot_disk_size_gb                = optional(number)
              boot_disk_type                   = optional(string)
              local_ssd_interface              = optional(string)
              num_local_ssds                   = optional(number)
            }))
            image = optional(string)
            instance_flexibility_policy = optional(object({
              instance_selection_list = optional(list(object({
                disk_config = optional(object({
                  attached_disk_config = optional(list(object({
                    disk_size_gb           = optional(number)
                    disk_type              = optional(string)
                    provisioned_iops       = optional(number)
                    provisioned_throughput = optional(number)
                  })))
                  boot_disk_provisioned_iops       = optional(number)
                  boot_disk_provisioned_throughput = optional(number)
                  boot_disk_size_gb                = optional(number)
                  boot_disk_type                   = optional(string)
                  local_ssd_interface              = optional(string)
                  num_local_ssds                   = optional(number)
                }))
                machine_types = optional(list(string))
                rank          = optional(number)
              })))
            }))
            machine_type     = optional(string)
            min_cpu_platform = optional(string)
            num_instances    = optional(number)
            preemptibility   = optional(string)
          }))
        })
        labels = optional(map(string))
      }))
    })
    encryption_config = optional(object({
      kms_key = optional(string)
    }))
    parameters = optional(list(object({
      description = optional(string)
      fields      = list(string)
      name        = string
      validation = optional(object({
        regex = optional(object({
          regexes = list(string)
        }))
        values = optional(object({
          values = list(string)
        }))
      }))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataproc_workflow_templates : (
        length(v.jobs) >= 1
      )
    ])
    error_message = "Each jobs list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.dataproc_workflow_templates : (
        v.placement.managed_cluster == null || (v.placement.managed_cluster.config.secondary_worker_config == null || (v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy == null || (v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.provisioning_model_mix == null || (v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.provisioning_model_mix.standard_capacity_base == null || (v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.provisioning_model_mix.standard_capacity_base >= 0)))))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.dataproc_workflow_templates : (
        v.placement.managed_cluster == null || (v.placement.managed_cluster.config.secondary_worker_config == null || (v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy == null || (v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.provisioning_model_mix == null || (v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.provisioning_model_mix.standard_capacity_percent_above_base == null || (v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.provisioning_model_mix.standard_capacity_percent_above_base >= 0 && v.placement.managed_cluster.config.secondary_worker_config.instance_flexibility_policy.provisioning_model_mix.standard_capacity_percent_above_base <= 100)))))
      )
    ])
    error_message = "must be between 0 and 100"
  }
}

