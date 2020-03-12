- dashboard: excelencia_operativa__nivel_3
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
  - name: <b><font color="DimGrey">Histórico de ejecuciones</font></b>
    type: text
    title_text: <b><font color="DimGrey">Histórico de ejecuciones</font></b>
    body_text: ''
    row: 12
    col: 0
    width: 11
    height: 1
  - name: <b><font color="DimGrey" size="7">Resumen de la operación</font></b>
    type: text
    title_text: <b><font color="DimGrey" size="7">Resumen de la operación</font></b>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 5
    width: 19
    height: 4

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
