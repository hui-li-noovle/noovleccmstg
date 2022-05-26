view: mat_dashboard {

  sql_table_name: `multicloud_output.mat_dashboard`
    ;;

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: billing_account_name {
    type: string
    sql: ${TABLE}.billing_account_name ;;
  }

  dimension: billing_entity {
    type: string
    sql: ${TABLE}.billing_entity ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_of_client {
    type: number
    sql: ${TABLE}.cost_of_client ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}.cost_type ;;
  }

  dimension: invoice_month {
    type: string
    sql: ${TABLE}.invoice_month ;;
  }

  dimension_group: invoice_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_month_date ;;
  }

  dimension: other_credits {
    type: number
    sql: ${TABLE}.other_credits ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: promotions {
    type: number
    sql: ${TABLE}.promotions ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension: reseller_margin {
    type: number
    sql: ${TABLE}.reseller_margin ;;
  }

  dimension: service_description {
    type: string
    sql: ${TABLE}.service_description ;;
  }

  dimension: sku_description {
    type: string
    sql: ${TABLE}.sku_description ;;
  }

  dimension: usage_amount {
    type: number
    sql: ${TABLE}.usage_amount ;;
  }

  dimension_group: usage_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.usage_end_date ;;
  }

  dimension_group: usage_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.usage_start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [billing_account_name, project_name, client_name]
  }
=======
  sql_table_name: `dev-noovle-spa-consumption.cost_control_multicloud.mat_dashboard`
    ;;

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: billing_account_name {
    type: string
    sql: ${TABLE}.billing_account_name ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
  }

  dimension: billing_entity {
    type: string
    sql: ${TABLE}.billing_entity ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}.cost_type ;;
  }

  dimension: invoice_month {
    type: string
    sql: ${TABLE}.invoice_month ;;
  }

  dimension_group: invoice_month {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_month_date ;;
  }

  dimension: other_credit {
    type: number
    sql: ${TABLE}.other_credits ;;
  }

  dimension: credit {
    type: number
    sql: ${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: promotions {
    type: number
    sql: ${TABLE}.promotions ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension: reseller_margin {
    type: number
    sql: ${TABLE}.reseller_margin ;;
  }

  dimension: cost_of_client {
    type: number
    sql: ${TABLE}.cost_of_client ;;
  }

  dimension: service_description {
    type: string
    sql: ${TABLE}.service_description ;;
  }

  dimension: sku_description {
    type: string
    sql: ${TABLE}.sku_description ;;
  }

  dimension: usage_amount {
    type: number
    sql: ${TABLE}.usage_amount ;;
  }

  dimension_group: usage_end {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.usage_end_date ;;
  }

  dimension_group: usage_start {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.usage_start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [billing_account_name, project_name]
  }

  measure: total_cost_credits {
    type: sum
    sql: ${TABLE}.cost + ${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits ;;
  }

  measure: credits {
    type: sum
    sql: ${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits ;;
  }

  measure: promotion_credits {
    type: sum
    sql: ${TABLE}.promotions ;;
  }

  measure: reseller_credits {
    type: sum
    sql: ${TABLE}.reseller_margin ;;
  }

  measure: other_credits {
    type: sum
    sql: ${TABLE}.other_credits ;;
  }

  measure: cost_client {
    type: sum
    sql: ${TABLE}.cost_of_client ;;
  }

}
