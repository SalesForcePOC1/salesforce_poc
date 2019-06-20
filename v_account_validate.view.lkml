view: v_account_validate {
  sql_table_name: SFDC_SNOWFLAKE_LOOKER.V_ACCOUNT_VALIDATE ;;

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}."ID" ;;
  }


### DIMENSIONS & MEASURES ###

  dimension: account_lead_source__c {
    type: string
    label: "Account Lead Source "
    sql: ${TABLE}."ACCOUNT_LEAD_SOURCE__C" ;;
  }

  dimension: accountsource {
    type: string
    label: "Account Source"
    sql: ${TABLE}."ACCOUNTSOURCE" ;;
  }

  dimension: act_months_old {
    type: number
    label: "Acount Months Old"
    sql: ${TABLE}."ACT_MONTHS_OLD" ;;
  }

  dimension: annualrevenue {
    type: number
    hidden: yes
    sql: ${TABLE}."ANNUALREVENUE" ;;
  }

  dimension: billing_invalid {
    type: number
    label: "Billing Invalid"
    sql: ${TABLE}."BILLING_INVALID" ;;
  }

  dimension: billingcity {
    type: string
    label: "Billing City"
    sql: ${TABLE}."BILLINGCITY" ;;
  }

  dimension: billingcountry {
    type: string
    label: "Billing Country"
    sql: ${TABLE}."BILLINGCOUNTRY" ;;
  }

  dimension: billingpostalcode {
    type: string
    label: "Billing Postal Code"
    sql: ${TABLE}."BILLINGPOSTALCODE" ;;
  }

  dimension: billingstate {
    type: string
    label: "Billing State"
    sql: ${TABLE}."BILLINGSTATE" ;;
  }

  dimension: billingstreet {
    type: string
    label: "Billing Street"
    sql: ${TABLE}."BILLINGSTREET" ;;
  }

  dimension: createdbyid {
    type: string
    label: "Created By ID"
    sql: ${TABLE}."CREATEDBYID" ;;
  }

  dimension_group: createddate {
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
    label: "Created Date"
    sql: ${TABLE}."CREATEDDATE" ;;
  }

  dimension: data_quality_description__c {
    type: string
    label: "Data Quality Description"
    sql: ${TABLE}."DATA_QUALITY_DESCRIPTION__C" ;;
  }

  dimension: data_quality_score__c {
    type: number
    label: "Data Quality Score"
    sql: ${TABLE}."DATA_QUALITY_SCORE__C" ;;
  }

  dimension: description {
    type: string
    label: "Description"
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: fax {
    type: string
    label: "Fax"
    sql: ${TABLE}."FAX" ;;
  }

  dimension: industry {
    type: string
    label: "Industry"
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: isdeleted {
    type: yesno
    view_label: "Advanced Reporting"
    group_label: "Flags"
    label: "Is Deleted Flag"
    sql: ${TABLE}."ISDELETED" ;;
  }

  dimension_group: lastactivitydate {
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
    label: "Last Activity Date"
    sql: ${TABLE}."LASTACTIVITYDATE" ;;
  }

  dimension: lastmodifiedbyid {
    type: string
    label: "Last Modified By ID"
    sql: ${TABLE}."LASTMODIFIEDBYID" ;;
  }

  dimension_group: lastmodifieddate {
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
    label: "Last Modified Date"
    sql: ${TABLE}."LASTMODIFIEDDATE" ;;
  }

  dimension: mod_months_old {
    type: number
    label: "Mod Months Old"
    sql: ${TABLE}."MOD_MONTHS_OLD" ;;
  }

  dimension: name {
    type: string
    label: "Name"
    sql: ${TABLE}."NAME" ;;
  }

  dimension: name_duplicate {
    type: number
    label: "Name Duplicate"
    sql: ${TABLE}."NAME_DUPLICATE" ;;
  }

  dimension: number_of_closed_won_opportunities__c {
    type: number
    hidden: yes
    sql: ${TABLE}."NUMBER_OF_CLOSED_WON_OPPORTUNITIES__C" ;;
  }

  dimension: numberofemployees {
    type: number
    label: "Numer of Employees"
    sql: ${TABLE}."NUMBEROFEMPLOYEES" ;;
  }

  dimension: originating_system__c {
    type: string
    label: "Originating System"
    sql: ${TABLE}."ORIGINATING_SYSTEM__C" ;;
  }

  dimension: ownerid {
    type: string
    label: "Owner ID"
    sql: ${TABLE}."OWNERID" ;;
  }

  dimension: parentid {
    type: string
    label: "Parent ID"
    sql: ${TABLE}."PARENTID" ;;
  }

  dimension: phone {
    type: string
    label: "Phone"
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: photourl {
    type: string
    label: "Photo URL"
    sql: ${TABLE}."PHOTOURL" ;;
  }

  dimension: shipping_invalid {
    type: number
    label: "Shipping Invalid"
    sql: ${TABLE}."SHIPPING_INVALID" ;;
  }

  dimension: shippingcity {
    type: string
    label: "Shipping City"
    sql: ${TABLE}."SHIPPINGCITY" ;;
  }

  dimension: shippingcountry {
    type: string
    label: "Shipping Country"
    sql: ${TABLE}."SHIPPINGCOUNTRY" ;;
  }

  dimension: shippingpostalcode {
    type: string
    label: "Shipping Postal Code"
    sql: ${TABLE}."SHIPPINGPOSTALCODE" ;;
  }

  dimension: shippingstate {
    type: string
    label: "Shipping State"
    sql: ${TABLE}."SHIPPINGSTATE" ;;
  }

  dimension: shippingstreet {
    type: string
    label: "Shipping Street"
    sql: ${TABLE}."SHIPPINGSTREET" ;;
  }

  dimension: suggest_bill_country {
    type: string
    label: "Suggest Bill Country"
    sql: ${TABLE}."SUGGEST_BILL_COUNTRY" ;;
  }

  dimension: suggest_bill_state {
    type: string
    label: "Suggest Bill State"
    sql: ${TABLE}."SUGGEST_BILL_STATE" ;;
  }

  dimension: suggest_ship_country {
    type: string
    label: "Suggest Ship Country"
    sql: ${TABLE}."SUGGEST_SHIP_COUNTRY" ;;
  }

  dimension: suggest_ship_state {
    type: string
    label: "Suggest Ship State"
    sql: ${TABLE}."SUGGEST_SHIP_STATE" ;;
  }

  dimension: sys_months_old {
    type: number
    label: "SYS months Old"
    sql: ${TABLE}."SYS_MONTHS_OLD" ;;
  }

  dimension_group: systemmodstamp {
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
    hidden: yes
    sql: ${TABLE}."SYSTEMMODSTAMP" ;;
  }

  dimension: type {
    type: string
    label: "Type"
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: website {
    type: string
    label: "Website"
    sql: ${TABLE}."WEBSITE" ;;
  }

### SDC Fields ###
  dimension_group: _sdc_batched {
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
    hidden: yes
    sql: ${TABLE}."_SDC_BATCHED_AT" ;;
  }

  dimension_group: _sdc_extracted {
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
    hidden: yes
    sql: ${TABLE}."_SDC_EXTRACTED_AT" ;;
  }

  dimension_group: _sdc_received {
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
    hidden: yes
    sql: ${TABLE}."_SDC_RECEIVED_AT" ;;
  }

  dimension: _sdc_sequence {
    type: number
    hidden: yes
    sql: ${TABLE}."_SDC_SEQUENCE" ;;
  }

  dimension: _sdc_table_version {
    type: number
    hidden: yes
    sql: ${TABLE}."_SDC_TABLE_VERSION" ;;
  }

### SF Fields ###
  dimension: sf_account_lead_source__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_ACCOUNT_LEAD_SOURCE__C" ;;
  }

  dimension: sf_account_number__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_ACCOUNT_NUMBER__C" ;;
  }

  dimension: sf_account_owner__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_ACCOUNT_OWNER__C" ;;
  }

  dimension: sf_bd_group__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_BD_GROUP__C" ;;
  }

  dimension: sf_do_not_call__c {
    type: yesno
    hidden: yes
    sql: ${TABLE}."SF_DO_NOT_CALL__C" ;;
  }

  dimension: sf_lead_owner__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_LEAD_OWNER__C" ;;
  }

  dimension: sf_partner_name__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_PARTNER_NAME__C" ;;
  }

  dimension: sf_region__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_REGION__C" ;;
  }


  ### MEASURES ###

  measure: sum_annualrevenue {
    type: sum
    label: "Annual Revenue"
    sql: ${annualrevenue} ;;
  }

  measure: sum_number_of_closed_won_opportunities__c {
    type: sum
    label: "Number of Closed Won Opportunities"
    sql: ${number_of_closed_won_opportunities__c} ;;
  }
}
