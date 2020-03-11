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

  dimension: fecha {
    type: date
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
}
