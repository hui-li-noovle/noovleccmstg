- dashboard: aws_summary
  title: AWS Summary
  layout: newspaper
  preferred_viewer: dashboards-next

  #some change for testing webhook

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
    default_value: "AWS"
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


  elements:
  - title: YTD Costs
    name: YTD Costs
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.period_selected, mat_dashboard.total_cost_credits]
    filters:
      mat_dashboard.period: Year
      mat_dashboard.period_selected: "-NULL"
      mat_dashboard.provider: "AWS"
    sorts: [mat_dashboard.period_selected desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${mat_dashboard.total_cost_credits}/offset(${mat_dashboard.total_cost_credits},1)-1",
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
    value_format: '[>=1000000]€0.0,,"M";€0.0,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#b375e6", color_application: {collection_id: google, palette_id: google-diverging-0},
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
      #Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
    row: 2
    col: 0
    width: 4
    height: 4


  - title: QTD Costs
    name: QTD Costs
    model: cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.period_selected, mat_dashboard.total_cost_credits]
    filters:
      mat_dashboard.period: Quarter
      mat_dashboard.period_selected: "-NULL"
      mat_dashboard.provider: "AWS"
    sorts: [mat_dashboard.period_selected desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${mat_dashboard.total_cost_credits}/offset(${mat_dashboard.total_cost_credits},1)-1",
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
    value_format: '[>=1000000]€0.0,,"M";€0.0,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#b375e6", color_application: {collection_id: google, palette_id: google-diverging-0},
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
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
    row: 4
    col: 0
    width: 4
    height: 4
  - name: "<b>SPEND TO DATE</b>"
    type: text
    title_text: "<b>SPEND TO DATE</b>"
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2


  - title: TOP BILLED ACCOUNT ID
    name: TOP BILLED ACCOUNT ID
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_waterfall
    fields: [mat_dashboard.billing_account_id, mat_dashboard.total_cost_credits]
    sorts: [mat_dashboard.total_cost_credits desc]
    filters:
      mat_dashboard.provider: "AWS"
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: total_cost_credits, _type_hint: number,
        category: table_calculation, expression: "${mat_dashboard.total_cost_credits}+0", label: Total
          Cost, value_format: '[>=1000000]€0.0,,"M";€0.0,"K"', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    up_color: "#b375e6"
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
    hidden_fields: [mat_dashboard.total_cost_credits]
    listen:
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
    row: 25
    col: 0
    width: 24
    height: 8

  - name: SERVICE TYPE
    title: SERVICE TYPE
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_pie
    fields: [mat_dashboard.total_cost_credits, mat_dashboard.billing_entity]
    filters:
      mat_dashboard.provider: AWS
    sorts: [mat_dashboard.billing_entity, mat_dashboard.total_cost_credits desc]
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
    series_colors:
      AWS: "#b375e6"
      AWS Marketplace: "#EA4335"
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
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
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
    fields: [mat_dashboard.total_cost_credits, mat_dashboard.billing_entity, mat_dashboard.service_description]
    pivots: [mat_dashboard.billing_entity]
    filters:
      mat_dashboard.provider: AWS
    sorts: [mat_dashboard.billing_entity, mat_dashboard.total_cost_credits desc 2]
    limit: 6
    column_limit: 50
    show_value_labels: false
    font_size: 12
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    series_colors:
      AWS - mat_dashboard.total_cost_credits: "#b375e6"
      AWS Marketplace - mat_dashboard.total_cost_credits: "#EA4335"
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
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
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


  - name: "<b></b>"
    type: text
    title_text: "<b></b>"
    subtitle_text: ''
    body_text: ''
    row: 37
    col: 0
    width: 24
    height: 2


  - name: SERVICE AREA
    title: SERVICE AREA
    merged_queries:
    - model: cost_control_multicloud
      explore: mat_dashboard
      type: looker_grid
      fields: [mat_dashboard.service_description, mat_dashboard.total_cost_credits]
      sorts: [mat_dashboard.total_cost_credits desc]
      filters:
        mat_dashboard.provider: "AWS"
        mat_dashboard.total_cost_credits: "not null"
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true

      listen:
        Invoice Month Filter: mat_dashboard.invoice_month_month
        Billing Account ID: mat_dashboard.billing_account_id
        Project Name: mat_dashboard.project_name
        Service Description: mat_dashboard.service_description
        SKU Description: mat_dashboard.sku_description

      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
    - model: cost_control_multicloud
      explore: mat_dashboard
      type: table
      fields: [mat_dashboard.credits, mat_dashboard.service_description]
      filters:
        mat_dashboard.provider: "AWS"
        mat_dashboard.credits: "not null"
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: mat_dashboard.service_description
        source_field_name: mat_dashboard.service_description

      listen:
        Invoice Month Filter: mat_dashboard.invoice_month_month
        Billing Account ID: mat_dashboard.billing_account_id
        Project Name: mat_dashboard.project_name
        Service Description: mat_dashboard.service_description
        SKU Description: mat_dashboard.sku_description
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      mat_dashboard.total_cost_credits:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
      mat_dashboard.credits:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      mat_dashboard.credits: '[<=1000000]€0.0,"K";€0.0,,"M"'
    type: looker_grid
    series_types: {}
    row: 37
    col: 0
    width: 12
    height: 6


  - name: SKU
    title: SKU
    merged_queries:
    - model: cost_control_multicloud
      explore: mat_dashboard
      type: looker_grid
      fields: [mat_dashboard.total_cost_credits, mat_dashboard.sku_description]
      sorts: [mat_dashboard.total_cost_credits desc]
      filters:
        mat_dashboard.provider: "AWS"
      listen:
        Invoice Month Filter: mat_dashboard.invoice_month_month
        Billing Account ID: mat_dashboard.billing_account_id
        Project Name: mat_dashboard.project_name
        Service Description: mat_dashboard.service_description
        SKU Description: mat_dashboard.sku_description

      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
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
    - model: cost_control_multicloud
      explore: mat_dashboard
      type: table
      fields: [mat_dashboard.credits, mat_dashboard.sku_description]
      sorts: [mat_dashboard.credits desc]
      filters:
        mat_dashboard.provider: "AWS"
      listen:
        Invoice Month Filter: mat_dashboard.invoice_month_month
        Billing Account ID: mat_dashboard.billing_account_id
        Project Name: mat_dashboard.project_name
        Service Description: mat_dashboard.service_description
        SKU Description: mat_dashboard.sku_description
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: mat_dashboard.sku__description
        source_field_name: mat_dashboard.sku__description
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      mat_dashboard.total_cost_credits:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
      mat_dashboard.credits:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      mat_dashboard.credits: '[<=1000000]€0.0,"K";€0.0,,"M"'
    type: looker_grid
    series_types: {}
    row: 37
    col: 12
    width: 12
    height: 6

  - title: YEAR OVER YEAR SPEND
    name: YEAR OVER YEAR SPEND
    model: cost_control_multicloud
    explore: mat_dashboard
    type: looker_line
    fields: [mat_dashboard.total_cost_credits, mat_dashboard.invoice_month_month_name, mat_dashboard.invoice_month_year]
    pivots: [mat_dashboard.invoice_month_year]
    filters:
      mat_dashboard.total_cost_credits: NOT NULL
      mat_dashboard.provider: "AWS"
    sorts: [mat_dashboard.invoice_month_year, mat_dashboard.invoice_month_month_name]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: mat_dashboard.total_cost_credits,
            id: 2020 - mat_dashboard.total_cost_credits, name: '2020'}, {axisId: mat_dashboard.total_cost_credits,
            id: 2021 - mat_dashboard.total_cost_credits, name: '2021'}], showLabels: true, showValues: true,
        valueFormat: '[>=1000000]€0.0,,"M";€0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
      Service Description: mat_dashboard.service_description
      SKU Description: mat_dashboard.sku_description
    row: 2
    col: 4
    width: 20
    height: 8

  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''

    body_text: "<p align=\"center\">\n\n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::multicloud_overview\"\
      \ >\nMulticloud Summary\n</a>\n || \n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::gcp_summary?Provider=GCP\"\
      \ >\nGCP Summary\n</a>\n || \n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::aws_summary?Provider=AWS\"\
      \ >\nAWS Summary\n</a>\n || \n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/cost_control_multicloud::azure_summary?Provider=AZURE&Invoice+Month+Filter=this+year&Client+Name=&Service+Description=&SKU+Description=\"\
    \ >\nAZURE Summary\n</a>\n</p>\n"
    row: -2
    col: 16
    width: 12
    height: 2
