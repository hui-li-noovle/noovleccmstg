- dashboard: test_forecast
  title: Test Forecast
  layout: newspaper
  preferred_viewer: dashboards-next

  filters:
  - name: provider_filter
    title: "provider"
    type: string_filter
    explore: mat_dashboard
    #field: mat_dashboard.provider
    default_value: "GCP"
    allow_multiple_values:  false

    #listens_to_filters: []
    #field: mat_dashboard.provider

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
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: []
    field: mat_dashboard.invoice_month_month

  elements:
  - name: add_a_unique_name_1652695998
    title: Untitled Visualization
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_column
    fields: [mat_dashboard.total_cost_credits, mat_dashboard.invoice_month_month]
    fill_fields: [mat_dashboard.invoice_month_month]
    sorts: [mat_dashboard.invoice_month_month desc]
    limit: 500
    analysis_config:
      forecasting:
      - field_name: mat_dashboard.total_cost_credits
        forecast_n: 3
        forecast_interval: month
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
      AWS - mat_dashboard.total_cost_credits: "#F9AB00"
      GCP - mat_dashboard.total_cost_credits: "#34A853"
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

  - name: add_a_unique_name_1652703516
    title: Untitled Visualization
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_line
    fields: [mat_dashboard.total_cost_credits, mat_dashboard.invoice_month_month]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.usage_start_year: 3 years ago for 3 years,1 years
      mat_dashboard.total_cost_credits: NOT NULL
      mat_dashboard.provider: GCP
      mat_dashboard.billing_account_id: ''
      mat_dashboard.project_name: ''
    sorts: [mat_dashboard.invoice_month_month desc]
    limit: 500
    column_limit: 50
    analysis_config:
      forecasting:
      - field_name: mat_dashboard.total_cost_credits
        forecast_n: 3
        forecast_interval: month
        __FILE: dev_cost_control_multicloud/dashboards/gcp_summary.dashboard.lookml
        __LINE_NUM: 897
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
        __FILE: dev_cost_control_multicloud/dashboards/gcp_summary.dashboard.lookml
        __LINE_NUM: 931
    y_axes: [{label: '', orientation: left, series: [{axisId: mat_dashboard.total_cost_credits,
            id: 2020 - mat_dashboard.total_cost_credits, name: '2020', __FILE: dev_cost_control_multicloud/dashboards/gcp_summary.dashboard.lookml,
            __LINE_NUM: 932}, {axisId: mat_dashboard.total_cost_credits, id: 2021 -
              mat_dashboard.total_cost_credits, name: '2021', __FILE: dev_cost_control_multicloud/dashboards/gcp_summary.dashboard.lookml,
            __LINE_NUM: 933}], showLabels: true, showValues: true, valueFormat: '[>=1000000]€0.0,,"M";$0,"K"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear,
        __FILE: dev_cost_control_multicloud/dashboards/gcp_summary.dashboard.lookml,
        __LINE_NUM: 932}]
    series_types: {}
    defaults_version: 1
