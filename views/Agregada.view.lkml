view: agregada {
    sql_table_name: pilotovodafone1.Nivel_1_1 ;;

  dimension_group: fecha {
    type: time
    #timeframes: [date, week, month, year]
    datatype: yyyymmdd
    sql: ${TABLE}.FECHA;;
  }

  dimension: idoperation {
    type: string
    sql: ${TABLE}.IDOPERATION ;;
    primary_key: yes
  }

  measure: NEjecuciones {
    type: sum
    sql: ${TABLE}.Total ;;
    drill_fields: []
  }


  }
