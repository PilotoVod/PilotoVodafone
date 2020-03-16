view: client_type {
  sql_table_name: pilotovodafone1.ClientType ;;

  dimension_group: creationdate {
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
    sql: ${TABLE}.CREATIONDATE ;;
  }

  dimension: deleted {
    type: number
    sql: ${TABLE}.DELETED ;;
  }

  dimension: idclienttype {
    type: number
    sql: ${TABLE}.IDCLIENTTYPE ;;
  }

  dimension: lastupdatedate {
    type: string
    sql: ${TABLE}.LASTUPDATEDATE ;;
  }

  dimension: namet {
    type: string
    sql: ${TABLE}.NAMET ;;
  }

  measure: count {
    type: sum
    drill_fields: []
    sql: (SELECT COUNT(*) FROM pilotovodafone1.ClientType) ;;

  }
}
