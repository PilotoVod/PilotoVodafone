view: totaltipocliente {
  sql_table_name: pilotovodafone1.ClientType ;;

  measure: conteo {
    type: count_distinct
    sql:  ${TABLE}.idclienttype ;;
    drill_fields: []
  }
}
