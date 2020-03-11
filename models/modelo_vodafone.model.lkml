connection: "piloto_vodafone"
label: "2) Piloto Vodafone"

# include all the views
include: "/views/**/*.view"
#include: "/dashboard/**/*.dashboard" # include all the dashboards
include: "/dashboards/**/*.dashboard"

datagroup: modelo_vodafone_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: modelo_vodafone_default_datagroup

#explore: client_type {
#  label: "(1) Client Type"
#  view_name:  client_type
#
#  join: nivel_1_1 {
#    view_label: "Client Type"
#    relationship: one_to_one
#    sql_on: ${nivel_1_1.clienttype} = ${client_type.idclienttype} ;;
#  }
#}

#explore: connection_reg_r3 {}

explore: logado {
  label: "(1) Logado"
  view_name:  logado

  join: operation {
    view_label: "Dimensión operación"
    relationship: one_to_one
    sql_on: ${operation.idoperation} = ${logado.idoperation} ;;
  }

  join: client_type {
    view_label: "Dimensión tipo cliente"
    relationship: one_to_one
    sql_on: ${client_type.idclienttype} = ${logado.clienttype} ;;
  }

  join:  system{
    view_label: "Dimensión sistema"
    relationship: one_to_one
    sql_on: ${system.idsystem} = ${logado.idsystem} ;;
  }
}

explore: nivel_1_1 {
  label: "(2) Nivel 1 1"
  view_name:  nivel_1_1

  join: operation {
    view_label: "Dimensión operación"
    relationship: one_to_one
    sql_on: ${operation.idoperation} = ${nivel_1_1.idoperation} ;;
     }

  join: client_type {
    view_label: "Dimensión tipo cliente"
    relationship: one_to_one
    sql_on: ${client_type.idclienttype} = ${nivel_1_1.clienttype} ;;
  }

  join:  system{
    view_label: "Dimensión sistema"
    relationship: one_to_one
    sql_on: ${system.idsystem} = ${nivel_1_1.idsystem} ;;
  }

  join: circulos{
    view_label: "Circulos"

  }


}

explore: nivel_3 {
  label: "(3) Nivel 3"
  view_name:  nivel_3

  join: operation {
    view_label: "Dimensión operación"
    relationship: one_to_one
    sql_on: ${operation.idoperation} = ${nivel_3.idoperation} ;;
  }

  join: client_type {
    view_label: "Dimensión tipo cliente"
    relationship: one_to_one
    sql_on: ${client_type.idclienttype} = ${nivel_3.clienttype} ;;
  }

  join:  system{
    view_label: "Dimensión sistema"
    relationship: one_to_one
    sql_on: ${system.idsystem} = ${nivel_3.idsystem} ;;
  }
}

#explore: operation {
#  label: "(5) Operation"
#  view_name:  operation
#}

#explore: system {
#  label: "(6) System"
#  view_name:  system
#
#  join: nivel_1_1 {
#    view_label: "System"
#    relationship: one_to_one
#    sql_on: ${nivel_1_1.idsystem} = ${system.idsystem} ;;
#  }
#}
