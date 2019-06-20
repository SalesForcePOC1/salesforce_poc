view: v_opportunity_validate {
  sql_table_name: SFDC_SNOWFLAKE_LOOKER.V_OPPORTUNITY_VALIDATE ;;

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}."ID" ;;
  }

  ### DIMENSIONS & MEASURES ###

  dimension: accountid {
    type: string
    label: "Account ID"
    sql: ${TABLE}."ACCOUNTID" ;;
  }

  dimension: activity_after_close {
    type: number
    label: "Activity After Close"
    sql: ${TABLE}."ACTIVITY_AFTER_CLOSE" ;;
  }

  dimension: amount {
    type: number
    hidden: yes
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension: budget_confirmed__c {
    type: yesno
    label: "Budget Confirmed"
    sql: ${TABLE}."BUDGET_CONFIRMED__C" ;;
  }

  dimension_group: closedate {
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
    label: "Close Date"
    sql: ${TABLE}."CLOSEDATE" ;;
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

  dimension: discovery_completed__c {
    type: yesno
    label: "Discovery Completed"
    group_label: "Flags"
    sql: ${TABLE}."DISCOVERY_COMPLETED__C" ;;
  }

  dimension: expectedrevenue {
    type: number
    hidden: yes
    sql: ${TABLE}."EXPECTEDREVENUE" ;;
  }

  dimension: fiscal {
    type: string
    label: "Fiscal"
    sql: ${TABLE}."FISCAL" ;;
  }

  dimension: fiscalquarter {
    type: number
    label: "Fiscal Quarter"
    sql: ${TABLE}."FISCALQUARTER" ;;
  }

  dimension: fiscalyear {
    type: number
    label: "Fiscal Year"
    sql: ${TABLE}."FISCALYEAR" ;;
  }

  dimension: forecastcategory {
    type: string
    label: "Forecast Category"
    sql: ${TABLE}."FORECASTCATEGORY" ;;
  }

  dimension: forecastcategoryname {
    type: string
    label: "Forecast Cateogry Name"
    sql: ${TABLE}."FORECASTCATEGORYNAME" ;;
  }

  dimension: hasopenactivity {
    type: yesno
    group_label: "Flags"
    label: "Has Open Activity"
    sql: ${TABLE}."HASOPENACTIVITY" ;;
  }

  dimension: hasopportunitylineitem {
    type: yesno
    group_label: "Flags"
    label: "Has Opportunity Line Item"
    sql: ${TABLE}."HASOPPORTUNITYLINEITEM" ;;
  }

  dimension: hasoverduetask {
    type: yesno
    group_label: "Flags"
    label: "Has Over Due Task"
    sql: ${TABLE}."HASOVERDUETASK" ;;
  }

  dimension: isclosed {
    type: yesno
    group_label: "Flags"
    label: "Is Closed"
    sql: ${TABLE}."ISCLOSED" ;;
  }

  dimension: isdeleted {
    type: yesno
    group_label: "Flags"
    label: "Is Deleted"
    sql: ${TABLE}."ISDELETED" ;;
  }

  dimension: isprivate {
    type: yesno
    group_label: "Flags"
    label: "Is Private"
    sql: ${TABLE}."ISPRIVATE" ;;
  }

  dimension: iswon {
    type: yesno
    group_label: "Flags"
    label: "Is Won"
    sql: ${TABLE}."ISWON" ;;
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

  dimension: lead_check__c {
    type: yesno
    group_label: "Flags"
    label: "Lead Check"
    sql: ${TABLE}."LEAD_CHECK__C" ;;
  }

  dimension: leadsource {
    type: string
    label: "Lead Source"
    sql: ${TABLE}."LEADSOURCE" ;;
  }

  dimension: loss_reason__c {
    type: string
    label: "Loss Reason"
    sql: ${TABLE}."LOSS_REASON__C" ;;
  }

  dimension: mod_months_old {
    type: number
    label: "MOd Months Old"
    sql: ${TABLE}."MOD_MONTHS_OLD" ;;
  }

  dimension: name {
    type: string
    label: "Name"
    sql: ${TABLE}."NAME" ;;
  }

  dimension: nextstep {
    type: string
    label: "Next Step"
    sql: ${TABLE}."NEXTSTEP" ;;
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

  dimension: pending_actv_for_closed {
    type: yesno
    group_label: "Flags"
    label: "Pending Activity for Closed"
    sql: ${TABLE}."PENDING_ACTV_FOR_CLOSED" ;;
  }

  dimension: probability {
    type: number
    label: "Probability"
    sql: ${TABLE}."PROBABILITY" ;;
  }

  dimension: reseller__c {
    type: yesno
    label: "Reseller"
    sql: ${TABLE}."RESELLER__C" ;;
  }

  dimension: roi_analysis_completed__c {
    type: yesno
    label: "ROI Analysis Completed"
    sql: ${TABLE}."ROI_ANALYSIS_COMPLETED__C" ;;
  }


  dimension: software_revenue__c {
    type: number
    hidden: yes
    sql: ${TABLE}."SOFTWARE_REVENUE__C" ;;
  }

  dimension: stagename {
    type: string
    label: "Stage Name"
    sql: ${TABLE}."STAGENAME" ;;
  }

  dimension: sys_months_old {
    type: number
    label: "Sys Months Old"
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
    label: "System Mod Stamp"
    sql: ${TABLE}."SYSTEMMODSTAMP" ;;
  }

  dimension: type {
    type: string
    label: "Type"
    sql: ${TABLE}."TYPE" ;;
  }


### SF FIELDS ###
  dimension: sf_amount__c {
    type: number
    hidden: yes
    sql: ${TABLE}."SF_AMOUNT__C" ;;
  }

  dimension: sf_artifact_required__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_ARTIFACT_REQUIRED__C" ;;
  }

  dimension: sf_bd_group__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_BD_GROUP__C" ;;
  }

  dimension: sf_bd_group_text__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_BD_GROUP_TEXT__C" ;;
  }

  dimension: sf_client_sponsor_name__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_CLIENT_SPONSOR_NAME__C" ;;
  }

  dimension: sf_client_sponsor_title__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_CLIENT_SPONSOR_TITLE__C" ;;
  }

  dimension_group: sf_created_date__c {
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
    sql: ${TABLE}."SF_CREATED_DATE__C" ;;
  }

  dimension: sf_discovery_completed__c {
    type: yesno
    hidden: yes
    sql: ${TABLE}."SF_DISCOVERY_COMPLETED__C" ;;
  }

  dimension_group: sf_expected_project_start_date__c {
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
    sql: ${TABLE}."SF_EXPECTED_PROJECT_START_DATE__C" ;;
  }

  dimension: sf_forecast_status__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_FORECAST_STATUS__C" ;;
  }

  dimension: sf_gts_remarks__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_GTS_REMARKS__C" ;;
  }

  dimension: sf_implementation__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_IMPLEMENTATION__C" ;;
  }

  dimension: sf_implementation_primary_practice__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_IMPLEMENTATION_PRIMARY_PRACTICE__C" ;;
  }

  dimension: sf_lead_owner__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_LEAD_OWNER__C" ;;
  }

  dimension: sf_list_of_competitors__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_LIST_OF_COMPETITORS__C" ;;
  }

  dimension: sf_loss_reason__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_LOSS_REASON__C" ;;
  }

  dimension: sf_opportunity_no__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_OPPORTUNITY_NO__C" ;;
  }

  dimension: sf_other_service_line__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_OTHER_SERVICE_LINE__C" ;;
  }

  dimension: sf_partner_name__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_PARTNER_NAME__C" ;;
  }

  dimension: sf_pov_owner__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_POV_OWNER__C" ;;
  }

  dimension: sf_pov_required__c {
    type: yesno
    hidden: yes
    sql: ${TABLE}."SF_POV_REQUIRED__C" ;;
  }

  dimension: sf_pov_status__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_POV_STATUS__C" ;;
  }

  dimension: sf_proposal_doc_uploaded__c {
    type: yesno
    hidden: yes
    sql: ${TABLE}."SF_PROPOSAL_DOC_UPLOADED__C" ;;
  }

  dimension_group: sf_proposal_due_date__c {
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
    sql: ${TABLE}."SF_PROPOSAL_DUE_DATE__C" ;;
  }

  dimension: sf_proposal_owner__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_PROPOSAL_OWNER__C" ;;
  }

  dimension: sf_proposal_required__c {
    type: yesno
    hidden: yes
    sql: ${TABLE}."SF_PROPOSAL_REQUIRED__C" ;;
  }

  dimension: sf_proposal_status__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_PROPOSAL_STATUS__C" ;;
  }

  dimension: sf_region__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_REGION__C" ;;
  }

  dimension: sf_region_text__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_REGION_TEXT__C" ;;
  }

  dimension: sf_service_lines__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_SERVICE_LINES__C" ;;
  }

  dimension: sf_service_type__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_SERVICE_TYPE__C" ;;
  }

  dimension: sf_solution_architect_practice_manager__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_SOLUTION_ARCHITECT_PRACTICE_MANAGER__C" ;;
  }

  dimension: sf_sow_owners__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_SOW_OWNERS__C" ;;
  }

  dimension: sf_sow_required__c {
    type: yesno
    hidden: yes
    sql: ${TABLE}."SF_SOW_REQUIRED__C" ;;
  }

  dimension: sf_sow_status__c {
    type: string
    hidden:yes
    sql: ${TABLE}."SF_SOW_STATUS__C" ;;
  }

  dimension: sf_technology_platform__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_TECHNOLOGY_PLATFORM__C" ;;
  }

  dimension: sf_trianz_intro_owners__c {
    type: string
    hidden:  yes
    sql: ${TABLE}."SF_TRIANZ_INTRO_OWNERS__C" ;;
  }

  dimension: sf_trianz_intro_required__c {
    type: yesno
    hidden: yes
    sql: ${TABLE}."SF_TRIANZ_INTRO_REQUIRED__C" ;;
  }

  dimension: sf_trianz_intro_status__c {
    type: string
    hidden: yes
    sql: ${TABLE}."SF_TRIANZ_INTRO_STATUS__C" ;;
  }
  ### SDC FIELDS ###
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

  ### Measures ###
  measure: sum_amount {
    type: sum
    label: "Amount"
    sql: ${amount};;
  }


  measure: sum_expectedrevenue {
    type: sum
    label: "Expected Revenue"
    sql: ${expectedrevenue};;
  }

  measure: sum_software_revenue__c {
    type: sum
    label: "Software Revenue"
    sql: ${software_revenue__c} ;;
  }
}
