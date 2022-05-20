- dashboard: gcp_summary
  title: GCP Summary
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
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: []
    field: mat_dashboard.billing_account_id
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
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    listens_to_filters: []
    field: mat_dashboard.project_name
  elements:
  - title: YTD Costs
    name: YTD Costs
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.period_selected, mat_dashboard.total_cost_credits]
    filters:
      mat_dashboard.period: Year
      mat_dashboard.period_selected: "-NULL"
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
    comparison_reverse_colors: true
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
        font_color: "#34A853", color_application: {collection_id: google, palette_id: google-diverging-0},
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
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 2
    col: 0
    width: 4
    height: 2
  - title: WTD Costs
    name: WTD Costs
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.period_selected, mat_dashboard.total_cost_credits]
    filters:
      mat_dashboard.period: Week
      mat_dashboard.period_selected: "-NULL"
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
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#FFF"
    single_value_title: WTD Costs
    value_format: '[>=1000000]$0,,"M";$0,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#34A853", color_application: {collection_id: google, palette_id: google-diverging-0},
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
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 8
    col: 0
    width: 4
    height: 2
  - title: MTD Costs
    name: MTD Costs
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.period_selected, mat_dashboard.total_cost_credits]
    filters:
      mat_dashboard.period: Month
      mat_dashboard.period_selected: "-NULL"
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
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#FFF"
    single_value_title: MTD Costs
    value_format: '[>=1000000]$0,,"M";€0.0,"K"'
    comparison_label: YTD Costs
    conditional_formatting: [{type: not equal to, value: -999, background_color: '',
        font_color: "#34A853", color_application: {collection_id: google, palette_id: google-diverging-0},
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
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 6
    col: 0
    width: 4
    height: 2
  - title: QTD Costs
    name: QTD Costs
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: single_value
    fields: [mat_dashboard.period_selected, mat_dashboard.total_cost_credits]
    filters:
      mat_dashboard.period: Quarter
      mat_dashboard.period_selected: "-NULL"
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
    comparison_reverse_colors: true
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
        font_color: "#34A853", color_application: {collection_id: google, palette_id: google-diverging-0},
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
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 4
    col: 0
    width: 4
    height: 2
  - name: "<b>SPEND TO DATE</b>"
    type: text
    title_text: "<b>SPEND TO DATE</b>"
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: COST VS CREDIT ANALYSIS
    title: COST VS CREDIT ANALYSIS
    merged_queries:
    - model: dev_cost_control_multicloud
      explore: mat_dashboard
      type: table
      fields: [mat_dashboard.invoice_month_month, mat_dashboard.total_cost_credits]
      fill_fields: [mat_dashboard.invoice_month_month]
      filters:
        mat_dashboard.invoice_month_month: 52 weeks
      sorts: [mat_dashboard.invoice_month_month desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields: []
    - model: dev_cost_control_multicloud
      explore: mat_dashboard
      type: looker_column
      fields: [mat_dashboard.credits, mat_dashboard.invoice_month_month]
      fill_fields: [mat_dashboard.invoice_month_month]
      filters:
        mat_dashboard.invoice_month_month: 52 weeks
      sorts: [mat_dashboard.invoice_month_month desc]
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
      defaults_version: 1
      join_fields:
      - field_name: mat_dashboard.invoice_month_month
        source_field_name: mat_dashboard.invoice_month_month
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: net_cost, id: net_cost,
            name: Net Cost}, {axisId: credits, id: credits, name: Credits}, {axisId: total_cost_credits,
            id: total_cost_credits, name: Total Cost}, {axisId: 4_week_average, id: 4_week_average,
            name: 4-Week Net Cost Rolling Avg.}], showLabels: true, showValues: true,
        valueFormat: '[<=1000000]$0,"K";$0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: normal
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '1'
    legend_position: center
    series_types:
      4_week_average: line
    point_style: circle_outline
    series_colors:
      net_cost: "#4285F4"
      credits: "#34A853"
      total_cost_credits: "#E8EAED"
      4_week_average: "#5F6368"
    series_labels:
      4_week_average: 4-Week Net Cost Rolling Avg.
    show_value_labels: false
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [mat_dashboard.credits, mat_dashboard.total_cost_credits]
    sorts: [mat_dashboard.invoice_month_month desc]
    dynamic_fields: [{_kind_hint: measure, table_calculation: net_cost, _type_hint: number,
        category: table_calculation, expression: 'if(is_null(${credits}),${mat_dashboard.total_cost_credits},${mat_dashboard.total_cost_credits}+${mat_dashboard.credits})',
        label: Net Cost, value_format: !!null '', value_format_name: eur_0}, {_kind_hint: measure,
        table_calculation: credits, _type_hint: number, category: table_calculation,
        expression: "${mat_dashboard.credits}", label: Credits, value_format: !!null '',
        value_format_name: eur_0}, {_kind_hint: measure, table_calculation: total_cost_credits,
        _type_hint: number, category: table_calculation, expression: 'if(is_null(${net_cost}),${mat_dashboard.total_cost_credits},${mat_dashboard.total_cost_credits}-${net_cost})',
        label: Total Cost, value_format: !!null '', value_format_name: eur_0}, {_kind_hint: measure,
        table_calculation: 4_week_average, _type_hint: number, category: table_calculation,
        expression: 'mean(offset_list(${net_cost},0,4))', label: 4-Week Average, value_format: !!null '',
        value_format_name: eur_0}]
    row: 12
    col: 7
    width: 17
    height: 7
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
    merged_queries:
    - model: dev_cost_control_multicloud
      explore: mat_dashboard
      type: table
      fields: [merge, mat_dashboard.credits]
      filters:
        mat_dashboard.invoice_month_month: 52 weeks
      limit: 500
      dynamic_fields: [{dimension: merge, _kind_hint: dimension, _type_hint: number,
          category: dimension, expression: '1', label: MERGE, value_format: !!null '',
          value_format_name: !!null ''}]
      query_timezone: America/Los_Angeles
      join_fields: []
    - model: dev_cost_control_multicloud
      explore: mat_dashboard
      type: table
      fields: [merge, mat_dashboard.total_cost_credits]
      filters:
        mat_dashboard.invoice_month_month: 52 weeks
      limit: 500
      dynamic_fields: [{dimension: merge, _kind_hint: dimension, _type_hint: number,
          category: dimension, expression: '1', label: MERGE, value_format: !!null '',
          value_format_name: !!null ''}]
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: merge
        source_field_name: merge
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    custom_color_enabled: true
    custom_color: "#5F6368"
    show_single_value_title: true
    single_value_title: TOTAL CREDITS
    value_format: '[<=1000000]€0.0,"K";€0.0,,"M"'
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: net_cost, id: net_cost,
            name: Net Cost}, {axisId: credits, id: credits, name: Credits}, {axisId: total_cost_credits,
            id: total_cost_credits, name: Total Cost}, {axisId: 4_week_average, id: 4_week_average,
            name: 4-Week Net Cost Rolling Avg.}], showLabels: true, showValues: true,
        valueFormat: '[<=1000000]$0,"K";$0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    stacking: normal
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '1'
    legend_position: center
    series_types: {}
    point_style: circle_outline
    series_colors:
      net_cost: "#4285F4"
      credits: "#34A853"
      total_cost_credits: "#E8EAED"
      4_week_average: "#5F6368"
    series_labels:
      4_week_average: 4-Week Net Cost Rolling Avg.
    show_value_labels: false
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: single_value
    hidden_fields: [credits, net_cost, total_cost_credits, 4_week_average, merge, mat_dashboard.total_cost_credits]
    dynamic_fields: [{_kind_hint: measure, table_calculation: net_cost, _type_hint: number,
        category: table_calculation, expression: 'if(is_null(${credits}),${mat_dashboard.total_cost_credits},${mat_dashboard.total_cost_credits}+${mat_dashboard.credits})',
        label: Net Cost, value_format: !!null '', value_format_name: eur_0}, {_kind_hint: measure,
        table_calculation: credits, _type_hint: number, category: table_calculation,
        expression: "${mat_dashboard.credits}", label: Credits, value_format: !!null '',
        value_format_name: eur_0}, {_kind_hint: measure, table_calculation: total_cost_credits,
        _type_hint: number, category: table_calculation, expression: 'if(is_null(${net_cost}),${mat_dashboard.total_cost_credits},${mat_dashboard.total_cost_credits}-${net_cost})',
        label: Total Cost, value_format: !!null '', value_format_name: eur_0}, {_kind_hint: measure,
        table_calculation: 4_week_average, _type_hint: number, category: table_calculation,
        expression: 'mean(offset_list(${net_cost},0,4))', label: 4-Week Average, value_format: !!null '',
        value_format_name: eur_0}, {_kind_hint: measure, table_calculation: percent_of_total_cost_credits,
        _type_hint: number, category: table_calculation, expression: "${mat_dashboard.credits}/${mat_dashboard.total_cost_credits}",
        label: Percent of Total Cost Credits, value_format: !!null '', value_format_name: percent_0}]
    row: 12
    col: 0
    width: 7
    height: 4
  - name: PERCENT OF SPEND
    title: PERCENT OF SPEND
    merged_queries:
    - model: dev_cost_control_multicloud
      explore: mat_dashboard
      type: table
      fields: [mat_dashboard.invoice_month_month, mat_dashboard.total_cost_credits]
      fill_fields: [mat_dashboard.invoice_month_month]
      filters:
        mat_dashboard.invoice_month_month: 52 weeks
        mat_dashboard.provider: "GCP"
      listen:
        provider_filter: mat_dashboard.provider
        Invoice Month Filter: mat_dashboard.invoice_month_month
        Billing Account ID: mat_dashboard.billing_account_id
        Project Name: mat_dashboard.project_name
      sorts: [mat_dashboard.invoice_month_month desc]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields: []
    - model: dev_cost_control_multicloud
      explore: mat_dashboard
      type: looker_line
      fields: [mat_dashboard.invoice_month_month, mat_dashboard.reseller_credits, mat_dashboard.promotion_credits,
        mat_dashboard.other_credits, mat_dashboard.credits]
      fill_fields: [mat_dashboard.invoice_month_month]
      filters:
        mat_dashboard.invoice_month_month: 52 weeks
        mat_dashboard.provider: "GCP"

      listen:
        provider_filter: mat_dashboard.provider
        Invoice Month Filter: mat_dashboard.invoice_month_month
        Billing Account ID: mat_dashboard.billing_account_id
        Project Name: mat_dashboard.project_name

      sorts: [mat_dashboard.invoice_month_month desc]
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
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      join_fields:
      - field_name: mat_dashboard.invoice_month_month
        source_field_name: mat_dashboard.invoice_month_month
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: mat_dashboard.credits,
      id: mat_dashboard.credits, name: Total Credit Amount}, {axisId: net_cost,
      id: net_cost, name: Net Cost}], showLabels: true, showValues: true, valueFormat: '',
    unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    stacking: percent
    limit_displayed_rows: true
    limit_displayed_rows_values:
    show_hide: hide
    first_last: last
    num_rows: '1'
    legend_position: center
    font_size: '8'
    series_types:
    4_week_average: line
    point_style: circle_outline
    series_colors:
      net_cost: "#E8EAED"
      credits: "#34A853"
      total_cost_credits: "#E8EAED"
      4_week_average: "#5F6368"
      mat_dashboard.credits: "#34A853"
      mat_dashboard.reseller_credits: "#fad723"
      mat_dashboard.promotion_credits: "#8bb252"
      mat_dashboard.other_credits: "#2c9c5a"
    series_labels:
      4_week_average: 4-Week Net Cost Rolling Avg.
      mat_dashboard.reseller_credits: Reseller Margin%
      mat_dashboard.promotion_credits: Promotions%
      mat_dashboard.other_credits: Other Credits%
      net_cost: Net Cost%
    show_value_labels: false
    label_density: 25
    label_color: [transparent, black]
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
      margin_value: mean, margin_bottom: deviation, label_position: right, color: "#545454",
      line_value: ".25"}, {reference_type: line, range_start: max, range_end: min,
      margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
      color: "#545454", line_value: ".5"}]
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [mat_dashboard.total_cost_credits, credits, total_cost_credits,
      4_week_average, mat_dashboard.credits]
    sorts: [mat_dashboard.invoice_month_month desc]
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: net_cost, _type_hint: number,
      category: table_calculation, expression: 'if(is_null(${credits}),${mat_dashboard.total_cost_credits},${mat_dashboard.total_cost_credits}+${mat_dashboard.credits})',
      label: Net Cost, value_format: !!null '', value_format_name: eur_0}, {_kind_hint: measure,
      table_calculation: credits, _type_hint: number, category: table_calculation,
      expression: "${mat_dashboard.credits}", label: Credits, value_format: !!null '',
      value_format_name: eur_0}, {_kind_hint: measure, table_calculation: total_cost_credits,
      _type_hint: number, category: table_calculation, expression: 'if(is_null(${net_cost}),${mat_dashboard.total_cost_credits},${mat_dashboard.total_cost_credits}-${net_cost})',
      label: Total Cost, value_format: !!null '', value_format_name: eur_0}, {_kind_hint: measure,
      table_calculation: 4_week_average, _type_hint: number, category: table_calculation,
      expression: 'mean(offset_list(${net_cost},0,4))', label: 4-Week Average, value_format: !!null '',
      value_format_name: eur_0}]

    row: 19
    col: 7
    width: 17
    height: 4
  - title: PROMOTION BY PROJECT
    name: PROMOTION BY PROJECT
    model: dev_cost_control_multicloud

    explore: mat_dashboard
    type: looker_bar
    fields: [mat_dashboard.project_name, mat_dashboard.promotion_credits]
    filters:
    mat_dashboard.invoice_month_month: 52 weeks
    mat_dashboard.provider: "GCP"
    sorts: [mat_dashboard.promotion_credits]
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
    y_axis_reversed: true
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
    label_value_format: '[<=1000000]-€0.0,"K";-€0.0,,"M"'
    series_types: {}
    series_colors:
      mat_dashboard.promotion_credits: "#8bb252"
    show_null_points: true
    defaults_version: 1
    interpolation: linear
    hidden_fields:

    listen:
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 15
    col: 0
    width: 7
    height: 7

  - title: TOP BILLED PROJECTS
    name: TOP BILLED PROJECTS
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_waterfall
    fields: [mat_dashboard.project_name, mat_dashboard.total_cost_credits]
    sorts: [mat_dashboard.total_cost_credits desc]
    filters:
      mat_dashboard.provider: "GCP"
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: total_cost_credits, _type_hint: number,
        category: table_calculation, expression: "${mat_dashboard.total_cost_credits}+0", label: Total
          Cost, value_format: '[>=1000000]$0.0,,"M";$0.0,"K"', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    up_color: "#34A853"
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
      #provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 25
    col: 0
    width: 24
    height: 8

  - name: "<b>COST BREAKDOWN DETAILS</b>"
    type: text
    title_text: "<b>COST BREAKDOWN DETAILS</b>"
    subtitle_text: ''
    body_text: ''
    row: 23
    col: 0
    width: 24
    height: 2


  - title: TOTAL SPEND
    name: TOTAL SPEND
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_line
    fields: [mat_dashboard.total_cost_credits, mat_dashboard.invoice_month_month]
    #pivots: [mat_dashboard.usage_start_year]
    fill_fields: [mat_dashboard.invoice_month_month]
    filters:
      mat_dashboard.usage_start_year: 3 years ago for 3 years,1 years
      mat_dashboard.total_cost_credits: NOT NULL
    sorts: [mat_dashboard.invoice_month_month asc]

    analysis_config:
      forecasting:
      - field_name: mat_dashboard.total_cost_credits
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
    y_axes: [{label: '', orientation: left, series: [{axisId: mat_dashboard.total_cost_credits,
            id: 2020 - mat_dashboard.total_cost_credits, name: '2020'}, {axisId: mat_dashboard.total_cost_credits,
            id: 2021 - mat_dashboard.total_cost_credits, name: '2021'}], showLabels: true, showValues: true,
        valueFormat: '[>=1000000]€0.0,,"M";$0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 2
    col: 4
    width: 20
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<p align=\"center\">\n\n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/2?Provider=AWS%2CGCP&Invoice+Month=202201%2C202202%2C202203%2C202204&Usage+Start+Date=this+year+to+second&Usage+End+Date=this+year+to+second\"\
      \ >\nMulticloud Summary\n</a>\n || \n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/dev_cost_control_multicloud::gcp_summary?provider_filter=GCP\"\
      \ >\nGCP Summary\n</a>\n || \n<a href=\"https://noovleccmstg.cloud.looker.com/dashboards/dev_cost_control_multicloud::aws_summary?provider_filter=GCP\"\
      \ >\nAWS Summary\n</a>\n\n</p>\n"
    row: -2
    col: 16
    width: 8
    height: 2

  - name: "<b>BIGQUERY COST INSIGHTS</b>"
    type: text
    title_text: "<b>BIGQUERY COST INSIGHTS</b>"
    subtitle_text: ''
    body_text: ''
    row: 33
    col: 0
    width: 24
    height: 2

  - title: Service Type Percentage
    name: BQ Service Type Percentage
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_pie
    fields: [mat_dashboard.billing_entity, mat_dashboard.total_cost_credits]
    sorts: [mat_dashboard.total_cost_credits desc]

    value_labels: legend
    label_type: labPer
    defaults_version: 1
    limit: 5
    #fill_fields: [mat_dashboard.usage_start_month]
    filters:
      mat_dashboard.service_description: BigQuery%


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
    defaults_version: 1
    title_hidden: true
    listen:
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 34
    col: 0
    width: 12
    height: 6

  - title: Total Cost per Sku
    name: BQ Total Cost per Sku
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_column
    fields: [mat_dashboard.usage_start_month, mat_dashboard.sku_description, mat_dashboard.total_cost_credits]
    pivots: [mat_dashboard.sku_description]
    fill_fields: [mat_dashboard.usage_start_month]
    filters:
      mat_dashboard.service_description: BigQuery%
    sorts: [mat_dashboard.usage_start_month desc, mat_dashboard.sku_description]
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
    stacking: normal
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
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    title_hidden: true
    listen:
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 34
    col: 12
    width: 12
    height: 6

  - name: "<b>CLOUD STORAGE COST INSIGHTS</b>"
    type: text
    title_text: "<b>CLOUD STORAGE COST INSIGHTS</b>"
    subtitle_text: ''
    body_text: ''
    row: 35
    col: 0
    width: 24
    height: 2

  - title: Service Type Percentage
    name: CS ervice Type Percentage
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_pie
    fields: [mat_dashboard.billing_entity, mat_dashboard.total_cost_credits]
    sorts: [mat_dashboard.total_cost_credits desc]

    value_labels: legend
    label_type: labPer
    defaults_version: 1
    limit: 5

    #fill_fields: [mat_dashboard.usage_start_month]
    filters:
      mat_dashboard.service_description: Cloud Storage%
    sorts: [mat_dashboard.usage_start_month desc, mat_dashboard.sku_description]

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
    defaults_version: 1
    title_hidden: true
    listen:
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 36
    col: 0
    width: 12
    height: 6

  - title: Total Cost per Sku
    name: CS Total Cost per Sku
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_column
    fields: [mat_dashboard.usage_start_month, mat_dashboard.sku_description, mat_dashboard.total_cost_credits]
    pivots: [mat_dashboard.sku_description]
    fill_fields: [mat_dashboard.usage_start_month]
    filters:
      mat_dashboard.service_description: Cloud Storage%
    sorts: [mat_dashboard.usage_start_month desc, mat_dashboard.sku_description]
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
    stacking: normal
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
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    title_hidden: true
    listen:
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 36
    col: 12
    width: 12
    height: 6

  - name: "<b>COMPUTE ENGINE COST INSIGHTS</b>"
    type: text
    title_text: "<b>COMPUTE ENGINE COST INSIGHTS</b>"
    subtitle_text: ''
    body_text: ''
    row: 37
    col: 0
    width: 24
    height: 2

  - title: Service Type Percentage
    name: CE Service Type Percentage
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_pie
    fields: [mat_dashboard.billing_entity, mat_dashboard.total_cost_credits]
    sorts: [mat_dashboard.total_cost_credits desc]

    value_labels: legend
    label_type: labPer
    defaults_version: 1
    limit: 5
    #fill_fields: [mat_dashboard.usage_start_month]
    filters:
      mat_dashboard.service_description: Compute Engine%
    sorts: [mat_dashboard.usage_start_month desc, mat_dashboard.sku_description]

    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    defaults_version: 1
    title_hidden: true
    listen:
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 38
    col: 0
    width: 12
    height: 6

  - title: Total Cost per Sku
    name: CE Total Cost per Sku
    model: dev_cost_control_multicloud
    explore: mat_dashboard
    type: looker_column
    fields: [mat_dashboard.usage_start_month, mat_dashboard.sku_description, mat_dashboard.total_cost_credits]
    pivots: [mat_dashboard.sku_description]
    fill_fields: [mat_dashboard.usage_start_month]
    filters:
      mat_dashboard.service_description: Compute Engine%
    sorts: [mat_dashboard.usage_start_month desc, mat_dashboard.sku_description]
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
    stacking: normal
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
    show_null_points: false
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    title_hidden: true
    listen:
      provider_filter: mat_dashboard.provider
      Invoice Month Filter: mat_dashboard.invoice_month_month
      Billing Account ID: mat_dashboard.billing_account_id
      Project Name: mat_dashboard.project_name
    row: 38
    col: 12
    width: 12
    height: 6