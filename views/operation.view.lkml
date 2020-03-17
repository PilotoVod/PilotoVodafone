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
      url: "https://minsait.eu.looker.com/dashboards/20?Operaci%C3%B3n&Intervalo%20fecha=2020%2F02%2F20%20to%202020%2F02%2F21&Tipo%20cliente=&Sistema=&filter_config=%7B%22Operaci%C3%B3n%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:25%7D%5D,%22Intervalo%20fecha%22:%5B%7B%22type%22:%22between%22,%22values%22:%5B%7B%22date%22:%222020-02-20T00:00:00.000Z%22,%22tz%22:true%7D,%7B%22date%22:%222020-02-21T00:00:00.000Z%22,%22tz%22:true%7D%5D,%22id%22:26%7D%5D,%22Tipo%20cliente%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:27%7D%5D,%22Sistema%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:28%7D%5D%7D?State={{ _filters['operation.namet'] | url_encode }}"
      icon_url: "https://looker.com/favicon.ico"
    }
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
