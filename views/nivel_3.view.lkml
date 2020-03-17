view: nivel_3 {
  #sql_table_name: pilotovodafone1.Nivel_3 ;;
derived_table: {
  sql: select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
  from pilotovodafone1.Nivel_3
        UNION ALL
        select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
        from pilotovodafone1.Nivel_3_OK_1
        ;;
}
  dimension: clienttype {
    type: number
    sql: ${TABLE}.CLIENTTYPE ;;
  }

  dimension: desc_error {
    type: string
    sql: ${TABLE}.DESC_ERROR ;;
  }

  dimension: fronterror {
    type: string
    sql: ${TABLE}.FRONTERROR ;;
  }

  dimension: idaction {
    type: string
    sql: ${TABLE}.IDACTION ;;
  }

  dimension: idevent {
    type: string
    sql: ${TABLE}.IDEVENT ;;
  }

  dimension: idexternalsession {
    type: string
    sql: ${TABLE}.IDEXTERNALSESSION ;;
  }

  dimension: idoperation {
    type: number
    sql: ${TABLE}.IDOPERATION ;;
  }

  dimension: idsession {
    type: string
    sql: ${TABLE}.IDSESSION ;;
  }

  dimension: idsystem {
    type: number
    sql: ${TABLE}.IDSYSTEM ;;
  }

  dimension_group: initdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.INITDATE ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.LENGTH ;;
  }

  dimension: objectval {
    type: string
    sql: ${TABLE}.OBJECTVAL ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;

  }

  dimension: tipo_error {
    type: string
    sql: ${TABLE}.TIPO_ERROR ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.USERNAME ;;
  }

  measure: NTotal {
    type: max
    sql: (SELECT COUNT(state) FROM ${TABLE});;

  }

  measure: count {
    type: count
    drill_fields: []

  }

  measure: NTotalError {
    type: count
    drill_fields: []
    filters: {
      field:  tipo_error
      value: "KO-T, KO-F"}

  }




}
