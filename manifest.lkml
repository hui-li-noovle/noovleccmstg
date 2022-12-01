#project_name: "dev_cost_control_multicloud"

constant: vis_id {
  value: "default_id"
  export: override_optional
}
constant: vis_label {
  value: "default_label"
  export: override_optional
}
visualization: {
  id: "@{vis_id}"
  label: "@{vis_label}"
  file: "liquid_fill_gauge.js"
  dependencies: ["ssf"]
}
