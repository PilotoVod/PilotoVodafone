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
      url: "https://minsait.eu.looker.com/dashboards/20?Operación={{ _filters['operation.namet'] | {{ value }} }}"
      icon_url: "https://looker.com/favicon.ico"
    }
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
