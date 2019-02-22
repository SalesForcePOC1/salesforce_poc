- dashboard: salesforce_data
  title: Salesforce Data
  layout: newspaper
  elements:
  - title: Gender Split
    name: Gender Split
    model: snowflake_salesforce_hemanth
    explore: lead
    type: looker_pie
    fields:
    - contact.count
    - contact.salutation
    filters:
      contact.salutation: "-Mr,-EMPTY,-Dr."
    sorts:
    - contact.count desc
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    series_colors: {}
    series_labels:
      Mr.: Men
      Ms.: Women
    series_types: {}
    listen: {}
    row: 5
    col: 8
    width: 8
    height: 6
  - title: Estimated Sales
    name: Estimated Sales
    model: snowflake_salesforce_hemanth
    explore: lead
    type: looker_line
    fields:
    - opportunity.fiscal
    - opportunity.sum_expectedrevenue
    filters:
      opportunity.fiscal: "-EMPTY"
    sorts:
    - opportunity.fiscal
    limit: 500
    stacking: ''
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
    series_colors: {}
    series_types:
      opportunity.sum_expectedrevenue: area
    series_point_styles:
      opportunity.sum_expectedrevenue: diamond
    limit_displayed_rows: false
    y_axes:
    - label: Estimated Sale
      orientation: left
      series:
      - id: opportunity.sum_expectedrevenue
        name: Opportunity aNN_rEVENURE
        axisId: opportunity.sum_expectedrevenue
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Fiscal
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 5
    col: 16
    width: 8
    height: 6
  - title: Lead Generation Source
    name: Lead Generation Source
    model: snowflake_salesforce_hemanth
    explore: lead
    type: looker_column
    fields:
    - opportunity.leadsource
    - opportunity.count
    filters:
      opportunity.leadsource: "-EMPTY,---None--"
    sorts:
    - opportunity.count desc
    limit: 500
    stacking: ''
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    show_value_labels: true
    label_density: 25
    label_color:
    - red
    legend_position: center
    hide_legend: false
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
    series_colors:
      opportunity.count: "#72D16D"
    series_types:
      opportunity.count: area
    series_point_styles:
      opportunity.count: diamond
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: opportunity.count
        name: Opportunity Count
        axisId: opportunity.count
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Lead Generation Source
    show_x_axis_ticks: true
    x_axis_datetime_label: ''
    x_axis_scale: auto
    y_axis_scale_mode: linear
    label_value_format: ''
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation:
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 5
  - title: User Distribution
    name: User Distribution
    model: snowflake_salesforce_hemanth
    explore: lead
    type: looker_column
    fields:
    - account.billingcountry
    - account.cou_id
    filters:
      account.billingcountry: "-60602,-EMPTY,-Inida,-INDIA"
    sorts:
    - account.cou_id desc
    limit: 500
    stacking: normal
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    legend_position: center
    hide_legend: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: circle
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: account.cou_id
        name: Account Cou ID
        axisId: account.cou_id
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Country
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 5
    col: 0
    width: 8
    height: 6
  - title: Split of Annual Revenue
    name: Split of Annual Revenue
    model: snowflake_salesforce_hemanth
    explore: lead
    type: Table_Visual
    fields:
    - account.annual_revenue
    - account.industry
    - account.billingcountry
    - account.billingstate
    - account.billingcity
    filters:
      account.annual_revenue: not 0
      account.billingcountry: "-EMPTY"
    sorts:
    - account.annual_revenue desc
    limit: 500
    theme: classic
    show_full_field_name: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 0
    col: 8
    width: 16
    height: 5
  - title: Accounts Initiated per Leads
    name: Accounts Initiated per Leads
    model: snowflake_salesforce_hemanth
    explore: account
    type: looker_pie
    fields:
    - opportunity.leadsource
    - account.count
    filters:
      opportunity.leadsource: "-EMPTY"
    sorts:
    - account.count desc
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    listen: {}
    row: 11
    col: 10
    width: 10
    height: 6
  - title: Accounts Converted per Leads
    name: Accounts Converted per Leads
    model: snowflake_salesforce_hemanth
    explore: account
    type: looker_pie
    fields:
    - account.accountsource
    - opportunity.count
    filters:
      account.accountsource: "-Tools - Rainking,-CRM,-Pardot,-Conference,-AdWords,-Other,-https://www.trianz.com/contact-us,-Events,-EMPTY"
    sorts:
    - opportunity.count desc
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    listen: {}
    row: 11
    col: 0
    width: 10
    height: 6
