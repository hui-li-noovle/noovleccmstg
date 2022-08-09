- dashboard: azure_summary
  title: AZURE Summary
  layout: newspaper
  preferred_viewer: dashboards-next

  crossfilter_enabled: true
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
    listens_to_filters: [Provider]
    field: mat_dashboard.client_name

  - name: Provider
    title: "Provider"
    type: field_filter
    explore: mat_dashboard
    #field: mat_dashboard.provider
    default_value: "AZURE"
    allow_multiple_values:  false
    #listens_to_filters: []
    #field: mat_dashboard.provider
    listens_to_filters: [Billing Account ID, Project Name, Service Description, SKU
      Description]
    field: mat_dashboard.provider

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

  # - name: Iva Esclusa
  #   title: Iva Esclusa
  #   type: field_filter
  #   default_value: ''
  #   allow_multiple_values: true
  #   required: false
  #   ui_config:
  #     type: checkboxes
  #     display: inline
  #     options:
  #     - 'Yes'
  #   model: cost_control_multicloud
  #   explore: mat_dashboard
  #   listens_to_filters: []
  #   field: mat_dashboard.iva_esclusa

  elements:
  - title: YTD Costs
    name: YTD Costs
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.period_selected, mat_dashboard.net_cost]
    filters:
      mat_dashboard.period: Year
      mat_dashboard.period_selected: "-NULL"
      mat_dashboard.provider: "AZURE"
    sorts: [mat_dashboard.period_selected desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#FFF"
    single_value_title: YTD Costs
    value_format: '[>=1000000]€0.00,,"M";€0.00,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#12B5CB", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    listen:
      #Provider: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description

    row: 2
    col: 0
    width: 5
    height: 4


  - title: QTD Costs
    name: QTD Costs
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.period_selected, mat_dashboard.net_cost]
    filters:
      mat_dashboard.period: Quarter
      mat_dashboard.period_selected: "-NULL"
      mat_dashboard.provider: "AZURE"
    sorts: [mat_dashboard.period_selected desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${mat_dashboard.net_cost}/offset(${mat_dashboard.net_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    query_timezone: user_timezone
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#FFF"
    single_value_title: QTD Costs
    value_format: '[>=1000000]€0.00,,"M";€0.00,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#12B5CB", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    listen:
      #Provider: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name

      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description

    row: 4
    col: 0
    width: 5
    height: 4
  - name: "<b>SPEND TO DATE</b>"
    type: text
    title_text: "<b>NET COST SPEND TO DATE</b>"
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2

  - name: COST VS CREDIT ANALYSIS
    title: COST VS CREDIT ANALYSIS
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_column
    fields: [mat_dashboard.net_cost, mat_dashboard.credits,mat_dashboard.cost_client, mat_dashboard.invoice_month_month]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.provider: AZURE
    listen:
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
      Client Name: mat_dashboard.client_name
    sorts: [mat_dashboard.invoice_month_month asc]
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
    x_axis_label: Invoice Month
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
    y_axes: [{label: '', orientation: left, series: [{axisId: mat_dashboard.net_cost,
    id: mat_dashboard.net_cost, name: Net Cost}, {axisId: mat_dashboard.credits,
    id: mat_dashboard.credits, name: Credits}, {axisId: mat_dashboard.cost_client,
    id: mat_dashboard.cost_client, name: Total Cost}], showLabels: true, showValues: true,
    valueFormat: '[<1000000]€0,"K";€0,,"M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
    type: linear}]
    series_types:
      4_week_average: line
    series_colors:
      mat_dashboard.net_cost: "#F9AB00"
      mat_dashboard.cost_client: "#079c98"
    series_labels:
      mat_dashboard.net_cost: Net Cost
      mat_dashboard.cost_client: Total Cost
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    #hidden_fields: [mat_dashboard.credits]

    row: 12
    col: 7
    width: 17
    height: 6

  - name: "<b>CREDIT ANALYSIS</b>"
    type: text
    title_text: "<b>CREDIT ANALYSIS</b>"
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - name: TOTAL CREDITS
    title: TOTAL CREDITS
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.credits, mat_dashboard.total_cost]
    filters:
      mat_dashboard.provider: AZURE
    limit: 500
    dynamic_fields:
    - table_calculation: percent_of_total_cost
      label: Percent of Total Cost
      expression: "${mat_dashboard.credits}/${mat_dashboard.total_cost}"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5F6368"
    single_value_title: TOTAL CREDITS
    value_format: '[<=1000000]€0.00,"K";€0.00,,"M"'
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
    hidden_fields: [mat_dashboard.total_cost]

    listen:
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
      Client Name: mat_dashboard.client_name


    row: 12
    col: 0
    width: 7
    height: 4


  - name: PERCENT OF CREDITS
    title: PERCENT OF CREDITS
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_column
    fields: [mat_dashboard.invoice_month_month, mat_dashboard.reseller_margin
      ,mat_dashboard.other_credits, mat_dashboard.net_cost]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.provider: AZURE
    listen:
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
      Client Name: mat_dashboard.client_name
    sorts: [mat_dashboard.invoice_month_month]
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
    x_axis_label: Invoice Month
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
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
      mat_dashboard.reseller_margin: "#fad723"
      mat_dashboard.promotion_credits: "#8bb252"
      mat_dashboard.other_credits: "#2c9c5a"
      mat_dashboard.net_cost: "#E8EAED"
    #series_labels:
      #mat_dashboard.other_credits: Other Credits (da definire quali cosa da Microsoft)
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#545454",
        line_value: '0.25'}, {reference_type: line, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#545454", line_value: '0.5'}]
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
    defaults_version: 1
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"

    row: 19
    col: 7
    width: 17
    height: 5

  - title: RESELLER MARGIN BY CLIENT NAME
    name: RESELLER MARGIN BY CLIENT NAME
    model: cost_control_multicloud

    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.client_name, mat_dashboard.reseller_margin]
    filters:
    mat_dashboard.invoice_month_month: 52 weeks
    mat_dashboard.provider: "AZURE"
    sorts: [mat_dashboard.reseller_margin desc]
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: running_total, _type_hint: number,
      category: table_calculation, expression: 'running_total(${mat_dashboard.credits})',
      label: Running Total, value_format: !!null '', value_format_name: eur_0, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: mat_dashboard.credits,
      id: mat_dashboard.credits, name: Total Credit Amount}], showLabels: false,
    showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
    type: linear}]
    label_value_format: '[>=1000000]€0.00,,"M";€0.00,"K"'
    series_types: {}
    series_colors:
      mat_dashboard.promotion_credits: "#8bb252"
    show_null_points: true
    defaults_version: 1
    interpolation: linear
    hidden_fields:

    listen:
      Provider: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
      Client Name: mat_dashboard.client_name
    row: 15
    col: 0
    width: 7
    height: 7

  - title: TOP BILLED CLIENT NAME
    name: TOP BILLED CLIENT NAME
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_waterfall
    fields: [mat_dashboard.client_name, mat_dashboard.net_cost]
    sorts: [mat_dashboard.net_cost desc]
    filters:
      mat_dashboard.provider: "AZURE"
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: net_cost, _type_hint: number,
        category: table_calculation, expression: "${mat_dashboard.net_cost}+0", label: Net
          Cost, value_format: '[>=1000000]€0.00,,"M";€0.00,"K"', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    up_color: "#12B5CB"
    down_color: false
    total_color: "#9AA0A6"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: false
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_gridlines: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    label_color: ["#FFF"]
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
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
      #Provider: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name

      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description

    row: 25
    col: 0
    width: 24
    height: 8

  - name: PERCENT OF MARKETPLACE
    title: PERCENT OF MARKETPLACE
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_pie
    fields: [mat_dashboard.net_cost, mat_dashboard.billing_entity]
    filters:
      mat_dashboard.provider: "AZURE"
    sorts: [mat_dashboard.billing_entity, mat_dashboard.net_cost desc]
    limit: 6
    column_limit: 50
    value_labels: legend
    label_type: labPer
    show_value_labels: false
    font_size: 12
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    #series_colors:
      #AWS: "#12B5CB"
      #AWS Marketplace: "#EA4335"
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    up_color: false
    down_color: false
    total_color: false
    listen:
      #Provider: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name

      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description

    row: 33
    col: 0
    width: 8
    height: 4

  - name: TOP BILLED SERVICES
    title: TOP BILLED SERVICES
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_donut_multiples
    fields: [mat_dashboard.net_cost, mat_dashboard.billing_entity, mat_dashboard.service_description]
    pivots: [mat_dashboard.billing_entity]
    filters:
      mat_dashboard.provider: "AZURE"
    sorts: [mat_dashboard.billing_entity, mat_dashboard.net_cost desc 2]
    limit: 6
    column_limit: 50
    show_value_labels: false
    font_size: 12
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    #series_colors:
      #AWS - mat_dashboard.net_cost: "#12B5CB"
      #AWS Marketplace - mat_dashboard.net_cost: "#EA4335"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    up_color: false
    down_color: false
    total_color: false
    listen:
      #Provider: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Client Name: mat_dashboard.client_name

      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description

    row: 33
    col: 8
    width: 16
    height: 4

  - name: "<b>COST BREAKDOWN DETAILS</b>"
    type: text
    title_text: "<b>COST BREAKDOWN DETAILS</b>"
    subtitle_text: ''
    body_text: ''
    row: 23
    col: 0
    width: 24
    height: 2


  # - name: "<b>ACTIVE COSTS</b>"
  #   type: text
  #   title_text: "<b>ACTIVE COSTS</b>"
  #   subtitle_text: ''
  #   body_text: ''
  #   row: 37
  #   col: 0
  #   width: 24
  #   height: 2

  # - name: TOTAL ACTIVE COSTS
  #   title: TOTAL ACTIVE COSTS
  #   merged_queries:
  #   - model: cost_control_multicloud
  #     explore: mat_dashboard
  #     type: table
  #     fields: [merge, mat_dashboard.net_cost]
  #     filters:
  #       mat_dashboard.provider: AZURE
  #     listen:
  #       Invoice Month Filter: mat_dashboard.invoice_month_month
  #       Client Name: mat_dashboard.client_name

  #       Service Description: mat_dashboard.service_description
  #       SKU Description: mat_dashboard.sku_description
  #     limit: 500
  #     dynamic_fields: [{dimension: merge, _kind_hint: dimension, _type_hint: number,
  #         category: dimension, expression: '1', label: MERGE, value_format: !!null '',
  #         value_format_name: !!null ''}]
  #     join_fields: []
  #   - model: cost_control_multicloud
  #     explore: mat_dashboard
  #     type: table
  #     fields: [merge, mat_dashboard.cost_client]
  #     filters:
  #       mat_dashboard.provider: AZURE
  #     listen:
  #       Invoice Month Filter: mat_dashboard.invoice_month_month
  #       Client Name: mat_dashboard.client_name

  #       Service Description: mat_dashboard.service_description
  #       SKU Description: mat_dashboard.sku_description
  #     limit: 500
  #     dynamic_fields: [{dimension: merge, _kind_hint: dimension, _type_hint: number,
  #         category: dimension, expression: '1', label: MERGE, value_format: !!null '',
  #         value_format_name: !!null ''}]
  #     query_timezone: America/Los_Angeles
  #     join_fields:
  #     - field_name: merge
  #       source_field_name: merge
  #   color_application:
  #     collection_id: google
  #     palette_id: google-categorical-0
  #     options:
  #       steps: 5
  #       reverse: false
  #   custom_color_enabled: true
  #   custom_color: "#5F6368"
  #   show_single_value_title: true
  #   single_value_title: TOTAL ACTIVE COSTS
  #   value_format: '[<=1000000]€0.0,"K";€0.0,,"M"'
  #   show_comparison: true
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: true
  #   enable_conditional_formatting: false
  #   conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
  #       font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
  #       bold: false, italic: false, strikethrough: false, fields: !!null ''}]
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   x_axis_gridlines: false
  #   y_axis_gridlines: false
  #   show_view_names: false
  #   y_axes: [{label: '', orientation: left, series: [{axisId: net_cost, id: net_cost,
  #           name: Net Cost}, {axisId: credits, id: credits, name: Credits}, {axisId: net_cost,
  #           id: net_cost, name: Total Cost}, {axisId: 4_week_average, id: 4_week_average,
  #           name: 4-Week Net Cost Rolling Avg.}], showLabels: true, showValues: true,
  #       valueFormat: '[<=1000000]$0,"K";$0,,"M"', unpinAxis: false, tickDensity: default,
  #       tickDensityCustom: 5, type: linear}]
  #   show_y_axis_labels: true
  #   show_y_axis_ticks: true
  #   y_axis_tick_density: default
  #   y_axis_tick_density_custom: 5
  #   show_x_axis_label: false
  #   show_x_axis_ticks: true
  #   y_axis_scale_mode: linear
  #   x_axis_reversed: false
  #   y_axis_reversed: false
  #   plot_size_by_field: false
  #   trellis: ''
  #   stacking: normal
  #   limit_displayed_rows: true
  #   limit_displayed_rows_values:
  #     show_hide: hide
  #     first_last: last
  #     num_rows: '1'
  #   legend_position: center
  #   series_types: {}
  #   point_style: circle_outline
  #   series_colors:
  #     net_cost: "#4285F4"
  #     credits: "#34A853"
  #     net_cost: "#E8EAED"
  #     4_week_average: "#5F6368"
  #   series_labels:
  #     4_week_average: 4-Week Net Cost Rolling Avg.
  #   show_value_labels: false
  #   label_density: 25
  #   label_color: []
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   reference_lines: []
  #   trend_lines: []
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   type: single_value
  #   hidden_fields: [merge, mat_dashboard.net_cost]
  #   column_limit: 50
  #   dynamic_fields: [{category: table_calculation, expression: "${mat_dashboard.cost_client}/${mat_dashboard.net_cost}",
  #       label: Percent of Passive Costs, value_format: !!null '', value_format_name: percent_0,
  #       _kind_hint: measure, table_calculation: percent_of_passive_costs, _type_hint: number}]

  #   row: 38
  #   col: 0
  #   width: 7
  #   height: 4

  # - name: margin_cost
  #   title: Margin Cost
  #   model: cost_control_multicloud
  #   explore: mat_dashboard
  #   type: single_value
  #   fields: [mat_dashboard.net_cost, mat_dashboard.cost_client]
  #   filters:
  #     mat_dashboard.provider: AZURE
  #   limit: 500
  #   dynamic_fields:
  #   - table_calculation: margin
  #     label: Margin
  #     expression: "${mat_dashboard.cost_client}-${mat_dashboard.net_cost}"
  #     value_format:
  #     value_format_name:
  #     _kind_hint: measure
  #     _type_hint: number
  #   custom_color_enabled: true
  #   show_single_value_title: true
  #   show_comparison: false
  #   comparison_type: value
  #   comparison_reverse_colors: false
  #   show_comparison_label: true
  #   enable_conditional_formatting: true
  #   conditional_formatting_include_totals: false
  #   conditional_formatting_include_nulls: false
  #   single_value_title: Margin Cost
  #   value_format: '[<=1000000]€0,"K";€0,,"M"'
  #   conditional_formatting: [{type: greater than, value: 0, background_color: "#ffffff",
  #       font_color: "#7CB342", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
  #         palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
  #       strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
  #       background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
  #         palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
  #       strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#ffffff",
  #       font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
  #         palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
  #       strikethrough: false, fields: !!null ''}]
  #   hidden_fields: [mat_dashboard.net_cost, mat_dashboard.cost_client]
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
  #   listen:
  #     Invoice Month Filter: mat_dashboard.invoice_month_month
  #     Client Name: mat_dashboard.client_name

  #     Service Description: mat_dashboard.service_description
  #     SKU Description: mat_dashboard.sku_description

  #   row: 42
  #   col: 0
  #   width: 7
  #   height: 3

  # - name: ACTIVE VS PASSIVE ANALYSIS
  #   title: ACTIVE VS PASSIVE ANALYSIS
  #   merged_queries:
  #   - model: cost_control_multicloud
  #     explore: mat_dashboard
  #     type: table
  #     fields: [mat_dashboard.invoice_month_month, mat_dashboard.net_cost]
  #     fill_fields: [mat_dashboard.invoice_month_month]
  #     filters:
  #       mat_dashboard.invoice_month_month: 52 weeks
  #       mat_dashboard.provider: AZURE

  #     sorts: [mat_dashboard.invoice_month_month desc]
  #     limit: 500
  #     query_timezone: America/Los_Angeles
  #     join_fields: []
  #   - model: cost_control_multicloud
  #     explore: mat_dashboard
  #     type: table
  #     fields: [mat_dashboard.invoice_month_month, mat_dashboard.cost_client]
  #     fill_fields: [mat_dashboard.invoice_month_month]
  #     filters:
  #       mat_dashboard.invoice_month_month: 52 weeks
  #       mat_dashboard.provider: AZURE
  #     sorts: [mat_dashboard.invoice_month_month desc]
  #     limit: 500
  #     join_fields:
  #     - field_name: mat_dashboard.invoice_month_month
  #       source_field_name: mat_dashboard.invoice_month_month
  #   color_application:
  #     collection_id: google
  #     palette_id: google-categorical-0
  #     options:
  #       steps: 5
  #       reverse: false
  #   x_axis_gridlines: false
  #   y_axis_gridlines: false
  #   show_view_names: false
  #   y_axes: [{label: '', orientation: left, series: [{axisId: cost_net_to_provider,
  #           id: cost_net_to_provider, name: Cost Net To Provider}, {axisId: cost_client,
  #           id: cost_client, name: Cost Client}, {axisId: margin, id: margin, name: Margin}],
  #       showLabels: true, showValues: true, valueFormat: '[<=1000000]$0,"K";$0,,"M"',
  #       unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
  #   limit_displayed_rows: true
  #   limit_displayed_rows_values:
  #     show_hide: hide
  #     first_last: last
  #     num_rows: '1'
  #   legend_position: center
  #   series_types: {}
  #   point_style: circle_outline
  #   series_colors:
  #     net_cost: "#4285F4"
  #     credits: "#12B5CB"
  #     net_cost: "#E8EAED"
  #     4_week_average: "#5F6368"
  #   series_labels:
  #     4_week_average: 4-Week Net Cost Rolling Avg.
  #   show_value_labels: true
  #   label_density: 25
  #   label_color: []
  #   x_axis_scale: auto
  #   y_axis_combined: true
  #   reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
  #       margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
  #       line_value: '0'}]
  #   trend_lines: []
  #   ordering: none
  #   show_null_labels: false
  #   show_totals_labels: false
  #   show_silhouette: false
  #   totals_color: "#808080"
  #   show_null_points: true
  #   interpolation: linear
  #   type: looker_line
  #   hidden_fields: [mat_dashboard.net_cost, mat_dashboard.cost_client]
  #   sorts: [mat_dashboard.invoice_month_month desc]
  #   column_limit: 50
  #   dynamic_fields: [{category: table_calculation, expression: "${mat_dashboard.net_cost}",
  #       label: Passive Costs, value_format: !!null '', value_format_name: eur_0, _kind_hint: measure,
  #       table_calculation: passive_costs, _type_hint: number}, {category: table_calculation,
  #       expression: "${mat_dashboard.cost_client}", label: Active Costs, value_format: !!null '',
  #       value_format_name: eur_0, _kind_hint: measure, table_calculation: active_costs,
  #       _type_hint: number}, {category: table_calculation, expression: "${mat_dashboard.cost_client}-${mat_dashboard.net_cost}",
  #       label: Margin, value_format: !!null '', value_format_name: eur_0, _kind_hint: measure,
  #       table_calculation: margin, _type_hint: number}]
  #   row: 38
  #   col: 7
  #   width: 17
  #   height: 7



  - title: TOTAL SPEND
    name: TOTAL SPEND
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_line
    fields: [mat_dashboard.net_cost, mat_dashboard.invoice_month_month]
    #pivots: [mat_dashboard.invoice_month_year]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.net_cost: NOT NULL
    sorts: [mat_dashboard.invoice_month_month asc]

    analysis_config:
      forecasting:
      - field_name: mat_dashboard.net_cost
        forecast_n: 3
        forecast_interval: month

    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: mat_dashboard.net_cost,
            id: 2020 - mat_dashboard.net_cost, name: '2020'}, {axisId: mat_dashboard.net_cost,
            id: 2021 - mat_dashboard.net_cost, name: '2021'}], showLabels: true, showValues: true,
        valueFormat: '[>=1000000]€0,,"M";€0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Provider: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
      Client Name: mat_dashboard.client_name
    row: 2
    col: 5
    width: 19
    height: 8

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
    row: -2
    col: 16
    width: 12
    height: 2
