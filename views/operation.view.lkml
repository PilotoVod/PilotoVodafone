view: operation {
  sql_table_name: pilotovodafone1.Operation ;;

  dimension: description {
    label: "Descripción de operación"
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: idoperation {
    type: number
    sql: ${TABLE}.IDOPERATION ;;
  }

  dimension: namet {
    label: "Tipo de operación"
    type: string
    sql: ${TABLE}.NAMET ;;
    drill_fields: [description]

    link: {
      label: "Ir al Nivel 2 de Excelencia Operativa"
      url: "https://minsait.eu.looker.com/dashboards/20?Operación={{value}}&Tipo%20cliente={{ _filters['client_type.namet'] | url_encode }}&Sistema={{ _filters['system.namet'] | url_encode }}&Intervalo%20fecha={{ _filters['nivel_1_1.fecha_date'] | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }
  }

  dimension: namet2 {
    label: "Tipo de operación"
    type: string
    sql: ${TABLE}.NAMET ;;
    link: {
      label: "Ir al Nivel 3 de Excelencia Operativa"
      url: "https://minsait.eu.looker.com/dashboards/21?Operación={{value}}&Tipo%20cliente={{ _filters['client_type.namet'] | url_encode }}&Sistema={{ _filters['system.namet'] | url_encode }}&Intervalo%20fecha={{ _filters['nivel_1_1.fecha_date'] | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }
    drill_fields: [description]
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
