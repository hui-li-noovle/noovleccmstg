connection: "prd-noovle-spa-consumption-multicloud_output"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/*"

datagroup: cost_control_multicloud_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cost_control_multicloud_default_datagroup

explore: v_dashboard {}

explore: mat_dashboard {}

explore: fed_aws_billing {}

explore: mat_export_billing {
  join: mat_export_billing__labels {
    view_label: "Mat Export Billing: Labels"
    sql: LEFT JOIN UNNEST(${mat_export_billing.labels}) as mat_export_billing__labels ;;
    relationship: one_to_many
  }

  join: mat_export_billing__credits {
    view_label: "Mat Export Billing: Credits"
    sql: LEFT JOIN UNNEST(${mat_export_billing.credits}) as mat_export_billing__credits ;;
    relationship: one_to_many
  }

  join: mat_export_billing__system_labels {
    view_label: "Mat Export Billing: System Labels"
    sql: LEFT JOIN UNNEST(${mat_export_billing.system_labels}) as mat_export_billing__system_labels ;;
    relationship: one_to_many
  }

  join: mat_export_billing__project__labels {
    view_label: "Mat Export Billing: Project Labels"
    sql: LEFT JOIN UNNEST(${mat_export_billing.project__labels}) as mat_export_billing__project__labels ;;
    relationship: one_to_many
  }

  join: mat_export_billing__project__ancestors {
    view_label: "Mat Export Billing: Project Ancestors"
    sql: LEFT JOIN UNNEST(${mat_export_billing.project__ancestors}) as mat_export_billing__project__ancestors ;;
    relationship: one_to_many
  }
}
