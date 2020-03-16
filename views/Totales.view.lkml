view: totales {
  sql_table_name: pilotovodafone1.ClientType ;;

  measure: NTotalCliente {
    type: count_distinct
    sql:  ${TABLE}.idclienttype ;;
    #sql: (SELECT COUNT(distinct  idclienttype) FROM pilotovodafone1.ClientType) ;;
    drill_fields: []
  }

  measure: NTotalSistema {
    type: sum
    sql: (SELECT COUNT(distinct  idsystem) FROM pilotovodafone1.System) ;;
    drill_fields: []
  }
}
