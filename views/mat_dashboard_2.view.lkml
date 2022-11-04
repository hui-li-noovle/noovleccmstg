view: mat_dashboard_2 {
  sql_table_name: `dev-noovle-spa-consumption.multicloud_output.mat_dashboard_2`
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

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension: service_description {
    type: string
    sql: ${TABLE}.service_description ;;
  }

  dimension: sku_description {
    type: string
    sql: ${TABLE}.sku_description ;;
  }

  dimension: tenant {
    type: string
    sql: ${TABLE}.tenant ;;
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


##########################################################
  dimension: other_credit {
    type: number
    sql:IF(${TABLE}.cost_type NOT IN ('TAX','RIFEE','FEE','PROMOTION','RESELLER_MARGIN','SPPDISCOUNT','ACTIVE','REGULAR','USAGE','COMMITTED_USAGE_DISCOUNT','COMMITTED_USAGE_DISCOUNT_DOLLAR_BASE','SUSTAINED_USAGE_DISCOUNT','PPVV'),${TABLE}.cost,0) ;;

  }

  dimension: credit {
    type: number
    sql: IF(${TABLE}.cost_type NOT IN ('USAGE','REGULAR','ACTIVE','TAX','RIFEE','FEE','PPVV'),${TABLE}.cost,0) ;;
  }


  dimension: promotions {
    type: number
    sql: IF(${TABLE}.cost_type IN ('PROMOTION'),${TABLE}.cost,0) ;;
  }

  dimension: reseller {
    type: number
    sql: IF(${TABLE}.cost_type IN ('RESELLER_MARGIN','SPPDISCOUNT'),${TABLE}.cost,0) ;;
  }

  dimension: cost_of_client {
    type: number
    sql: IF(${TABLE}.cost_type IN ('ACTIVE'),${TABLE}.cost,0);;
  }

  dimension: sud {
    type: number
    sql: IF(${TABLE}.cost_type IN ('SUSTAINED_USAGE_DISCOUNT'),${TABLE}.cost,0) ;;
  }

  dimension: cud {
    type: number
    sql: IF(${TABLE}.cost_type IN ('COMMITTED_USAGE_DISCOUNT','COMMITTED_USAGE_DISCOUNT_DOLLAR_BASE'),${TABLE}.cost,0) ;;
  }

  measure: count {
    type: count
    drill_fields: [billing_account_name, project_name]
  }

  dimension: regular_cost {
    type: number
    #sql: abs(${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits) ;;
    sql:  IF(${TABLE}.cost_type IN ('REGULAR','USAGE','RIFEE','FEE','TAX'),${TABLE}.cost,0) ;;
    #value_format:"€#.###,00"
  }

  dimension: regular_active_cost {
    type: number
    #sql: abs(${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits) ;;
    sql:  IF(${TABLE}.cost_type IN ('PPVV'),${TABLE}.cost,0) ;;
    #value_format:"€#.###,00"
  }


  measure: total_cost {
    type: sum
    #sql: abs(${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits) ;;
    sql:  ${regular_cost} ;;
    value_format_name:  euro_formatting
    html: <p style="font-size:20px">{{rendered_value}}</p><i style='font-color:gray'>*consumo totale</i>;;

  }

  measure: net_cost {
    type: sum
    #sql: ${TABLE}.cost + ${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits ;;
    sql: IF(${provider}='AZURE',${regular_cost},${regular_cost}+(${credit})) ;;
    #sql:  ${cost} ;;
    #filters: [cost_type: "REGULAR"]
    value_format_name:  euro_formatting
    drill_fields: [invoice_month,project_name,service_description,sku_description,net_cost]

    html: <p style="font-size:20px">{{rendered_value}}</p><i style='font-color:gray'>*consumo Netto pagato da Noovle verso cloud provider </i>;;
  }

  measure: net_active_cost {
    type: sum
    #sql: ${TABLE}.cost + ${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits ;;
    sql: ${regular_active_cost} ;;
    #sql:  ${cost} ;;
    #filters: [cost_type: "REGULAR"]
    value_format_name:  euro_formatting
    drill_fields: [invoice_month,project_name,service_description,sku_description,net_cost]

    html: <p style="font-size:20px">{{rendered_value}}</p><i style='font-color:gray'>*costo attivo pagato dal cliente a Noovle </i>;;
  }

  measure: net_cost_clear {
    type: sum
    #sql: ${TABLE}.cost + ${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits ;;
    sql: IF(${provider}='AZURE',${regular_cost},${regular_cost}+(${credit})) ;;
    #sql:  ${cost} ;;
    #filters: [cost_type: "REGULAR"]
    value_format_name:  euro_formatting
    drill_fields: [invoice_month,project_name,service_description,sku_description,cost_type,net_cost]
  }

  measure: net_active_cost_clear {
    type: sum
    #sql: ${TABLE}.cost + ${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits ;;
    sql: ${regular_active_cost} ;;
    #sql:  ${cost} ;;
    #filters: [cost_type: "REGULAR"]
    value_format_name:  euro_formatting
    drill_fields: [invoice_month,billing_account_id,net_active_cost]
  }

  measure: credits {
    type: sum
    #sql: abs(${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits) ;;
    sql:  IF(${provider}='AZURE',${credit}, -${credit});;
    value_format_name:  euro_formatting
    html: <p style="font-size:20px">{{rendered_value}}</p><i style='font-color:gray'>*credito riconosciuto a Noovle</i>;;

  }

  measure: credits_clear {
    type: sum
    #sql: abs(${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits) ;;
    sql:  IF(${provider}='AZURE',${credit}, -${credit});;
    value_format_name:  euro_formatting
  }

  measure: promotion_credits {
    type: sum
    sql: -${promotions} ;;
    value_format_name:  euro_formatting
    html: <p style="font-size:20px">{{rendered_value}}</p>
      <i style='font-color:gray'>*i crediti promozionali</i>;;

  }

  measure: reseller_margin {
    type: sum
    sql: IF(${provider}='AZURE',${reseller}, -${reseller});;
    value_format_name:  euro_formatting
    html: <p style="font-size:20px">{{rendered_value}}</p><i style='font-color:gray'>*il valore assoluto del margine rivenditore</i>;;

  }

  measure: reseller_margin_clear {
    type: sum
    sql: IF(${provider}='AZURE',${reseller}, -${reseller});;
    value_format_name:  euro_formatting
  }

  measure: sud_credits {
    type: sum
    sql: -${sud};;
    value_format_name:  euro_formatting
  }

  measure: cud_credits {
    type: sum
    sql: -${cud};;
    value_format_name:  euro_formatting
  }

  measure: other_credits {
    type: sum
    sql: IF(${provider}='AZURE',${other_credit}, -${other_credit});;
    value_format_name:  euro_formatting
  }

  measure: cost_client {
    type: sum
    sql: ${cost_of_client} ;;
    value_format_name:  euro_formatting
  }

  dimension: project__name {
    type: string
    sql: ${TABLE}.project_name ;;
    group_label: "Project"
    group_item_label: "Name"
    link: {
      label: "{% if project_id._value != '-NULL' and project_id._value != 'ND' and provider._value == 'GCP'%} View Project in Console {% endif %}"
      url: "https://console.cloud.google.com/home/dashboard?project={{ project_id._value }}"
      icon_url: "https://i.pinimg.com/originals/92/b2/66/92b266df967b8540c94301eacdec391b.png"
    }
  }

  measure: glossary {
    type: count
    html:
      <table style='border: 1px solid black;border-radius: 30px;margin-left: auto; margin-right: auto;font-size:14px'>
      <tr><td style='text-align:left;padding: 15px;'>

      <p style='text-align:center;'><b>SEZIONE COMUNE</b></p>
      <ul>
      <li>CREDIT = credito riconosciuto a Noovle
      <ul>
      <li>PROMOTION = i crediti promozionali sono una forma di pagamento e vengono applicati automaticamente e riducono l'importo totale della fattura.</li>
      <li>RESELLER MARGIN = il valore assoluto del margine rivenditore, indica gli sconti del Programma per rivenditori guadagnati per ogni voce idonea.</li>
      </ul>
      </li>

      <li>TAX = iva applicato al net cost</li>

      <li>NET COST = consumo Netto pagato da Noovle verso cloud provider (incluso iva e crediti vari)</li>
      </ul>

      </td></tr>
      </table>

      ;;
  }

  measure: current_month {
    type:  string
    sql:  FORMAT_DATE("%b",MAX(${invoice_month_date})) ;;

  }

  measure: previous_month {
    type:  string
    sql:  FORMAT_DATE("%b %Y",DATE_SUB(MAX(${invoice_month_date}),INTERVAL 1 MONTH));;

  }

  measure: current_month_label {
    type: count
    html:
      <p style='font-size:14px;'><b>NET COST CHANGE</b><br>
        <I style='text-align:left;'>{{current_month._value}} vs {{previous_month._value}}:</I>
        <I style='color:#FFFFFF;'>spaziospazio</I>
        <I style='text-align:right;'>{{current_quarter._value}} vs {{previous_quarter._value}}:</I>

      </p>

      ;;
  }

  measure: current_quarter {
    type:  string
    sql:  CONCAT("Q",EXTRACT(QUARTER FROM MAX(${invoice_month_date}))) ;;

  }

  measure: previous_quarter {
    type:  string
    sql:  CONCAT("Q",EXTRACT(QUARTER FROM DATE_SUB(MAX(${invoice_month_date}),INTERVAL 1 QUARTER)),' ',EXTRACT(YEAR FROM DATE_SUB(MAX(${invoice_month_date}),INTERVAL 1 MONTH)));;

  }

  dimension: iva_esclusa {
    type:  yesno
    sql:   IF(${TABLE}.cost_type='TAX',false,true);;

  }


}
