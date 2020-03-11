view: leyenda {
  sql_table_name: pilotovodafone1.Leyenda ;;

  dimension: error {
    type: string
    sql: ${TABLE}.Error;;

  }

  dimension: verde {
    type: string
    sql: ${TABLE}.verde
    html: 🟢;;
  }

  dimension: amarillo {
    type: string
    sql: ${TABLE}.amarillo
    html: 🟡;;
  }



  dimension: rojo {
    type: string
    sql: ${TABLE}.rojo
    html: 🔴;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
