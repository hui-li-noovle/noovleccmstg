view: mat_dashboard {
  sql_table_name: `dev-noovle-spa-consumption.multicloud_output.mat_dashboard`
    ;;

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;

    action: {
      label: "Send Email"
      #url: "https://actions.looker.com/actions/SendGrid/execute"
      url: "https://europe-west3-noovle-big-data-analytics.cloudfunctions.net/send_email_with_sendgrid"
      icon_url: "data:image/png;base64,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"
      #form_url: "https://actions.looker.com/actions/SendGrid/form"
      param: {
        name: "NAMETEST"
        value: "1000"
      }

      form_param: {
        name: "subject"
        type: string
        label: "Email Subject: "
        required: yes
        description: ""
        default: "Looker notification"
      }

      form_param: {
        name: "content"
        type: textarea
        label: "Email Content: "
        required: yes
        description: ""
        default: "Client with billing id {{ value}} has consumed €{{net_cost._value}} in the invoice month of {{invoice_month._value}}."
      }

      form_param: {
        name: "email_to"
        type: string
        label: "Email to: "
        required: yes
        description: ""
        default: "hui.li@ext.noovle.com"
      }


    }

    action: {
      label: "Send Invoice PDF"
      #url: "https://actions.looker.com/actions/SendGrid/execute"
      url: "https://europe-west3-dev-noovle-spa-consumption.cloudfunctions.net/send_invoice_pdf"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Icon_pdf_file.svg/1200px-Icon_pdf_file.svg.png"
      #form_url: "https://actions.looker.com/actions/SendGrid/form"
      param: {
        name: "billing_id"
        value: "{{billing_account_id._value}}"
      }

      param: {
        name: "invoice_month_date"
        value: "{{invoice_month_date._value}}"
      }

      param: {
        name: "cost"
        value: "{{net_cost._value}}"
      }

      form_param: {
        name: "email_to"
        type: string
        label: "Email to: "
        required: yes
        description: "description text"
        default: "hui.li@ext.noovle.com"
      }

    }


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
    sql: IF(${TABLE}.cost_type NOT IN ('ACTIVE'),${TABLE}.cost,0) ;;
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



  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }


  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }



  dimension: service_description {
    type: string
    sql: ${TABLE}.service_description ;;

    action: {
      label: "Send Email"
      #url: "https://actions.looker.com/actions/SendGrid/execute"
      url: "https://europe-west3-noovle-big-data-analytics.cloudfunctions.net/send_email_with_sendgrid"
      icon_url: "data:image/png;base64,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"
      #form_url: "https://actions.looker.com/actions/SendGrid/form"
      param: {
        name: "NAMETEST"
        value: "1000"
      }

      form_param: {
        name: "subject"
        type: string
        label: "Email Subject: "
        required: yes
        description: "description text"
        default: "Looker notification"
      }

      form_param: {
        name: "content"
        type: textarea
        label: "Email Content: "
        required: yes
        description: "description text"
        default: "Service {{value}} has billed €{{net_cost._value}} ."
      }

      form_param: {
        name: "email_to"
        type: string
        label: "Email to: "
        required: yes
        description: "description text"
        default: "hui.li@ext.noovle.com"
      }


    }
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

  dimension: other_credit {
    type: number
    sql:IF(${TABLE}.cost_type NOT IN ('TAX','RIFEE','FEE','PROMOTION','RESELLER_MARGIN','SPPDISCOUNT','ACTIVE','REGULAR','USAGE','COMMITTED_USAGE_DISCOUNT','COMMITTED_USAGE_DISCOUNT_DOLLAR_BASE','SUSTAINED_USAGE_DISCOUNT'),${TABLE}.cost,0) ;;

  }

  dimension: credit {
    type: number
    sql: IF(${TABLE}.cost_type NOT IN ('USAGE','REGULAR','ACTIVE','TAX','RIFEE','FEE'),${TABLE}.cost,0) ;;
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

  measure: net_cost_clear {
    type: sum
    #sql: ${TABLE}.cost + ${TABLE}.reseller_margin + ${TABLE}.promotions + ${TABLE}.other_credits ;;
    sql: IF(${provider}='AZURE',${regular_cost},${regular_cost}+(${credit})) ;;
    #sql:  ${cost} ;;
    #filters: [cost_type: "REGULAR"]
    value_format_name:  euro_formatting
    drill_fields: [invoice_month,project_name,service_description,sku_description,net_cost]
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
