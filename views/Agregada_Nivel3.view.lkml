view: agregada_nivel3 {
    #sql_table_name: pilotovodafone1.Nivel_3 ;;
    derived_table: {
      sql:
      select IDOPERATION, count(*) from (
      select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
          from pilotovodafone1.Nivel_3
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_1)
                group by IDOPERATION
                ;;
    }

  dimension: idoperation {
    type: number
    sql: ${TABLE}.IDOPERATION ;;
    primary_key: yes
  }


  measure: NTotal {
    type: max
    drill_fields: []

  }

    }
