- dashboard: multicloud_overview
  title: MultiCloud Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  elements:
  - title: Monthly Cost
    name: Monthly Cost

    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_column
    fields: [mat_dashboard.provider, mat_dashboard.net_cost,mat_dashboard.credits, mat_dashboard.invoice_month]
    pivots: [mat_dashboard.provider]
    filters:
      mat_dashboard.invoice_month: "-NULL"
    sorts: [mat_dashboard.provider, mat_dashboard.invoice_month]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: 'Net Cost/Credits (Scale Logarithmic)', orientation: left, series: [{axisId: mat_dashboard.net_cost,
            id: AWS - mat_dashboard.net_cost, name: AWS - Net Cost}, {
            axisId: mat_dashboard.net_cost, id: AZURE - mat_dashboard.net_cost, name: AZURE
              - Net Cost}, {axisId: mat_dashboard.net_cost, id: GCP -
              mat_dashboard.net_cost, name: GCP - Net Cost}, {axisId: mat_dashboard.credits,
            id: AWS - mat_dashboard.credits, name: AWS - Credits}, {axisId: mat_dashboard.credits,
            id: AZURE - mat_dashboard.credits, name: AZURE - Credits},
          {axisId: mat_dashboard.credits, id: GCP - mat_dashboard.credits, name: GCP
              - Credits}], showLabels: true, showValues: true, valueFormat: '[>=1000000]€0,,"M";€0,"K"',
        unpinAxis: false, tickDensity: default, type: log}]
    series_types:
      AWS - mat_dashboard.credits: line
      AZURE - mat_dashboard.credits: line
      GCP - mat_dashboard.credits: line
    series_colors:
      AWS - mat_dashboard.net_cost: "#F9AB00"
      GCP - mat_dashboard.net_cost: "#34A853"
      AWS - mat_dashboard.credits: "#E8710A"
      AZURE - mat_dashboard.net_cost: "#12B5CB"
      AZURE - mat_dashboard.credits: "#5691cc"
      GCP - mat_dashboard.credits: "#60b212"
    series_labels:
      AWS - mat_dashboard.net_cost: Net Cost AWS
      GCP - mat_dashboard.net_cost: Net Cost GCP
      AWS - mat_dashboard.credits: Credits AWS
      AZURE - mat_dashboard.net_cost: Net Cost AZURE
      AZURE - mat_dashboard.credits: Credits AZURE
      GCP - mat_dashboard.credits: Credits GCP

    series_point_styles:
      AWS - mat_dashboard.credits: diamond
      AZURE - mat_dashboard.credits: diamond
      GCP - mat_dashboard.credits: diamond
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 15
    col: 0
    width: 18
    height: 8

  - title: Top Billed Services
    name: Top Billed Services
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.net_cost, mat_dashboard.service_description,
      mat_dashboard.provider]
    pivots: [mat_dashboard.provider]
    sorts: [mat_dashboard.net_cost desc 2, mat_dashboard.provider]
    limit: 500
    row_total: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axes: [{valueFormat: '[>=1000000]€0,,"M";€0,"K"'}]
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      AWS - mat_dashboard.net_cost: "#F9AB00"
      GCP - mat_dashboard.net_cost: "#34A853"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 18
    col: 0
    width: 12
    height: 6
  - title: Cost Details
    name: Cost Details
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_grid
    fields: [mat_dashboard.provider, mat_dashboard.invoice_month, mat_dashboard.billing_account_id,
      mat_dashboard.project__name,
       mat_dashboard.net_cost_clear]
    sorts: [mat_dashboard.net_cost_clear desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      mat_dashboard.net_cost_clear: Net Cost
    series_cell_visualizations:
      mat_dashboard.net_cost_clear:
        is_active: true
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 33
    col: 0
    width: 24
    height: 7
  - name: changePageButtons
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<p align=\"center\">\n\n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::multicloud_overview\"\
      \ >\nMulticloud Summary\n</a>\n || \n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::gcp_summary?Provider=GCP\"\
      \ >\nGCP Summary\n</a>\n || \n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::aws_summary?Provider=AWS\"\
      \ >\nAWS Summary\n</a>\n || \n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::azure_summary?Provider=AZURE&Invoice+Month+Filter=this+year&Client+Name=&Service+Description=&SKU+Description=\"\
      \ >\nAZURE Summary\n</a>\n ||<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::glossary\"\ > Glossary</a>\n</p>
      "
    row: 0
    col: 12
    width: 12
    height: 2
  - title: Untitled
    name: Untitled
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.net_cost]
    filters:
      mat_dashboard.provider: GCP
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: GCP Net Cost
    value_format: '[>=1000000]€0.00,,"M";€0.00,"K"'
    conditional_formatting: [{type: greater than, value: 0, background_color: "#34A853",
        font_color: "#ffffff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 4
    col: 0
    width: 8
    height: 3


  # - title: Current Month AWS
  #   name: Current Month AWS
  #   model: cost_control_multicloud
  #   explore: mat_dashboard
  #   type: single_value
  #   fields: [mat_dashboard.invoice_month_month, mat_dashboard.net_cost]
  #   filters:
  #     mat_dashboard.net_cost: NOT NULL
  #     mat_dashboard.provider: AWS
  #   sorts: [mat_dashboard.invoice_month_month desc]
  #   limit: 500
  #   dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
  #       value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
  #       _type_hint: number}]
  #   custom_color_enabled: true
  #   show_single_value_title: false
  #   show_comparison: true
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: true
  #   enable_conditional_formatting: false
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   single_value_title: Change of Net Cost
  #   comparison_label: Current vs Previous Month
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: false
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   y_axis_scale_mode: linear
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   plot_size_by_field: false
  #   trellis: ''
  #   stacking: ''
  #   limit_displayed_rows: false
  #   legend_position: center
  #   point_style: none
  #   show_value_labels: false
  #   label_density: 25
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   series_types: {}
  #   hidden_fields: [mat_dashboard.net_cost]
  #   listen:
  #     Billing Account ID: mat_dashboard.billing_account_id
  #     Project Name: mat_dashboard.project_name
  #     Service Description: mat_dashboard.service_description
  #     Client Name: mat_dashboard.client_name
  #   row: 7
  #   col: 8
  #   width: 4
  #   height: 2

  # - title: Current Quarter AWS
  #   name: Current Quarter AWS
  #   model: cost_control_multicloud
  #   explore: mat_dashboard
  #   type: single_value
  #   fields: [mat_dashboard.net_cost, mat_dashboard.invoice_month_quarter]
  #   filters:
  #     mat_dashboard.net_cost: NOT NULL
  #     mat_dashboard.provider: AWS
  #   sorts: [mat_dashboard.invoice_month_quarter desc]
  #   limit: 500
  #   dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
  #       value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
  #       _type_hint: number}]
  #   custom_color_enabled: true
  #   show_single_value_title: false
  #   show_comparison: true
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: true
  #   enable_conditional_formatting: false
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   single_value_title: Change of Net Cost
  #   comparison_label: Current Quarter
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: false
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   y_axis_scale_mode: linear
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   plot_size_by_field: false
  #   trellis: ''
  #   stacking: ''
  #   limit_displayed_rows: false
  #   legend_position: center
  #   point_style: none
  #   show_value_labels: false
  #   label_density: 25
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   series_types: {}
  #   hidden_fields: [mat_dashboard.net_cost]
  #   listen:
  #     Billing Account ID: mat_dashboard.billing_account_id
  #     Project Name: mat_dashboard.project_name
  #     Service Description: mat_dashboard.service_description
  #     Client Name: mat_dashboard.client_name
  #   row: 7
  #   col: 12
  #   width: 4
  #   height: 2


  - title: Top Billed Sku
    name: Top Billed Sku
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.net_cost, mat_dashboard.provider, mat_dashboard.sku_description]
    pivots: [mat_dashboard.provider]
    sorts: [mat_dashboard.net_cost desc 2, mat_dashboard.provider]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    y_axes: [{valueFormat: '[>=1000000]€0,,"M";€0,"K"'}]
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_series: []
    series_types: {}
    series_colors:
      AWS - mat_dashboard.net_cost: "#F9AB00"
      GCP - mat_dashboard.net_cost: "#34A853"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 18
    col: 12
    width: 12
    height: 6
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.net_cost]
    filters:
      mat_dashboard.provider: AWS
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: AWS Net Cost
    value_format: '[>=1000000]€0.00,,"M";€0.00,"K"'
    conditional_formatting: [{type: greater than, value: 0, background_color: "#F9AB00",
        font_color: "#ffffff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 4
    col: 8
    width: 8
    height: 3
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.net_cost]
    filters:
      mat_dashboard.provider: AZURE
    sorts: [mat_dashboard.net_cost desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: AZURE Net Cost
    value_format: '[>=1000000]€0.00,,"M";€0.00,"K"'
    conditional_formatting: [{type: greater than, value: -100, background_color: "#12B5CB",
        font_color: "#ffffff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 4
    col: 16
    width: 8
    height: 3
  - name: " (2)"
    type: text
    title_text: '<b>OVERVIEW</b>'
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2



  # - name: Testo2
  #   type: text
  #   title_text: ''
  #   subtitle_text: ''
  #   body_text: "<b>Current vs Previous Month's Net Cost Change</b>"
  #   row: 7
  #   col: 18
  #   width: 3
  #   height: 2
  - name: Testo2
    model: cost_control_multicloud

    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.current_month_label]
    sorts: [mat_dashboard.current_month_label]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not equal to, value: 0, background_color: "#FFFFFF",
    font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
      palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
    strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    color_application: undefined
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 6
    rows_font_size: 6
    font_size: small
    row: 7
    col: 18
    width: 6
    height: 2

  - title: Current Month GCP2
    name: Current Month GCP2
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.invoice_month_month, mat_dashboard.net_cost]
    filters:
      mat_dashboard.net_cost: NOT NULL
      mat_dashboard.provider: GCP
    sorts: [mat_dashboard.invoice_month_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#34A853"
    single_value_title: GCP
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [mat_dashboard.net_cost]
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 7
    col: 18
    width: 3
    height: 2

  - title: Current Month AWS
    name: Current Month AWS
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.invoice_month_month, mat_dashboard.net_cost]
    filters:
      mat_dashboard.net_cost: NOT NULL
      mat_dashboard.provider: AWS
    sorts: [mat_dashboard.invoice_month_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#F9AB00"
    single_value_title: AWS
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [mat_dashboard.net_cost]
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 9
    col: 18
    width: 3
    height: 2

  - title: Current Month AZURE
    name: Current Month AZURE
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.invoice_month_month, mat_dashboard.net_cost]
    filters:
      mat_dashboard.net_cost: NOT NULL
      mat_dashboard.provider: AZURE
    sorts: [mat_dashboard.invoice_month_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#12B5CB"
    single_value_title: AZURE
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [mat_dashboard.net_cost]
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 11
    col: 18
    width: 3
    height: 2

  # - name: Testo3
  #   type: text
  #   title_text: '<b>Current Quarter</b>'
  #   subtitle_text: ''
  #   body_text: ''
  #   row: 7
  #   col: 21
  #   width: 3
  #   height: 2

  # - name: Testo3
  #   model: cost_control_multicloud

  #   explore: mat_dashboard
  #   type: single_value
  #   fields: [mat_dashboard.current_quarter_label]
  #   sorts: [mat_dashboard.current_quarter_label]
  #   limit: 500
  #   custom_color_enabled: true
  #   show_single_value_title: false
  #   show_comparison: false
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: false
  #   enable_conditional_formatting: false
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: false
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   y_axis_scale_mode: linear
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   plot_size_by_field: false
  #   trellis: ''
  #   stacking: ''
  #   limit_displayed_rows: false
  #   legend_position: center
  #   point_style: none
  #   show_value_labels: false
  #   label_density: 25
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   series_types: {}
  #   color_application: undefined
  #   value_labels: legend
  #   label_type: labPer
  #   show_row_numbers: true
  #   transpose: false
  #   truncate_text: true
  #   hide_totals: false
  #   hide_row_totals: false
  #   size_to_fit: true
  #   table_theme: white
  #   header_text_alignment: left
  #   header_font_size: 6
  #   rows_font_size: 6
  #   font_size: small
  #   row: 7
  #   col: 21
  #   width: 3
  #   height: 2


  - title: Current Quarter GCP2
    name: Current Quarter GCP2
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.invoice_month_quarter, mat_dashboard.net_cost]
    filters:
      mat_dashboard.net_cost: NOT NULL
      mat_dashboard.provider: GCP
    sorts: [mat_dashboard.invoice_month_quarter desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#34A853"
    single_value_title: GCP
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [mat_dashboard.net_cost]
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 7
    col: 21
    width: 3
    height: 2

  - title: Current Quarter AWS
    name: Current Quarter AWS
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.invoice_month_quarter, mat_dashboard.net_cost]
    filters:
      mat_dashboard.net_cost: NOT NULL
      mat_dashboard.provider: AWS
    sorts: [mat_dashboard.invoice_month_quarter desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#F9AB00"
    single_value_title: AWS
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [mat_dashboard.net_cost]
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 9
    col: 21
    width: 3
    height: 2

  - title: Current Quarter AZURE
    name: Current Quarter AZURE
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.invoice_month_quarter, mat_dashboard.net_cost]
    filters:
      mat_dashboard.net_cost: NOT NULL
      mat_dashboard.provider: AZURE
    sorts: [mat_dashboard.invoice_month_quarter desc]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#12B5CB"
    single_value_title: AZURE
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [mat_dashboard.net_cost]
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 11
    col: 21
    width: 3
    height: 2



  # - title: New Tile (Copy)
  #   name: New Tile (Copy)
  #   model: cost_control_multicloud
  #   explore: mat_dashboard
  #   type: single_value
  #   fields: [mat_dashboard.net_cost, mat_dashboard.invoice_month_quarter]
  #   filters:
  #     mat_dashboard.net_cost: NOT NULL
  #   sorts: [mat_dashboard.invoice_month_quarter desc]
  #   limit: 500
  #   dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
  #       value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
  #       _type_hint: number}]
  #   custom_color_enabled: true
  #   show_single_value_title: true
  #   show_comparison: true
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: true
  #   enable_conditional_formatting: false
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   single_value_title: Change of Net Cost
  #   comparison_label: Current vs Previous Quarter
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: false
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   y_axis_scale_mode: linear
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   plot_size_by_field: false
  #   trellis: ''
  #   stacking: ''
  #   limit_displayed_rows: false
  #   legend_position: center
  #   point_style: none
  #   show_value_labels: false
  #   label_density: 25
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   series_types: {}
  #   hidden_fields: [mat_dashboard.net_cost]
  #   listen:
  #     Billing Account ID: mat_dashboard.billing_account_id
  #     Project Name: mat_dashboard.project_name
  #     Provider: mat_dashboard.provider
  #     Service Description: mat_dashboard.service_description
  #     Client Name: mat_dashboard.client_name
  #   row: 11
  #   col: 18
  #   width: 6
  #   height: 4
  - title: Current Month vs Previous Month
    name: Current Month vs Previous Month
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.net_cost, mat_dashboard.service_description,
      mat_dashboard.invoice_month_month]
    pivots: [mat_dashboard.invoice_month_month]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.invoice_month_month: 2 months ago for 2 months
    sorts: [mat_dashboard.net_cost desc 0, mat_dashboard.invoice_month_month
        desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    y_axes: [{valueFormat: '[>=1000000]€0,,"M";€0,"K"'}]
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 24
    col: 0
    width: 12
    height: 6
  - name: " (3)"
    type: text
    title_text: '<b>SERVICE & SKU DESCRIPTION</b>'
    subtitle_text: ''
    body_text: ''
    row: 15
    col: 0
    width: 24
    height: 3
  - title: Current Month vs Previous Month
    name: Current Month vs Previous Month (2)
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.net_cost, mat_dashboard.invoice_month_month,
      mat_dashboard.sku_description]
    pivots: [mat_dashboard.invoice_month_month]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.invoice_month_month: 2 months ago for 2 months
    sorts: [mat_dashboard.net_cost desc 0, mat_dashboard.invoice_month_month
        desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    y_axes: [{valueFormat: '[>=1000000]€0,,"M";€0,"K"'}]
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 24
    col: 12
    width: 12
    height: 6
  - name: " (4)"
    type: text
    title_text: '<b>DETAILS</b>'
    subtitle_text: ''
    body_text: ''
    row: 30
    col: 0
    width: 24
    height: 3
  filters:
  - name: Invoice Month Filter
    title: Invoice Month Filter
    type: field_filter
    default_value: this year
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: []
    field: mat_dashboard.invoice_month_month
  - name: Billing Account ID
    title: Billing Account ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Project Name, Service Description, Provider, SKU Description]
    field: mat_dashboard.billing_account_id
  - name: Provider
    title: Provider
    type: field_filter
    default_value: AWS,GCP,AZURE
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Billing Account ID, Project Name, Service Description, SKU
        Description]
    field: mat_dashboard.provider
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Billing Account ID, Service Description, Provider, SKU Description]
    field: mat_dashboard.project_name
  - name: Service Description
    title: Service Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Billing Account ID, Project Name, Provider, SKU Description]
    field: mat_dashboard.service_description
  - name: SKU Description
    title: SKU Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud

    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_column
    fields: [mat_dashboard.provider, mat_dashboard.net_cost, mat_dashboard.invoice_month]
    pivots: [mat_dashboard.provider]
    filters:
      mat_dashboard.invoice_month: "-NULL"
    sorts: [mat_dashboard.provider, mat_dashboard.invoice_month]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      AWS - mat_dashboard.net_cost: "#F9AB00"
      GCP - mat_dashboard.net_cost: "#34A853"
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 7
    col: 0
    width: 18
    height: 8
  - title: Top Billed Services
    name: Top Billed Services
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.net_cost, mat_dashboard.service_description,
      mat_dashboard.provider]
    pivots: [mat_dashboard.provider]
    sorts: [mat_dashboard.net_cost desc 2, mat_dashboard.provider]
    limit: 500
    row_total: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      AWS - mat_dashboard.net_cost: "#F9AB00"
      GCP - mat_dashboard.net_cost: "#34A853"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 18
    col: 0
    width: 12
    height: 6
  - title: Cost Details
    name: Cost Details
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_grid
    fields: [mat_dashboard.provider, mat_dashboard.invoice_month, mat_dashboard.billing_account_id,
      mat_dashboard.project_name, mat_dashboard.service_description, mat_dashboard.sku_description,
      mat_dashboard.usage_amount, mat_dashboard.net_cost]
    sorts: [mat_dashboard.net_cost desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      mat_dashboard.net_cost:
        is_active: true
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 33
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<p align=\"center\">\n\n<a href=\"https://noovleccmstgstg.cloud.looker.com/dashboards/cost_control_multicloud::multicloud_overview?Invoice+Month+Filter=this+year&Billing+Account+ID=&Provider=AWS%2CGCP%2CAZURE&Project+Name=&Service+Description=&SKU+Description=\"\
      \ >\nMulticloud Summary\n</a>\n || \n<a href=\"https://noovleccmstgstg.cloud.looker.com/dashboards/cost_control_multicloud::gcp_summary?Provider=GCP\"\
      \ >\nGCP Summary\n</a>\n || \n<a href=\"https://noovleccmstgstg.cloud.looker.com/dashboards/cost_control_multicloud::aws_summary?Provider=GCP\"\
      \ >\nAWS Summary\n</a>\n || \n<a href=\"https://noovleccmstgstg.cloud.looker.com/dashboards/cost_control_multicloud::azure_summary?Provider=AZURE&Invoice+Month+Filter=this+year&Client+Name=&Service+Description=&SKU+Description=\"\
      \ >\nAZURE Summary\n</a>\n</p>\n"
    row: 0
    col: 12
    width: 12
    height: 2
  - title: Untitled
    name: Untitled
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.net_cost]
    filters:
      mat_dashboard.provider: GCP
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: GCP Net Cost
    value_format: '[>=1000000]€0.0,,"M";€0.0,"K"'
    conditional_formatting: [{type: greater than, value: 0, background_color: "#34A853",
        font_color: "#ffffff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 4
    col: 0
    width: 8
    height: 3
  - title: Top Billed Sku
    name: Top Billed Sku
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.net_cost, mat_dashboard.provider, mat_dashboard.sku_description]
    pivots: [mat_dashboard.provider]
    sorts: [mat_dashboard.net_cost desc 2, mat_dashboard.provider]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_series: []
    series_types: {}
    series_colors:
      AWS - mat_dashboard.net_cost: "#F9AB00"
      GCP - mat_dashboard.net_cost: "#34A853"
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 18
    col: 12
    width: 12
    height: 6
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.net_cost]
    filters:
      mat_dashboard.provider: AWS
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: AWS Net Cost
    value_format: '[>=1000000]$0.0,,"M";$0.0,"K"'
    conditional_formatting: [{type: greater than, value: 0, background_color: "#F9AB00",
        font_color: "#ffffff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 4
    col: 8
    width: 8
    height: 3
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.net_cost]
    filters:
      mat_dashboard.provider: AZURE
    sorts: [mat_dashboard.net_cost desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: AZURE Net Cost
    value_format: '[>=1000000]€0.0,,"M";€0.0,"K"'
    conditional_formatting: [{type: greater than, value: -100, background_color: "#12B5CB",
        font_color: "#ffffff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 4
    col: 16
    width: 8
    height: 3
  - name: " (2)"
    type: text
    title_text: '<b>OVERVIEW</b>'
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2



  # - title: New Tile
  #   name: New Tile
  #   model: cost_control_multicloud
  #   explore: mat_dashboard
  #   type: single_value
  #   fields: [mat_dashboard.invoice_month_month, mat_dashboard.net_cost]
  #   filters:
  #     mat_dashboard.net_cost: NOT NULL
  #   sorts: [mat_dashboard.invoice_month_month desc]
  #   limit: 500
  #   dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
  #       value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
  #       _type_hint: number}]
  #   custom_color_enabled: true
  #   show_single_value_title: true
  #   show_comparison: true
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: true
  #   enable_conditional_formatting: false
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   single_value_title: Change of Net Cost
  #   comparison_label: Current Month
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: false
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   y_axis_scale_mode: linear
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   plot_size_by_field: false
  #   trellis: ''
  #   stacking: ''
  #   limit_displayed_rows: false
  #   legend_position: center
  #   point_style: none
  #   show_value_labels: false
  #   label_density: 25
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   series_types: {}
  #   hidden_fields: [mat_dashboard.net_cost]
  #   listen:
  #     Billing Account ID: mat_dashboard.billing_account_id
  #     Project Name: mat_dashboard.project_name
  #     Provider: mat_dashboard.provider
  #     Service Description: mat_dashboard.service_description
  #     Client Name: mat_dashboard.client_name
  #   row: 7
  #   col: 18
  #   width: 6
  #   height: 4


  # - title: New Tile (Copy)
  #   name: New Tile (Copy)
  #   model: cost_control_multicloud
  #   explore: mat_dashboard
  #   type: single_value
  #   fields: [mat_dashboard.net_cost, mat_dashboard.invoice_month_quarter]
  #   filters:
  #     mat_dashboard.net_cost: NOT NULL
  #   sorts: [mat_dashboard.invoice_month_quarter desc]
  #   limit: 500
  #   dynamic_fields: [{table_calculation: change, label: Change, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
  #       value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
  #       _type_hint: number}]
  #   custom_color_enabled: true
  #   show_single_value_title: true
  #   show_comparison: true
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: true
  #   enable_conditional_formatting: false
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   single_value_title: Change of Net Cost
  #   comparison_label: Current Quarter
  #   x_axis_gridlines: false
  #   y_axis_gridlines: true
  #   show_view_names: false
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: true
  #   show_x_axis_ticks: true
  #   y_axis_scale_mode: linear
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   plot_size_by_field: false
  #   trellis: ''
  #   stacking: ''
  #   limit_displayed_rows: false
  #   legend_position: center
  #   point_style: none
  #   show_value_labels: false
  #   label_density: 25
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   defaults_version: 1
  #   series_types: {}
  #   hidden_fields: [mat_dashboard.net_cost]
  #   listen:
  #     Billing Account ID: mat_dashboard.billing_account_id
  #     Project Name: mat_dashboard.project_name
  #     Provider: mat_dashboard.provider
  #     Service Description: mat_dashboard.service_description
  #     Client Name: mat_dashboard.client_name
  #   row: 11
  #   col: 18
  #   width: 6
  #   height: 4


  - title: Current Month vs Previous Month
    name: Current Month vs Previous Month
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.net_cost, mat_dashboard.service_description,
      mat_dashboard.invoice_month_month]
    pivots: [mat_dashboard.invoice_month_month]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.invoice_month_month: 2 months ago for 2 months
    sorts: [mat_dashboard.net_cost desc 0, mat_dashboard.invoice_month_month
        desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 24
    col: 0
    width: 12
    height: 6
  - name: " (3)"
    type: text
    title_text: '<b>SERVICE & SKU DESCRIPTION</b>'
    subtitle_text: ''
    body_text: ''
    row: 15
    col: 0
    width: 24
    height: 3
  - title: Current Month vs Previous Month
    name: Current Month vs Previous Month (2)
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.net_cost, mat_dashboard.invoice_month_month,
      mat_dashboard.sku_description]
    pivots: [mat_dashboard.invoice_month_month]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.invoice_month_month: 2 months ago for 2 months
    sorts: [mat_dashboard.net_cost desc 0, mat_dashboard.invoice_month_month
        desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    custom_color: "#079c98"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: false
    down_color: false
    total_color: false
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen:
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Provider: mat_dashboard.provider
      Service Description: mat_dashboard.service_description
      Client Name: mat_dashboard.client_name
      Iva Esclusa: mat_dashboard.iva_esclusa
    row: 24
    col: 12
    width: 12
    height: 6
  - name: " (4)"
    type: text
    title_text: '<b>DETAILS</b>'
    subtitle_text: ''
    body_text: ''
    row: 30
    col: 0
    width: 24
    height: 3
  filters:
  - name: Invoice Month Filter
    title: Invoice Month Filter
    type: field_filter
    default_value: this year
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Provider]
    field: mat_dashboard.invoice_month_month

  - name: Billing Account ID
    title: Billing Account ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Project Name, Service Description, Provider, SKU Description]
    field: mat_dashboard.billing_account_id

  - name: Provider
    title: "Provider"
    type: field_filter
    explore: mat_dashboard
    #field: mat_dashboard.provider
    #default_value: GCP,AWS,AZURE
    allow_multiple_values:  false
    #listens_to_filters: []
    #field: mat_dashboard.provider
    listens_to_filters: [Billing Account ID, Project Name, Service Description, SKU
        Description]
    field: mat_dashboard.provider

  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Billing Account ID, Service Description, Provider, SKU Description]
    field: mat_dashboard.project_name

  - name: Service Description
    title: Service Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Billing Account ID, Project Name, Provider, SKU Description]
    field: mat_dashboard.service_description

  - name: SKU Description
    title: SKU Description
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Billing Account ID, Project Name, Service Description, Provider]
    field: mat_dashboard.sku_description

  - name: Client Name
    title: Client Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: [Billing Account ID, Project Name, Service Description, Provider]
    field: mat_dashboard.client_name

  - name: Iva Esclusa
    title: Iva Esclusa
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
      options:
      - 'Yes'
    model: cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: []
    field: mat_dashboard.iva_esclusa
