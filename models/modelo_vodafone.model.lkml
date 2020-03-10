connection: "piloto_vodafone"
label: "2) Piloto Vodafone"

# include all the views
include: "/views/**/*.view"

datagroup: modelo_vodafone_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: modelo_vodafone_default_datagroup

explore: client_type {
  label: "(1) Client Type"
  view_name:  client_type

  join: nivel_1_1 {
    view_label: "Client Type"
    relationship: one_to_one
    sql_on: ${nivel_1_1.clienttype} = ${client_type.idclienttype} ;;
  }

}

#explore: connection_reg_r3 {}

explore: logado {
  label: "(2) Logado"
  view_name:  logado

}

explore: nivel_1_1 {
  label: "(3) Nivel 1 1"
  view_name:  nivel_1_1

  join: operation {
    view_label: "OPERACION"
    relationship: one_to_one
    sql_on: ${operation.idoperation} = ${nivel_1_1.idoperation} ;;
  }
}

explore: nivel_3 {}

explore: operation {}

explore: system {}
