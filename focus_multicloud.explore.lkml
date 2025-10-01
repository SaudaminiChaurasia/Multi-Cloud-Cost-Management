include: "/01-gcp_billing/views/*.view.lkml"
include: "/02-focus_multicloud/views/*.view.lkml"

explore: focus_union {
  join: focus_service_mapping {
    sql_on: ${focus_union.service_name}  = ${focus_service_mapping.service_name}
    AND  ${focus_union.provider_name} = ${focus_service_mapping.provider_name} ;;
    relationship: one_to_one
  }

  join: focus_region_mapping {
    sql_on: ${focus_union.region_name} = ${focus_region_mapping.region};;
    relationship: many_to_one
  }
}

explore: focus_aws_2025 {}

explore: focus_azure {}
