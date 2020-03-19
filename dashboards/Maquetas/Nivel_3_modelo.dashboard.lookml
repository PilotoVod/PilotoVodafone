- dashboard: excelencia_operativa__nivel_3_modelo
  title: Excelencia Operativa - Nivel 3
  layout: newspaper
  embed_style:
    background_color: "#fcffff"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: ''
    type: text
    body_text: <img src="https://www.4gdekking.nl/wp-content/uploads/2014/10/vodafone_logo-300x120.jpg"
      />
    row: 0
    col: 0
    width: 5
    height: 4
  - name: <b><font color="DimGrey" size="7">Detalle de operación y errores</font></b>
    type: text
    title_text: <b><font color="DimGrey" size="7">Detalle de operación y errores</font></b>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 5
    width: 19
    height: 2
  - name: Número de sistemas
    title: Número de sistemas
    model: modelo_vodafone
    explore: nivel_3
    type: single_value
    fields: [tipos_de_sistema]
    limit: 500
    dynamic_fields: [{measure: tipos_de_clientes, based_on: nivel_3.clienttype, type: count_distinct,
        label: Tipos de clientes, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        measure: tipos_de_sistema, based_on: nivel_3.idsystem, type: count_distinct,
        label: Tipos de sistema, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Tipos de sistema
    series_types: {}
    defaults_version: 1
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_3.initdate_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
      Tipo de Error: nivel_3.tipo_error
    row: 2
    col: 18
    width: 6
    height: 2
  - name: Número de errores
    title: Número de errores
    model: modelo_vodafone
    explore: nivel_3
    type: single_value
    fields: [nivel_3.count, nivel_3.state]
    sorts: [nivel_3.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Errores
    series_types: {}
    defaults_version: 1
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_3.initdate_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
      Tipo de Error: nivel_3.tipo_error
    row: 2
    col: 5
    width: 7
    height: 2
  - name: Número de tipos de cliente
    title: Número de tipos de cliente
    model: modelo_vodafone
    explore: nivel_3
    type: single_value
    fields: [tipos_de_clientes]
    sorts: [tipos_de_clientes desc]
    limit: 500
    dynamic_fields: [{measure: tipos_de_clientes, based_on: nivel_3.clienttype, type: count_distinct,
        label: Tipos de clientes, expression: !!null '', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Tipos de cliente
    series_types: {}
    defaults_version: 1
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_3.initdate_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
      Tipo de Error: nivel_3.tipo_error
    row: 2
    col: 12
    width: 6
    height: 2
  - name: Detalle de errores tabla
    title: Detalle de errores tabla
    model: modelo_vodafone
    explore: nivel_3
    type: looker_grid
    fields: [nivel_3.idevent, nivel_3.idsession, nivel_3.clienttype, client_type.namet,
      nivel_3.idoperation, operation.namet, nivel_3.username, nivel_3.state, nivel_3.tipo_error,
      nivel_3.initdate_date, nivel_3.idsystem, system.namet]
    filters: {}
    sorts: [nivel_3.initdate_date desc]
    limit: 1500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      nivel_3.idevent: ID Evento
      client_type.namet: Tipo de Cliente
      operation.namet: Tipo de Operación
      nivel_3.username: Nombre de Usuario
      nivel_3.state: Estado
      nivel_3.tipo_error: Tipo de Error
      nivel_3.initdate_date: Fecha
      system.namet: Tipo de Sistema
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [nivel_3.idsession, nivel_3.clienttype, nivel_3.idoperation, nivel_3.idsystem]
    title_hidden: true
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_3.initdate_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
      Tipo de Error: nivel_3.tipo_error
    row: 4
    col: 0
    width: 24
    height: 7
  filters:
  - name: Operación
    title: Operación
    type: field_filter
    default_value: I-CONIDSCLIENTEAMD
    allow_multiple_values: false
    required: true
    model: modelo_vodafone
    explore: nivel_1_1
    listens_to_filters: []
    field: operation.namet
  - name: Intervalo fecha
    title: Intervalo fecha
    type: field_filter
    default_value: 2020/02/13 to 2020/02/21
    allow_multiple_values: true
    required: false
    model: modelo_vodafone
    explore: nivel_1_1
    listens_to_filters: [Operación]
    field: nivel_1_1.fecha_date
  - name: Tipo cliente
    title: Tipo cliente
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: modelo_vodafone
    explore: nivel_1_1
    listens_to_filters: [Intervalo fecha, Operación]
    field: client_type.namet
  - name: Sistema
    title: Sistema
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: modelo_vodafone
    explore: nivel_1_1
    listens_to_filters: [Intervalo fecha, Operación]
    field: system.namet
  - name: Tipo de Error
    title: Tipo de Error
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: modelo_vodafone
    explore: nivel_3
    listens_to_filters: [Operación]
    field: nivel_3.tipo_error
