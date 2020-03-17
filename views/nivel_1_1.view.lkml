view: nivel_1_1 {
  sql_table_name: pilotovodafone1.Nivel_1_1 ;;

  dimension: clienttype {
    type: number
    sql: ${TABLE}.CLIENTTYPE ;;
  }

  dimension: desc_error {
    type: string
    sql: ${TABLE}.DESC_ERROR ;;
  }

 # dimension: fecha {
#  type: date
#   sql: ${TABLE}.FECHA ;;
# }

  dimension_group: fecha {
  type: time
  #timeframes: [date, week, month, year]
  datatype: yyyymmdd
  sql: ${TABLE}.FECHA;;
  }

  dimension: idoperation {
    type: string
    sql: ${TABLE}.IDOPERATION ;;
    link: {
      url: "https://minsait.eu.looker.com/dashboards/20?Operaci%C3%B3n=I-CONIDSCLIENTEAMD&Intervalo%20fecha=2020%2F02%2F20%20to%202020%2F02%2F21&Tipo%20cliente=&Sistema=&filter_config=%7B%22Operaci%C3%B3n%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22I-CONIDSCLIENTEAMD%22%7D,%7B%7D%5D,%22id%22:8%7D%5D,%22Intervalo%20fecha%22:%5B%7B%22type%22:%22between%22,%22values%22:%5B%7B%22date%22:%222020-02-20T00:00:00.000Z%22,%22tz%22:true%7D,%7B%22date%22:%222020-02-21T00:00:00.000Z%22,%22tz%22:true%7D%5D,%22id%22:9%7D%5D,%22Tipo%20cliente%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:10%7D%5D,%22Sistema%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:11%7D%5D%7D"
      }
  }

  dimension: idsystem {
    type: number
    sql: ${TABLE}.IDSYSTEM ;;
  }

  dimension: tipo_error {
    type: string
    sql: ${TABLE}.TIPO_ERROR ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: ConteoTotal {
    type: sum
    sql: ${TABLE}.Total ;;
    drill_fields: []
  }

  measure: Conteo_OK {
    type: sum
    sql: ${TABLE}.Total ;;
    drill_fields: []
    filters: {
      field:  tipo_error
      value: "OK"
    }
  }

  measure: Conteo_KO_T {
    type: sum
    sql: ${TABLE}.Total ;;
    drill_fields: []
    filters: {
      field:  tipo_error
      value: "KO-T"
    }
  }

  measure: Conteo_KO_F {
    type: sum
    sql: ${TABLE}.Total ;;
    drill_fields: []
    filters: {
      field:  tipo_error
      value: "KO-F"
    }
  }

  measure: NTiposdeSistema {
    type: count_distinct
    sql: ${TABLE}.IDSYSTEM ;;
  }
}
