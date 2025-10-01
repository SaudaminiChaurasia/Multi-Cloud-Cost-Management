view: focus_union {
  sql_table_name: `thekitchentable.focus_multicloud.focus_union` ;;

  measure: billed_cost {
    type: sum
    sql: ${TABLE}.BilledCost ;;
    value_format_name: usd
    drill_fields: [detail*]
  }
  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.BillingAccountId ;;
  }
  dimension: billing_currency {
    type: string
    sql: ${TABLE}.BillingCurrency ;;
  }
  dimension_group: billing_period_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.BillingPeriodEnd ;;
  }
  dimension_group: billing_period_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.BillingPeriodStart ;;
  }
  dimension: charge_category {
    type: string
    sql: ${TABLE}.ChargeCategory ;;
  }
  dimension: charge_class {
    type: string
    sql: ${TABLE}.ChargeClass ;;
  }
  dimension: charge_description {
    type: string
    sql: ${TABLE}.ChargeDescription ;;
  }
  dimension_group: charge_period_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ChargePeriodEnd ;;
  }
  dimension_group: charge_period_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ChargePeriodStart ;;
  }
  dimension: commitment_discount_category {
    type: string
    sql: ${TABLE}.CommitmentDiscountCategory ;;
  }
  dimension: commitment_discount_id {
    type: string
    sql: ${TABLE}.CommitmentDiscountId ;;
  }
  dimension: commitment_discount_name {
    type: string
    sql: ${TABLE}.CommitmentDiscountName ;;
  }
  dimension: consumed_quantity {
    type: number
    sql: ${TABLE}.ConsumedQuantity ;;
  }
  dimension: consumed_unit {
    type: string
    sql: ${TABLE}.ConsumedUnit ;;
  }
  measure: contracted_cost {
    type: sum
    sql: ${TABLE}.ContractedCost ;;
    value_format_name: usd
  }
  dimension: contracted_unit_price {
    type: number
    sql: ${TABLE}.ContractedUnitPrice ;;
    value_format_name: usd
  }
  measure: effective_cost {
    type: sum
    sql: ${TABLE}.EffectiveCost ;;
    value_format_name: usd
  }
  measure: list_cost {
    type: sum
    sql: ${TABLE}.ListCost ;;
    value_format_name: usd
  }
  dimension: list_unit_price {
    type: number
    sql: ${TABLE}.ListUnitPrice ;;
    value_format_name: usd
  }
  dimension: pricing_category {
    type: string
    sql: ${TABLE}.PricingCategory ;;
  }
  dimension: pricing_quantity {
    type: string
    sql: ${TABLE}.PricingQuantity ;;
  }
  dimension: pricing_unit {
    type: string
    sql: ${TABLE}.PricingUnit ;;
  }
  dimension: provider_name {
    type: string
    sql: ${TABLE}.ProviderName ;;
  }
  dimension: publisher_name {
    type: string
    sql: ${TABLE}.PublisherName ;;
  }
  dimension: region_id {
    type: string
    sql: ${TABLE}.RegionId ;;
  }
  dimension: region_name {
    type: string
    sql: ${TABLE}.RegionName ;;
  }
  dimension: resource_id {
    type: string
    sql: ${TABLE}.ResourceId ;;
  }
  dimension: resource_name {
    type: string
    sql: ${TABLE}.ResourceName ;;
  }
  dimension: resource_type {
    type: string
    sql: ${TABLE}.ResourceType ;;
  }
  dimension: service_category_deprecated_do_not_use {
    hidden: yes
    type: string
    sql: ${TABLE}.ServiceCategory ;;
  }
  dimension: service_name {
    type: string
    sql: ${TABLE}.ServiceName ;;
  }
  dimension: sku_id {
    type: string
    sql: ${TABLE}.SkuId ;;
  }
  dimension: sku_price_id {
    type: string
    sql: ${TABLE}.SkuPriceId ;;
  }
  dimension: sub_account_id {
    type: string
    sql: ${TABLE}.SubAccountId ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_gcp_cost {
    group_label: "GCP"
    label: "Total GCP Cost"
    type: sum
    sql: ${TABLE}.BilledCost;;
    filters: [provider_name: "Google Cloud"]
    value_format_name: usd
  }

  measure: total_aws_cost {
    group_label: "AWS"
    label: "Total AWS Cost"
    type: sum
    sql: ${TABLE}.BilledCost ;;
    filters: [provider_name: "AWS"]
    value_format_name: usd
  }

  measure: total_azure_cost {
    group_label: "Azure"
    label: "Total Azure Cost"
    type: sum
    sql: ${TABLE}.BilledCost ;;
    filters: [provider_name: "Microsoft"]
    value_format_name: usd
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  focus_service_mapping.service_category,
  service_name,
  consumed_quantity,
  consumed_unit,
  region_name,
  billed_cost

  ]
  }

}
