- dashboard: logado
  title: Logado
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
  - name: <b><font color="DimGrey" size="7">Logado</font></b>
    type: text
    title_text: <b><font color="DimGrey" size="7">Logado</font></b>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 5
    width: 19
    height: 4
  - name: Tiempo medio (segundos)
    title: Tiempo medio (segundos)
    model: modelo_vodafone
    explore: logado
    type: Burbuja
    fields: [logado.fecha_date, logado.cuenta_de_idevent, logado.suma_de_length]
    fill_fields: [logado.fecha_date]
    sorts: [logado.fecha_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: tiempo_medio, label: Tiempo medio, expression: "(sum(${logado.suma_de_length})/sum(${logado.cuenta_de_idevent}))/1000 ",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    hidden_fields: [logado.fecha_date, logado.cuenta_de_idevent, logado.suma_de_length]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    showComparison: false
    minValue: 0
    maxValue: 10
    circleThickness: 0.05
    circleFillGap: 0.05
    circleColor: "#000000"
    waveHeight: 0.15
    waveCount: 10
    waveRiseTime: 2700
    waveAnimateTime: 5000
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#c90d0d"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#FFFFFF"
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 0
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: Este gráfico muestra un máximo de 10 segundos. A partir de ese valor,
      se envía una alerta por e-mail.
    listen:
      Intervalo fecha: logado.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 4
    col: 0
    width: 14
    height: 9
  - name: Disponibilidad técnica
    title: Disponibilidad técnica
    model: modelo_vodafone
    explore: logado
    type: single_value
    fields: [logado.TotalOK, logado.cuenta_de_idevent]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: disponibilidad_tecnica, label: Disponibilidad
          técnica, expression: "${logado.TotalOK}/${logado.cuenta_de_idevent}", value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
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
    hidden_fields: [logado.TotalOK, logado.cuenta_de_idevent]
    listen:
      Intervalo fecha: logado.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 4
    col: 14
    width: 10
    height: 4
  - name: Errores técnicos frente a total
    title: Errores técnicos frente a total
    model: modelo_vodafone
    explore: logado
    type: looker_bar
    fields: [logado.TotalKO_T, logado.cuenta_de_idevent]
    limit: 500
    dynamic_fields: [{table_calculation: resto_cuenta_de_idevent_total_ko_t, label: Resto
          (Cuenta de Idevent - Total KO-T), expression: "${logado.cuenta_de_idevent}-${logado.TotalKO_T}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#000000"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: logado.TotalKO_T,
            id: logado.TotalKO_T, name: Totalko T}, {axisId: resto_cuenta_de_idevent_total_ko_t,
            id: resto_cuenta_de_idevent_total_ko_t, name: Resto (Cuenta de Idevent
              - Total KO-T)}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    font_size: ''
    series_types: {}
    series_colors:
      logado.TotalKO_T: "#FBB555"
      resto_cuenta_de_idevent_total_ko_t: "#b0b8d1"
    label_color: [white, "#b0b8d1"]
    column_group_spacing_ratio: 0.7
    totals_rotation: 0
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [logado.cuenta_de_idevent]
    listen:
      Intervalo fecha: logado.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 8
    col: 14
    width: 10
    height: 5
  filters:
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
