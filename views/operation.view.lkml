view: operation {
  sql_table_name: pilotovodafone1.Operation ;;

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: idoperation {
    type: number
    sql: ${TABLE}.IDOPERATION ;;
  }

  dimension: namet {
    type: string
    sql: ${TABLE}.NAMET ;;
    link: {
      label: "Ir al Nivel 2 de Excelencia Operativa"
      url: "https://minsait.eu.looker.com/dashboards/20?Operación={{value}}&Date={{_filters['nivel_1_1.fecha date.Date'] | url_encode }}&Tipo%20cliente={{ _filters['client_type.namet'] | url_encode }}&Sistema={{ _filters['system.namet'] | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }
  }

  dimension: namet2 {
    type: string
    sql: ${TABLE}.NAMET ;;
    link: {
      label: "Ir al Nivel 3 de Excelencia Operativa"
      url: "https://minsait.eu.looker.com/dashboards/21?Operación={{value}}"
      icon_url: "https://looker.com/favicon.ico"
    }
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
