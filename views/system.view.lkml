view: system {
  sql_table_name: pilotovodafone1.System ;;

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

  dimension: idsystem {
    type: number
    sql: ${TABLE}.IDSYSTEM ;;
    primary_key: yes
  }

  dimension_group: lastupdatedate {
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
    sql: ${TABLE}.LASTUPDATEDATE ;;
  }

  dimension: namet {
    label: "Tipo de sistema"
    type: string
    sql: ${TABLE}.NAMET ;;
  }

  measure: nsistemas {
    type: count
    drill_fields: [namet]
  }
}
