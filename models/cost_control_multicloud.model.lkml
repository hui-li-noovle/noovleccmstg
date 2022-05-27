connection: "dev-noovle-spa-consumption-cost_control_multicloud"

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
