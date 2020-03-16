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
    primary_key: yes
  }

  dimension: lastupdatedate {
    type: string
    sql: ${TABLE}.LASTUPDATEDATE ;;
  }

  dimension: namet {
    type: string
    sql: ${TABLE}.NAMET ;;
  }

  measure: TotalTipoCliente {
    type: sum
    hidden: no
    drill_fields: []
    sql: (SELECT COUNT(distinct  ${TABLE}.idclienttype) FROM pilotovodafone1.ClientType) ;;

  }

  measure: conteo {
    type: count_distinct
    drill_fields: []
  }
}
