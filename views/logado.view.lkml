view: logado {
  sql_table_name: pilotovodafone1.logado ;;

  dimension: clienttype {
    type: number
    sql: ${TABLE}.CLIENTTYPE ;;
  }

  dimension: cuenta_de_idevent {
    type: number
    value_format_name: id
    sql: ${TABLE}.Cuenta_de_IDEVENT ;;
  }

  dimension: fecha {
    type: number
    sql: ${TABLE}.FECHA ;;
  }

  dimension: idoperation {
    type: number
    sql: ${TABLE}.IDOPERATION ;;
  }

  dimension: idsystem {
    type: number
    sql: ${TABLE}.IDSYSTEM ;;
  }

  dimension: suma_de_length {
    type: number
    sql: ${TABLE}.Suma_de_LENGTH ;;
  }

  dimension: tipo_error {
    type: string
    sql: ${TABLE}.TIPO_ERROR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
