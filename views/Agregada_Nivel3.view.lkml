view: agregada_nivel3 {
    #sql_table_name: pilotovodafone1.Nivel_3 ;;
    derived_table: {
      sql:
      select IDOPERATION, count(*) NTotal from (
      select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
          from pilotovodafone1.Nivel_3
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_1
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_2
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_3
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_4
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_5
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_6
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_7
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_8
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_9
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_10
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_11
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_12
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_13
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_14
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_15
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_16
                UNION ALL
                select IDEVENT, IDSESSION, IDEXTERNALSESSION, IDACTION, CLIENTTYPE, IDOPERATION, OBJECTVAL, USERNAME, STATE, DESC_ERROR, TIPO_ERROR, INITDATE, LENGTH, FRONTERROR, IDSYSTEM
                from pilotovodafone1.Nivel_3_OK_17




                )
                group by IDOPERATION
                ;;
    }

  dimension: idoperation {
    type: number
    sql: ${TABLE}.IDOPERATION ;;
    primary_key: yes
  }


  measure: NTotal {
    type: sum
    drill_fields: []

  }

    }
