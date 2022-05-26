view: v_dashboard {

  sql_table_name: `multicloud_output.v_dashboard`
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
=======
  sql_table_name: `cost_control_multicloud.v_dashboard`
    ;;

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: billing_account_name {
    type: string
    sql: ${TABLE}.billing_account_name ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}.cost_type ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}.credits ;;
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

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
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
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.usage_end_time ;;
  }

  dimension_group: usage_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.usage_start_time ;;
  }

  measure: count {
    type: count
    drill_fields: [billing_account_name, project_name]

  }
}
