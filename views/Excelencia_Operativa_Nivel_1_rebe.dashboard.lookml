- dashboard: excelencia_operativa__nivel_1
  title: Excelencia Operativa - Nivel 1
  layout: newspaper
  embed_style:
    background_color: ''
    show_title: true
    title_color: "#000000"
    show_filters_bar: true
    tile_text_color: "#000000"
    text_tile_text_color: ''
  elements:
  - name: Desglose Resultados
    title: Desglose Resultados
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_bar
    fields: [operation.namet, nivel_1_1.ConteoTotal, nivel_1_1.Conteo_OK, nivel_1_1.Conteo_KO_T,
      nivel_1_1.Conteo_KO_F]
    sorts: [nivel_1_1.ConteoTotal desc]
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
    limit_displayed_rows: true
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#000000"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: Número de operaciones, orientation: bottom, series: [{axisId: nivel_1_1.Conteo_OK,
            id: nivel_1_1.Conteo_OK, name: OK}, {axisId: nivel_1_1.Conteo_KO_F, id: nivel_1_1.Conteo_KO_F,
            name: KO Funcional}, {axisId: nivel_1_1.Conteo_KO_T, id: nivel_1_1.Conteo_KO_T,
            name: KO Técnico}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Operación
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    font_size: 16px,
    series_types: {}
    series_colors:
      nivel_1_1.Conteo_OK: "#72D16D"
      nivel_1_1.Conteo_KO_F: "#cf1e0f"
      nivel_1_1.Conteo_KO_T: "#FBB555"
    series_labels:
      nivel_1_1.Conteo_OK: OK
      nivel_1_1.Conteo_KO_F: KO Funcional
      nivel_1_1.Conteo_KO_T: KO Técnico
    trend_lines: []
    column_group_spacing_ratio: 0.4
    defaults_version: 1
    hidden_fields: [nivel_1_1.ConteoTotal]
    listen:
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 4
    col: 10
    width: 14
    height: 6
  - name: Estado de Operaciones
    title: Estado de Operaciones
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_grid
    fields: [operation.namet, nivel_1_1.ConteoTotal, nivel_1_1.Conteo_KO_F, nivel_1_1.Conteo_KO_T]
    filters: {}
    sorts: [nivel_1_1.ConteoTotal desc]
    limit: 500
    dynamic_fields: [{table_calculation: ko_funcional_frente_a_total_de_operaciones,
        label: KO Funcional frente a Total de operaciones, expression: 'if(${nivel_1_1.Conteo_KO_F}/${nivel_1_1.ConteoTotal}>0.20,"🔴",if(${nivel_1_1.Conteo_KO_F}/${nivel_1_1.ConteoTotal}>0.15,"🟡","🟢"))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}, {table_calculation: ko_tecnico_frente_a_total_de_operaciones,
        label: KO Técnico frente a Total de operaciones, expression: 'if(${nivel_1_1.Conteo_KO_T}/${nivel_1_1.ConteoTotal}>0.20,"🔴",if(${nivel_1_1.Conteo_KO_T}/${nivel_1_1.ConteoTotal}>0.15,"🟡","🟢"))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}]
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      operation.namet: OPERACION
      ko_funcional_frente_a_total_de_operaciones: KO Funcional
      ko_tecnico_frente_a_total_de_operaciones: KO Técnico
    series_column_widths: {}
    series_text_format:
      operation.namet:
        fg_color: "#000000"
        align: left
      ko_funcional_frente_a_total_de_operaciones:
        align: center
      ko_tecnico_frente_a_total_de_operaciones:
        align: center
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    header_font_color: "#000000"
    header_background_color: "#ffd2d2"
    conditional_formatting: []
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
    stacking: normal
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    hidden_fields: [nivel_1_1.ConteoTotal, nivel_1_1.Conteo_KO_F, nivel_1_1.Conteo_KO_T]
    listen:
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 4
    col: 0
    width: 10
    height: 6
  - name: ''
    type: text
    body_text: <img src="https://www.4gdekking.nl/wp-content/uploads/2014/10/vodafone_logo-300x120.jpg"
      />
    row: 0
    col: 0
    width: 5
    height: 4
  - name: TOP-10 de Operaciones más ejecutadas
    type: text
    title_text: TOP-10 de Operaciones más ejecutadas
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 5
    width: 19
    height: 4
  filters:
  - name: Intervalo fecha
    title: Intervalo fecha
    type: field_filter
    default_value: 2020/02/13 to 2020/02/21
    allow_multiple_values: true
    required: false
    model: modelo_vodafone
    explore: nivel_1_1
    listens_to_filters: []
    field: nivel_1_1.fecha_date
  - name: Tipo cliente
    title: Tipo cliente
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: modelo_vodafone
    explore: nivel_1_1
    listens_to_filters: [Intervalo fecha]
    field: client_type.namet
  - name: Sistema
    title: Sistema
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: modelo_vodafone
    explore: nivel_1_1
    listens_to_filters: [Intervalo fecha]
    field: system.namet
