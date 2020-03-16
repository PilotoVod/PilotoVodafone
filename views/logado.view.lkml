view: logado {
  sql_table_name: pilotovodafone1.logado ;;

  dimension: clienttype {
    type: number
    sql: ${TABLE}.CLIENTTYPE ;;
  }

  measure: cuenta_de_idevent {
    type: sum
    sql: ${TABLE}.Cuenta_de_IDEVENT ;;
    drill_fields: []
  }

  #dimension: fecha {
  #  type: number
  #  sql: ${TABLE}.FECHA ;;
  #}

  dimension_group: fecha {
    type: time
    #timeframes: [date, week, month, year]
    datatype: yyyymmdd
    sql: ${TABLE}.FECHA;;
  }

  dimension: idoperation {
    type: number
    sql: ${TABLE}.IDOPERATION ;;
  }

  dimension: idsystem {
    type: number
    sql: ${TABLE}.IDSYSTEM ;;
  }

  measure: suma_de_length {
    type: sum
    sql: ${TABLE}.Suma_de_LENGTH ;;
    drill_fields: []
  }

  dimension: tipo_error {
    type: string
    sql: ${TABLE}.TIPO_ERROR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: TotalOK {
    type: sum
    sql: ${TABLE}.Cuenta_de_IDEVENT ;;
    drill_fields: []
    filters: {
      field:  tipo_error
      value: "OK"
    }
  }

  measure: TotalKO_T {
    type: sum
    sql: ${TABLE}.Cuenta_de_IDEVENT ;;
    drill_fields: []
    filters: {
      field:  tipo_error
      value: "KO-T"
    }
  }

  measure: DispTec {
    type: number
    sql:  100*${logado.TotalOK}/${logado.cuenta_de_idevent} ;;
  }
}
