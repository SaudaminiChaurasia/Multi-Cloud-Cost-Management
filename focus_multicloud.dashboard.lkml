---
- dashboard: focus_multicloud_summary
  title: FOCUS Multi-cloud Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Jf34IXRq58zsHIpHXoWzBe
  elements:
  - title: Total Billed Cost
    name: Total Billed Cost
    model: focus_multicloud
    explore: focus_union
    type: single_value
    fields: [focus_union.billed_cost, focus_union.total_aws_cost, focus_union.total_azure_cost,
      focus_union.total_gcp_cost]
    sorts: [focus_union.total_gcp_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: 'concat("GCP: ",round(${focus_union.total_gcp_cost}/${focus_union.billed_cost}*100,4),"%
        | AZURE: ",round(${focus_union.total_azure_cost}/${focus_union.billed_cost}*100,4),"%
        | AWS: ",round(${focus_union.total_aws_cost}/${focus_union.billed_cost}*100,4),"%")'
      label: Percentages
      value_format:
      value_format_name: percent_4
      _kind_hint: measure
      table_calculation: percentages
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#9E9E9E",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [focus_union.total_gcp_cost, focus_union.total_azure_cost, focus_union.total_aws_cost]
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Cloud Provider: focus_union.provider_name
      Service Category: focus_service_mapping.service_category
    row: 2
    col: 0
    width: 8
    height: 4
  - title: GCP
    name: GCP
    model: focus_multicloud
    explore: focus_union
    type: single_value
    fields: [focus_union.total_gcp_cost]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#34A853",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 6
    col: 0
    width: 5
    height: 2
  - title: Azure
    name: Azure
    model: focus_multicloud
    explore: focus_union
    type: single_value
    fields: [focus_union.total_azure_cost]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#4285F4",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 8
    col: 0
    width: 5
    height: 2
  - title: AWS
    name: AWS
    model: focus_multicloud
    explore: focus_union
    type: single_value
    fields: [focus_union.total_aws_cost]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: ''
    value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FBBC04",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 10
    col: 0
    width: 5
    height: 2
  - title: GCP Pie Chart
    name: GCP Pie Chart
    model: focus_multicloud
    explore: focus_union
    type: looker_pie
    fields: [focus_union.billed_cost, provider]
    sorts: [focus_union.billed_cost desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Provider
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: provider
      args:
      - focus_union.provider_name
      - - label: GCP
          filter: Google Cloud
      - Other
      _kind_hint: dimension
      _type_hint: string
    value_labels: none
    label_type: labPer
    inner_radius: 55
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors:
      GCP: "#34A853"
      Other: "#f2f2f2"
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    title_hidden: true
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 6
    col: 5
    width: 3
    height: 2
  - title: Azure Pie Chart
    name: Azure Pie Chart
    model: focus_multicloud
    explore: focus_union
    type: looker_pie
    fields: [focus_union.billed_cost, provider]
    sorts: [focus_union.billed_cost desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Provider
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: provider
      args:
      - focus_union.provider_name
      - - label: Azure
          filter: Microsoft
      - Other
      _kind_hint: dimension
      _type_hint: string
    value_labels: none
    label_type: labPer
    inner_radius: 55
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors:
      GCP: "#7CB342"
      Other: "#f2f2f2"
      Azure: "#4285F4"
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    title_hidden: true
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 8
    col: 5
    width: 3
    height: 2
  - title: AWS Pie Chart
    name: AWS Pie Chart
    model: focus_multicloud
    explore: focus_union
    type: looker_pie
    fields: [focus_union.billed_cost, provider]
    sorts: [provider desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Provider
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: provider
      args:
      - focus_union.provider_name
      - - label: AWS
          filter: AWS
      - Other
      _kind_hint: dimension
      _type_hint: string
    value_labels: none
    label_type: labPer
    inner_radius: 55
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors:
      GCP: "#7CB342"
      Other: "#f2f2f2"
      Azure: "#1A73E8"
      AWS: "#FBBC04"
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    title_hidden: true
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 10
    col: 5
    width: 3
    height: 2
  - title: Daily Spend
    name: Daily Spend
    model: focus_multicloud
    explore: focus_union
    type: looker_column
    fields: [focus_union.provider_name, focus_union.billed_cost, focus_union.charge_period_start_date]
    pivots: [focus_union.provider_name]
    fill_fields: [focus_union.charge_period_start_date]
    filters: {}
    sorts: [focus_union.provider_name, focus_union.charge_period_start_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Provider
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: provider
      args:
      - focus_union.provider_name
      - - label: AWS
          filter: AWS
      - Other
      _kind_hint: dimension
      _type_hint: string
    analysis_config:
      forecasting:
      - field_name: focus_union.billed_cost
        forecast_n: 15
        forecast_interval: day
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: AWS - focus_union.billed_cost,
            id: AWS - focus_union.billed_cost, name: AWS}, {axisId: Google Cloud -
              focus_union.billed_cost, id: Google Cloud - focus_union.billed_cost,
            name: GCP}, {axisId: Microsoft - focus_union.billed_cost, id: Microsoft
              - focus_union.billed_cost, name: Azure}], showLabels: true, showValues: true,
        valueFormat: '[>=1000000]$0.00,,"M";$0.0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_colors:
      AWS - focus_union.billed_cost: "#FBBC04"
      Google Cloud - focus_union.billed_cost: "#34A853"
      Microsoft - focus_union.billed_cost: "#4285F4"
    series_labels:
      Google Cloud - focus_union.billed_cost: GCP
      Microsoft - focus_union.billed_cost: Azure
    reference_lines: [{reference_type: range, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#80868B", line_value: '700000',
        range_start: '1450000', range_end: '1500000', label: Over Budget}]
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 2
    col: 8
    width: 16
    height: 10
  - title: Top Service Categories
    name: Top Service Categories
    model: focus_multicloud
    explore: focus_union
    type: looker_bar
    fields: [focus_union.total_gcp_cost, focus_union.total_azure_cost, focus_union.total_aws_cost,
      focus_union.billed_cost, focus_service_mapping.service_category]
    sorts: [focus_union.billed_cost desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Provider
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: provider
      args:
      - focus_union.provider_name
      - - label: AWS
          filter: AWS
      - Other
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: focus_union.total_gcp_cost,
            id: focus_union.total_gcp_cost, name: GCP}, {axisId: focus_union.total_azure_cost,
            id: focus_union.total_azure_cost, name: Azure}, {axisId: focus_union.total_aws_cost,
            id: focus_union.total_aws_cost, name: AWS}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_colors:
      focus_union.total_azure_cost: "#4285F4"
      focus_union.total_gcp_cost: "#34A853"
      focus_union.total_aws_cost: "#FBBC04"
    series_labels:
      focus_union.total_gcp_cost: GCP
      focus_union.total_azure_cost: Azure
      focus_union.total_aws_cost: AWS
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [focus_union.billed_cost]
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 14
    col: 0
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Overview"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"children":[{"text":"Breakdown"}],"type":"h1","align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 12
    col: 0
    width: 24
    height: 2
  - title: Top Services
    name: Top Services
    model: focus_multicloud
    explore: focus_union
    type: looker_bar
    fields: [focus_union.total_gcp_cost, focus_union.total_azure_cost, focus_union.total_aws_cost,
      focus_union.billed_cost, focus_union.service_name]
    filters: {}
    sorts: [focus_union.billed_cost desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Provider
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: provider
      args:
      - focus_union.provider_name
      - - label: AWS
          filter: AWS
      - Other
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: focus_union.total_gcp_cost,
            id: focus_union.total_gcp_cost, name: GCP}, {axisId: focus_union.total_azure_cost,
            id: focus_union.total_azure_cost, name: Azure}, {axisId: focus_union.total_aws_cost,
            id: focus_union.total_aws_cost, name: AWS}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_colors:
      focus_union.total_azure_cost: "#4285F4"
      focus_union.total_gcp_cost: "#34A853"
      focus_union.total_aws_cost: "#FBBC04"
    series_labels:
      focus_union.total_gcp_cost: GCP
      focus_union.total_azure_cost: Azure
      focus_union.total_aws_cost: AWS
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [focus_union.billed_cost]
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 22
    col: 0
    width: 12
    height: 8
  - title: Top Regions
    name: Top Regions
    model: focus_multicloud
    explore: focus_union
    type: looker_bar
    fields: [focus_union.total_gcp_cost, focus_union.total_azure_cost, focus_union.total_aws_cost,
      focus_union.billed_cost, focus_region_mapping.region_unified]
    filters:
      focus_region_mapping.region_unified: "-NULL"
    sorts: [focus_union.billed_cost desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Provider
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: provider
      args:
      - focus_union.provider_name
      - - label: AWS
          filter: AWS
      - Other
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: focus_union.total_gcp_cost,
            id: focus_union.total_gcp_cost, name: GCP}, {axisId: focus_union.total_azure_cost,
            id: focus_union.total_azure_cost, name: Azure}, {axisId: focus_union.total_aws_cost,
            id: focus_union.total_aws_cost, name: AWS}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_colors:
      focus_union.total_azure_cost: "#4285F4"
      focus_union.total_gcp_cost: "#34A853"
      focus_union.total_aws_cost: "#FBBC04"
    series_labels:
      focus_union.total_gcp_cost: GCP
      focus_union.total_azure_cost: Azure
      focus_union.total_aws_cost: AWS
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [focus_union.billed_cost]
    value_labels: legend
    label_type: labPer
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 22
    col: 12
    width: 12
    height: 8
  - title: Daily Spend by Service Categories
    name: Daily Spend by Service Categories
    model: focus_multicloud
    explore: focus_union
    type: looker_column
    fields: [focus_union.charge_period_start_date, focus_union.billed_cost, focus_service_mapping.service_category]
    pivots: [focus_service_mapping.service_category]
    fill_fields: [focus_union.charge_period_start_date]
    filters: {}
    sorts: [focus_service_mapping.service_category, focus_union.charge_period_start_date
        desc]
    limit: 500
    column_limit: 15
    total: true
    dynamic_fields:
    - category: dimension
      description: ''
      label: Provider
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: provider
      args:
      - focus_union.provider_name
      - - label: AWS
          filter: AWS
      - Other
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: focus_union.total_gcp_cost,
            id: focus_union.total_gcp_cost, name: GCP}, {axisId: focus_union.total_azure_cost,
            id: focus_union.total_azure_cost, name: Azure}, {axisId: focus_union.total_aws_cost,
            id: focus_union.total_aws_cost, name: AWS}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    label_value_format: '[>=1000000]$0.00,,"M";$0.0,"K"'
    series_colors:
      focus_union.total_azure_cost: "#4285F4"
      focus_union.total_gcp_cost: "#34A853"
      focus_union.total_aws_cost: "#FBBC04"
    series_labels:
      focus_union.total_gcp_cost: GCP
      focus_union.total_azure_cost: Azure
      focus_union.total_aws_cost: AWS
    advanced_vis_config: "{\n  \"chart\": {\n    \"backgroundColor\": \"rgba(0, 0,\
      \ 0, 0)\",\n    \"inverted\": false,\n    \"style\": {\n      \"fontFamily\"\
      : \"inherit\",\n      \"fontSize\": \"12px\"\n    },\n    \"type\": \"column\"\
      \n  },\n  \"series\": [{\n      \"color\": \"#4285F4\",\n      \"id\": \"AI/ML\
      \ - focus_union.billed_cost\",\n      \"name\": \"AI/ML\",\n      \"type\":\
      \ \"column\",\n      \"visible\": true\n    },\n    {\n      \"color\": \"#34A853\"\
      ,\n      \"id\": \"Analytics - focus_union.billed_cost\",\n      \"name\": \"\
      Analytics\",\n      \"type\": \"column\",\n      \"visible\": true\n    },\n\
      \    {\n      \"color\": \"#FBBC04\",\n      \"id\": \"API Management - focus_union.billed_cost\"\
      ,\n      \"name\": \"API Management\",\n      \"type\": \"column\",\n      \"\
      visible\": true\n    },\n    {\n      \"color\": \"#EA4335\",\n      \"id\"\
      : \"Compute - focus_union.billed_cost\",\n      \"name\": \"Compute\",\n   \
      \   \"type\": \"column\",\n      \"visible\": true\n    },\n    {\n      \"\
      color\": \"#3367D6\",\n      \"id\": \"Database - focus_union.billed_cost\"\
      ,\n      \"name\": \"Database\",\n      \"type\": \"column\",\n      \"visible\"\
      : true\n    },\n    {\n      \"color\": \"#26A69A\",\n      \"id\": \"DevOps\
      \ - focus_union.billed_cost\",\n      \"name\": \"DevOps\",\n      \"type\"\
      : \"column\",\n      \"visible\": true\n    },\n    {\n      \"color\": \"#BDBDBD\"\
      ,\n      \"id\": \"Integration - focus_union.billed_cost\",\n      \"name\"\
      : \"Integration\",\n      \"type\": \"column\",\n      \"visible\": true\n \
      \   },\n    {\n      \"color\": \"#90CAF9\",\n      \"id\": \"Management Tools\
      \ - focus_union.billed_cost\",\n      \"name\": \"Management Tools\",\n    \
      \  \"type\": \"column\",\n      \"visible\": true\n    },\n    {\n      \"color\"\
      : \"#757575\",\n      \"id\": \"Maps - focus_union.billed_cost\",\n      \"\
      name\": \"Maps\",\n      \"type\": \"column\",\n      \"visible\": true\n  \
      \  },\n    {\n      \"color\": \"#9E9E9E\",\n      \"id\": \"Marketplace Services\
      \ - focus_union.billed_cost\",\n      \"name\": \"Marketplace Services\",\n\
      \      \"type\": \"column\",\n      \"visible\": true\n    },\n    {\n     \
      \ \"name\": \"Other\",\n      \"type\": \"column\",\n      \"visible\": true,\n\
      \      \"color\": \"#F4511E\",\n      \"id\": \"Media - focus_union.billed_cost\"\
      \n    },\n    {\n      \"color\": \"#212121\",\n      \"id\": \"Messaging -\
      \ focus_union.billed_cost\",\n      \"name\": \"Messaging\",\n      \"type\"\
      : \"column\",\n      \"visible\": true\n    },\n    {\n      \"color\": \"#8eb6f8\"\
      ,\n      \"id\": \"Migration - focus_union.billed_cost\",\n      \"name\": \"\
      Migration\",\n      \"type\": \"column\",\n      \"visible\": true\n    },\n\
      \    {\n      \"color\": \"#85cb98\",\n      \"id\": \"Networking - focus_union.billed_cost\"\
      ,\n      \"name\": \"Networking\",\n      \"type\": \"column\",\n      \"visible\"\
      : true\n    },\n    {\n      \"color\": \"#fdd768\",\n      \"id\": \"Other\
      \ - focus_union.billed_cost\",\n      \"name\": \"Other\",\n      \"type\":\
      \ \"column\",\n      \"visible\": true\n    }\n  ],\n  \"xAxis\": {\n    \"\
      type\": \"datetime\"\n  },\n  \"yAxis\": [{\n    \"type\": \"linear\"\n  }],\n\
      \  \"plotOptions\": {\n    \"column\": {\n      \"grouping\": false,\n     \
      \ \"pointPadding\": 0.2,\n      \"groupPadding\": 0.2,\n      \"borderWidth\"\
      : 0\n    },\n  \"legend\": {\n      align: 'right',\n      enabled: true,\n\
      \      itemStyle: {\n        color: 'var(--vis-color-text4)',\n        fontWeight:\
      \ 'normal',\n      },\n      itemHoverStyle: {\n        color: 'var(--vis-color-text5)',\n\
      \      },\n      layout: 'vertical',\n      navigation: {\n        activeColor:\
      \ '#666666',\n      },\n      reversed: false,\n      verticalAlign: 'middle',\n\
      \      useHTML: true,\n    }  \n  }\n}"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Charge Period Start Date: focus_union.charge_period_start_date
      Cloud Provider: focus_union.provider_name
      Service Name: focus_union.service_name
      Resource Type: focus_union.resource_type
      Service Category: focus_service_mapping.service_category
    row: 14
    col: 12
    width: 12
    height: 8
  filters:
  - name: Charge Period Start Date
    title: Charge Period Start Date
    type: field_filter
    default_value: last month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: focus_multicloud
    explore: focus_union
    listens_to_filters: []
    field: focus_union.charge_period_start_date
  - name: Cloud Provider
    title: Cloud Provider
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: focus_multicloud
    explore: focus_union
    listens_to_filters: [Resource Type, Service Category, Service Name]
    field: focus_union.provider_name
  - name: Service Category
    title: Service Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: focus_multicloud
    explore: focus_union
    listens_to_filters: [Cloud Provider, Resource Type, Service Name]
    field: focus_service_mapping.service_category
  - name: Service Name
    title: Service Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: focus_multicloud
    explore: focus_union
    listens_to_filters: [Cloud Provider, Resource Type, Service Category]
    field: focus_union.service_name
  - name: Resource Type
    title: Resource Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: focus_multicloud
    explore: focus_union
    listens_to_filters: [Cloud Provider, Service Category, Service Name]
    field: focus_union.resource_type
