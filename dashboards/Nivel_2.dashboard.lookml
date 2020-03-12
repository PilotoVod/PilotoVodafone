- dashboard: excelencia_operativa__nivel_2
  title: Excelencia Operativa - Nivel 2
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
  - name: <b><font color="DimGrey">Histórico de ejecuciones</font></b>
    type: text
    title_text: <b><font color="DimGrey">Histórico de ejecuciones</font></b>
    body_text: ''
    row: 12
    col: 0
    width: 11
    height: 2
  - name: <b><font color="DimGrey" size="7">Resumen de la operación</font></b>
    type: text
    title_text: <b><font color="DimGrey" size="7">Resumen de la operación</font></b>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 5
    width: 19
    height: 4
  - title: Desglose por estados
    name: Desglose por estados
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_pie
    fields: [nivel_1_1.fecha_date, nivel_1_1.tipo_error, nivel_1_1.ConteoTotal]
    filters:
      nivel_1_1.fecha_date: '2020-02-20'
    sorts: [nivel_1_1.fecha_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 48
    series_colors:
      OK: "#72D16D"
      KO-F: "#cf1e0f"
      KO-T: "#FBB555"
    series_labels:
      KO-F: KO Funcional
      KO-T: KO Técnico
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
    series_types: {}
    hidden_fields: [nivel_1_1.fecha_date]
    listen:
      Operación: operation.namet
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Número de sistemas
    name: Número de sistemas
    model: modelo_vodafone
    explore: nivel_1_1
    type: single_value
    fields: [nivel_1_1.fecha_date, system.namet]
    filters:
      nivel_1_1.fecha_date: 2020/02/20
    sorts: [nivel_1_1.fecha_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: numero_de_sistemas, label: Número de sistemas,
        expression: 'count(count_distinct(${system.namet}))', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number}]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    single_value_title: Tipos de sistema
    comparison_label: Tipos totales de cliente
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
    hidden_fields: [nivel_1_1.fecha_date, system.namet]
    series_types: {}
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
    listen:
      Operación: operation.namet
      Sistema: system.namet
    row: 6
    col: 8
    width: 3
    height: 3
  - title: Numero de clientes
    name: Numero de clientes
    model: modelo_vodafone
    explore: nivel_1_1
    type: single_value
    fields: [nivel_1_1.fecha_date, client_type.namet]
    filters:
      nivel_1_1.fecha_date: 2020/02/20
    sorts: [nivel_1_1.fecha_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: numero_de_clientes, label: Número de clientes,
        expression: 'count(count_distinct(${client_type.namet}))', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number}]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    single_value_title: Tipos de cliente
    comparison_label: Tipos totales de cliente
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
    hidden_fields: [client_type.namet, nivel_1_1.fecha_date]
    series_types: {}
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
    listen:
      Operación: operation.namet
      Tipo cliente: client_type.namet
    row: 9
    col: 8
    width: 3
    height: 3
  - name: <b><font color="DimGrey">Resumen día actual</font></b>
    type: text
    title_text: <b><font color="DimGrey">Resumen día actual</font></b>
    subtitle_text: No afectado por el filtro de intervalo de fechas
    body_text: ''
    row: 4
    col: 0
    width: 11
    height: 2
  - title: Histórico de ejecuciones
    name: Histórico de ejecuciones
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_column
    fields: [nivel_1_1.Conteo_KO_F, nivel_1_1.Conteo_KO_T, nivel_1_1.Conteo_OK, nivel_1_1.fecha_date]
    fill_fields: [nivel_1_1.fecha_date]
    sorts: [nivel_1_1.fecha_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    y_axes: [{label: Número de operaciones, orientation: left, series: [{axisId: nivel_1_1.Conteo_KO_F,
            id: nivel_1_1.Conteo_KO_F, name: KO Funcional}, {axisId: nivel_1_1.Conteo_KO_T,
            id: nivel_1_1.Conteo_KO_T, name: KO Técnico}, {axisId: nivel_1_1.Conteo_OK,
            id: nivel_1_1.Conteo_OK, name: OK}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      nivel_1_1.Conteo_OK: "#72D16D"
      nivel_1_1.Conteo_KO_T: "#FBB555"
      nivel_1_1.Conteo_KO_F: "#cf1e0f"
    series_labels:
      nivel_1_1.Conteo_KO_F: KO Funcional
      nivel_1_1.Conteo_KO_T: KO Técnico
      nivel_1_1.Conteo_OK: OK
    column_group_spacing_ratio: 0.3
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 14
    col: 0
    width: 11
    height: 7
  - name: Top-5 Errores funcionales
    title: Top-5 Errores funcionales
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_bar
    fields: [nivel_1_1.desc_error, nivel_1_1.count]
    filters:
      nivel_1_1.tipo_error: KO-F
    sorts: [nivel_1_1.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    x_axis_label: Descripción del error
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      nivel_1_1.count: "#cf1e0f"
    series_labels:
      nivel_1_1.Conteo_KO_F: Números de errores funcionales
      nivel_1_1.count: Número de errores
    column_group_spacing_ratio: 0.3
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen: {}
    row: 6
    col: 11
    width: 10
    height: 8
  - name: Top-5 Errores técnicos
    title: Top-5 Errores técnicos
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_bar
    fields: [nivel_1_1.desc_error, nivel_1_1.count]
    filters:
      nivel_1_1.tipo_error: KO-T
      nivel_1_1.desc_error: "-NULL"
    sorts: [nivel_1_1.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    x_axis_label: Descripción del error
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      nivel_1_1.count: "#FBB555"
    series_labels:
      nivel_1_1.Conteo_KO_F: Números de errores funcionales
      nivel_1_1.count: Número de errores
    column_group_spacing_ratio: 0.3
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen: {}
    row: 12
    col: 11
    width: 10
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
  - name: <b><font color="DimGrey">Top-5 de errores funcionales</font></b>
    type: text
    title_text: <b><font color="DimGrey">Top-5 de errores funcionales</font></b>
    body_text: ''
    row: 4
    col: 11
    width: 11
    height: 2
