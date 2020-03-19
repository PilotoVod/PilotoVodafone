- dashboard: Excelencia_Operativa_Nivel_2
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
  - name: <b><font color="DimGrey" size="7">Resumen de la operación</font></b>
    type: text
    title_text: <b><font color="DimGrey" size="7">Resumen de la operación</font></b>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 5
    width: 19
    height: 4
  - name: <b><font color="DimGrey">Resumen</font></b>
    type: text
    title_text: <b><font color="DimGrey">Resumen</font></b>
    subtitle_text: ''
    body_text: ''
    row: 6
    col: 0
    width: 24
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
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 23
    col: 0
    width: 24
    height: 7
  - name: Desglose por estado
    title: Desglose por estado
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_pie
    fields: [nivel_1_1.tipo_error, nivel_1_1.ConteoTotal]
    sorts: [nivel_1_1.ConteoTotal desc]
    limit: 500
    column_limit: 50
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
    hidden_fields: []
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 8
    col: 0
    width: 17
    height: 6
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
    limit: 5
    total: true
    dynamic_fields: [{table_calculation: count_otros, label: Count + Otros, expression: "if(\n\
          # For rows other than the last row\n row() != max(row()) \n# Display event\
          \ count\n ,${nivel_1_1.count}\n# For the last row, display total event count\
          \ from all rows above this one\n , ${nivel_1_1.count:total} - sum( if(row()=\
          \ max(row()) , 0 , ${nivel_1_1.count}) )\n)", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: desc_error_otros,
        label: Desc Error + Otros, expression: "if(\n# For rows other than the last\
          \ row\n row() != max(row()) \n# Display event name\n ,${nivel_1_1.desc_error}\n\
          # For the last row, display \"Other\"\n , \"Otros\"\n)", value_format: !!null '',
        value_format_name: !!null '', is_disabled: false, _kind_hint: dimension, _type_hint: string}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Número de errores, orientation: bottom, series: [{axisId: count_otros,
            id: count_otros, name: Count + Otros}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Descripción del error
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      nivel_1_1.count: "#FBB555"
      count_otros: "#FBB555"
    series_labels:
      nivel_1_1.Conteo_KO_F: Números de errores funcionales
      nivel_1_1.count: Número de errores
      count_otros: Otros
    column_group_spacing_ratio: 0.3
    defaults_version: 1
    hidden_fields: [nivel_1_1.desc_error, nivel_1_1.count]
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 14
    col: 0
    width: 12
    height: 7
  - name: Top-5 Errores funcionales
    title: Top-5 Errores funcionales
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_bar
    fields: [nivel_1_1.desc_error, nivel_1_1.count]
    filters:
      nivel_1_1.tipo_error: KO-F
      nivel_1_1.desc_error: "-NULL"
    sorts: [nivel_1_1.count desc]
    limit: 5
    column_limit: 50
    total: true
    dynamic_fields: [{table_calculation: count_otros, label: Count + Otros, expression: "if(\n\
          # For rows other than the last row\n row() != max(row()) \n# Display event\
          \ count\n ,${nivel_1_1.count}\n# For the last row, display total event count\
          \ from all rows above this one\n , ${nivel_1_1.count:total} - sum( if(row()=\
          \ max(row()) , 0 , ${nivel_1_1.count}) )\n)", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: desc_error_otros,
        label: Desc Error + Otros, expression: "if(\n# For rows other than the last\
          \ row\n row() != max(row()) \n# Display event name\n ,${nivel_1_1.desc_error}\n\
          # For the last row, display \"Other\"\n , \"Otros\"\n)", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Número de errores, orientation: bottom, series: [{axisId: count_otros,
            id: count_otros, name: Count + Otros}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Descripción del error
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      nivel_1_1.count: "#FBB555"
      count_otros: "#cf1e0f"
    series_labels:
      nivel_1_1.Conteo_KO_F: Números de errores funcionales
      nivel_1_1.count: Número de errores
      count_otros: Otros
    column_group_spacing_ratio: 0.3
    defaults_version: 1
    hidden_fields: [nivel_1_1.count, nivel_1_1.desc_error]
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 14
    col: 12
    width: 12
    height: 7
  - name: <b><font color="DimGrey">Histórico de ejecuciones</font></b>
    type: text
    title_text: <b><font color="DimGrey">Histórico de ejecuciones</font></b>
    subtitle_text: Muestra los últimos 15 días
    body_text: ''
    row: 21
    col: 0
    width: 24
    height: 2
  - name: Tipos de sistema N2
    title: Tipos de sistema N2
    model: modelo_vodafone
    explore: nivel_1_1
    type: single_value
    fields: [system.nsistemas, totales.NTotalSistema]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: numero_de_sistemas, label: Número de sistemas,
        expression: 'count(count_distinct(${system.namet}))', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number, is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    single_value_title: Tipos de sistema
    comparison_label: tipos totales.
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
    hidden_fields: []
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
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 8
    col: 17
    width: 7
    height: 3
  - name: Tipos de cliente N2
    title: Tipos de cliente N2
    model: modelo_vodafone
    explore: nivel_1_1
    type: single_value
    fields: [client_type.nclientes, totales.NTotalCliente]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: numero_de_clientes, label: Número de clientes,
        expression: 'count(count_distinct(${client_type.namet}))', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number, is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    single_value_title: Tipos de cliente
    comparison_label: tipos totales.
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
    hidden_fields: []
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
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 11
    col: 17
    width: 7
    height: 3
  - name: Operaciones N2
    title: Operaciones N2
    model: modelo_vodafone
    explore: nivel_1_1
    type: looker_grid
    fields: [operation.namet2, nivel_1_1.ConteoTotal]
    pivots: [operation.namet2]
    filters: {}
    sorts: [operation.namet2 desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: operaciones, based_on: operation.namet2, type: list,
        label: Operaciones, expression: !!null '', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: list}]
    show_view_names: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      operation.namet2: Operaciones mostradas
      nivel_1_1.ConteoTotal: Número de ejecuciones
    series_column_widths:
      operation.namet2: 860
    series_cell_visualizations:
      nivel_1_1.ConteoTotal:
        is_active: false
        value_display: false
    series_text_format:
      nivel_1_1.ConteoTotal:
        align: center
    header_background_color: "#ffd2d2"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: []
    title_hidden: true
    listen:
      Operación: operation.namet
      Intervalo fecha: nivel_1_1.fecha_date
      Tipo cliente: client_type.namet
      Sistema: system.namet
    row: 4
    col: 0
    width: 24
    height: 2
  filters:
  - name: Operación
    title: Operación
    type: field_filter
    default_value: I-CONIDSCLIENTEAMD
    allow_multiple_values: true
    required: true
    model: modelo_vodafone
    explore: nivel_1_1
    listens_to_filters: [Intervalo fecha]
    field: operation.namet
  - name: Intervalo fecha
    title: Intervalo fecha
    type: field_filter
    default_value: 2020/02/20 to 2020/02/21
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
    listens_to_filters: [Intervalo fecha, Operación, Tipo cliente]
    field: system.namet
