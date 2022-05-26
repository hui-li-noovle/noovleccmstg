connection: "prd-noovle-spa-consumption-multicloud_output"

# include all the views
include: "/views/**/*.view"

datagroup: cost_control_multicloud_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cost_control_multicloud_default_datagroup

explore: v_dashboard {}

explore: mat_dashboard {}
