view: v_user_validate {
  sql_table_name: SFDC_SNOWFLAKE_LOOKER.V_USER_VALIDATE ;;


  dimension: id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  ### DIMENSIONS & MEASURES ###

  dimension: aboutme {
    type: string
    label: "About Me"
    sql: ${TABLE}."ABOUTME" ;;
  }
  dimension: address_invalid {
    type: number
    label: "Address Invalid"
    # value_format_name: id
    sql: ${TABLE}."ADDRESS_INVALID" ;;
  }

  dimension: alias {
    type: string
    label: "Alias"
    sql: ${TABLE}."ALIAS" ;;
  }

  dimension: bannerphotourl {
    type: string
    label: "Banner Photo URL"
    sql: ${TABLE}."BANNERPHOTOURL" ;;
  }
# audit?
  dimension: bd_group__c {
    type: string
    label: "BD Group _C"
    sql: ${TABLE}."BD_GROUP__C" ;;
  }

  dimension: callcenterid {
    type: string
    label: "Call Center ID"
    sql: ${TABLE}."CALLCENTERID" ;;
  }

  dimension: city {
    type: string
    label: "City"
    sql: ${TABLE}."CITY" ;;
  }
  dimension: communitynickname {
    type: string
    label: "Community Nickname"
    sql: ${TABLE}."COMMUNITYNICKNAME" ;;
  }

  dimension: companyname {
    type: string
    label: "Company Name"
    sql: ${TABLE}."COMPANYNAME" ;;
  }

  dimension: country {
    type: string
    label: "Country"
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: days_since_last_login {
    type: number
    label: "Days Since Last Login"
    sql: ${TABLE}."DAYS_SINCE_LAST_LOGIN" ;;
  }

  dimension: days_since_last_viewed {
    type: number
    label: "Days Since Last Viewed"
    sql: ${TABLE}."DAYS_SINCE_LAST_VIEWED" ;;
  }
  dimension: defaultgroupnotificationfrequency {
    type: string
    label: "Default Group Notification Frequency"
    sql: ${TABLE}."DEFAULTGROUPNOTIFICATIONFREQUENCY" ;;
  }

  dimension: delegatedapproverid {
    type: string
    label: "Delegated Approver ID"
    sql: ${TABLE}."DELEGATEDAPPROVERID" ;;
  }

  dimension: department {
    type: string
    label: "Department"
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: digestfrequency {
    type: string
    label: "Digest Frequency"
    sql: ${TABLE}."DIGESTFREQUENCY" ;;
  }


### AUDIT FIELDS ###
  dimension: createdbyid {
    type: string
    hidden:  yes
    sql: ${TABLE}."CREATEDBYID" ;;
  }

  dimension_group: createddate {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATEDDATE" ;;
  }

  dimension: division {
    type: string
    label: "Division"
    sql: ${TABLE}."DIVISION" ;;
  }

  dimension: email {
    type: string
    label: "Email"
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: email_format_valid {
    type: yesno
    label: "Email Format Valid"
    group_label: "Flags"
    sql: ${TABLE}."EMAIL_FORMAT_VALID" ;;
  }

  dimension: emailencodingkey {
    type: string
    label: "Email Encoding Key"
    sql: ${TABLE}."EMAILENCODINGKEY" ;;
  }

  dimension: emailpreferencesautobcc {
    type: yesno
    label: "Email Preference Auto BCC"
    group_label: "Flags"
    sql: ${TABLE}."EMAILPREFERENCESAUTOBCC" ;;
  }

  dimension: emailpreferencesautobccstayintouch {
    type: yesno
    label: "Email Preference Auto BCC Stay in Touch"
    group_label: "Flags"
    sql: ${TABLE}."EMAILPREFERENCESAUTOBCCSTAYINTOUCH" ;;
  }

  dimension: emailpreferencesstayintouchreminder {
    type: yesno
    label: "Email Preferences Stay In Touch Reminder"
    group_label: "Flags"
    sql: ${TABLE}."EMAILPREFERENCESSTAYINTOUCHREMINDER" ;;
  }

  dimension: employeenumber {
    type: string
    label: "Employee Numer"
    sql: ${TABLE}."EMPLOYEENUMBER" ;;
  }

  dimension: fax {
    type: string
    label: "Fax"
    sql: ${TABLE}."FAX" ;;
  }

  dimension: firstname {
    type: string
    label: "First Name"
    sql: ${TABLE}."FIRSTNAME" ;;
  }

  dimension: forecastenabled {
    type: yesno
    label: "Forecast Enabled"
    group_label: "Flags"
    sql: ${TABLE}."FORECASTENABLED" ;;
  }

  dimension: fullphotourl {
    type: string
    label: "Full Photo URL"
    sql: ${TABLE}."FULLPHOTOURL" ;;
  }

  dimension: isactive {
    type: yesno
    label: "Is Active"
    group_label: "Flags"
    sql: ${TABLE}."ISACTIVE" ;;
  }

  dimension: isextindicatorvisible {
    type: yesno
    label: "Is Ext Indicator Visible"
    group_label: "Flags"
    sql: ${TABLE}."ISEXTINDICATORVISIBLE" ;;
  }

  dimension: isprofilephotoactive {
    type: yesno
    label: "Is Profile Active"
    group_label: "Flags"
    sql: ${TABLE}."ISPROFILEPHOTOACTIVE" ;;
  }

  dimension: languagelocalekey {
    type: string
    label: "Language Locale Key"
    sql: ${TABLE}."LANGUAGELOCALEKEY" ;;
  }

  dimension_group: lastlogindate {
    type: time
    label: "Last Login Date"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTLOGINDATE" ;;
  }

  dimension: lastmodifiedbyid {
    type: string
    label: "Last Modified By"
    hidden: yes
    sql: ${TABLE}."LASTMODIFIEDBYID" ;;
  }

  dimension_group: lastmodifieddate {
    type: time
    label: "Last Modified Date"
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTMODIFIEDDATE" ;;
  }

  dimension: lastname {
    type: string
    label: "Last Name"
    sql: ${TABLE}."LASTNAME" ;;
  }

  dimension_group: lastpasswordchangedate {
    type: time
    label: "Last Password Change Date"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTPASSWORDCHANGEDATE" ;;
  }

  dimension_group: lastreferenceddate {
    type: time
    label: "Last Referenced Date"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTREFERENCEDDATE" ;;
  }

  dimension_group: lastvieweddate {
    type: time
    label: "Last Viewed Date"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTVIEWEDDATE" ;;
  }

  dimension: localesidkey {
    type: string
    label: "Locale ID Key"
    sql: ${TABLE}."LOCALESIDKEY" ;;
  }

  dimension: managerid {
    type: string
    label: "Manager ID"
    sql: ${TABLE}."MANAGERID" ;;
  }

  dimension: mediumbannerphotourl {
    type: string
    label: "Medium Banner Photo URL"
    sql: ${TABLE}."MEDIUMBANNERPHOTOURL" ;;
  }

  dimension: mediumphotourl {
    type: string
    label: "Medium Photo URL"
    sql: ${TABLE}."MEDIUMPHOTOURL" ;;
  }

  dimension: middlename {
    type: string
    label: "Middel Name"
    sql: ${TABLE}."MIDDLENAME" ;;
  }

  dimension: mobilephone {
    type: string
    label: "Mobile Phone"
    sql: ${TABLE}."MOBILEPHONE" ;;
  }

  dimension: mod_months_old {
    type: number
    label: "MOD Months old"
    sql: ${TABLE}."MOD_MONTHS_OLD" ;;
  }

  dimension: name {
    type: string
    label: "Name"
    sql: ${TABLE}."NAME" ;;
  }

  dimension: phone {
    type: string
    label: "Phone"
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: pi__can_view_not_assigned_prospects__c {
    type: yesno
    label: "PI Can View Not Assigned Prospects _C"
    group_label: "Flags"
    sql: ${TABLE}."PI__CAN_VIEW_NOT_ASSIGNED_PROSPECTS__C" ;;
  }

  dimension: postalcode {
    type: string
    label: "Postal Code"
    sql: ${TABLE}."POSTALCODE" ;;
  }

  dimension: profileid {
    type: string
    label: "Profile ID"
    sql: ${TABLE}."PROFILEID" ;;
  }

  dimension: receivesadmininfoemails {
    type: yesno
    label: "Recieves Admin Info Emails"
    group_label: "Flags"
    sql: ${TABLE}."RECEIVESADMININFOEMAILS" ;;
  }

  dimension: receivesinfoemails {
    type: yesno
    label: "Recieves Info Emails"
    group_label: "Flags"
    sql: ${TABLE}."RECEIVESINFOEMAILS" ;;
  }

  dimension: signature {
    type: string
    label: "Signature"
    sql: ${TABLE}."SIGNATURE" ;;
  }

  dimension: smallbannerphotourl {
    type: string
    label: "Small Banner Photo URL"
    sql: ${TABLE}."SMALLBANNERPHOTOURL" ;;
  }

  dimension: smallphotourl {
    type: string
    label: "Small Photo URL"
    sql: ${TABLE}."SMALLPHOTOURL" ;;
  }

  dimension: state {
    type: string
    label: "State"
    sql: ${TABLE}."STATE" ;;
  }

  dimension: street {
    type: string
    label: "Street"
    sql: ${TABLE}."STREET" ;;
  }

  dimension: suggest_country {
    type: string
    label: "Suggest Country"
    sql: ${TABLE}."SUGGEST_COUNTRY" ;;
  }

  dimension: suggest_state {
    type: string
    label: "Suggest State"
    sql: ${TABLE}."SUGGEST_STATE" ;;
  }

  dimension: sys_months_old {
    type: number
    label: "SYS Months Old"
    sql: ${TABLE}."SYS_MONTHS_OLD" ;;
  }

  dimension_group: systemmodstamp {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."SYSTEMMODSTAMP" ;;
  }

  dimension: timezonesidkey {
    type: string
    label: "Time Zones ID Key"
    sql: ${TABLE}."TIMEZONESIDKEY" ;;
  }

  dimension: title {
    type: string
    label: "Title"
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: username {
    type: string
    label: "Username"
    sql: ${TABLE}."USERNAME" ;;
  }

  dimension: userpermissionsavantgouser {
    type: yesno
    label: "User Permissions Avantgouser"
    group_label: "User Permissions Flags"
    sql: ${TABLE}."USERPERMISSIONSAVANTGOUSER" ;;
  }

  dimension: userpermissionscallcenterautologin {
    type: yesno
    label: "User Permissions Call Center Auto Login"
    group_label: "User Permissions Flags"
    sql: ${TABLE}."USERPERMISSIONSCALLCENTERAUTOLOGIN" ;;
  }

  dimension: userpermissionsinteractionuser {
    type: yesno
    label: "User Permissions Interaction User"
    group_label: "User Permissions Flags"
    sql: ${TABLE}."USERPERMISSIONSINTERACTIONUSER" ;;
  }

  dimension: userpermissionsmarketinguser {
    type: yesno
    group_label: "User Permissions Flags"
    label: "User Permissions Makteting User"
    sql: ${TABLE}."USERPERMISSIONSMARKETINGUSER" ;;
  }

  dimension: userpermissionsmobileuser {
    type: yesno
    group_label: "User Permissions Flags"
    label: "User Permissions Mobile User"
    sql: ${TABLE}."USERPERMISSIONSMOBILEUSER" ;;
  }

  dimension: userpermissionsofflineuser {
    type: yesno
    label: "User Permissions Offline User"
    group_label: "User Permissions Flags"
    sql: ${TABLE}."USERPERMISSIONSOFFLINEUSER" ;;
  }

  dimension: userpermissionssfcontentuser {
    type: yesno
    label: "User Permissions FContent User"
    group_label: "User Permissions Flags"
    sql: ${TABLE}."USERPERMISSIONSSFCONTENTUSER" ;;
  }

  dimension: userpermissionssupportuser {
    type: yesno
    group_label: "User Permissions Flags"
    label: "User Permissions Support User"
    sql: ${TABLE}."USERPERMISSIONSSUPPORTUSER" ;;
  }

  dimension: userpreferencesactivityreminderspopup {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preference Activity Reminders Popup"
    sql: ${TABLE}."USERPREFERENCESACTIVITYREMINDERSPOPUP" ;;
  }

  dimension: userpreferencesapexpagesdevelopermode {
    type: yesno
    group_label: "User Preference Flags"
    label: "Uer Preferences Apex Pages Developer Mode"
    sql: ${TABLE}."USERPREFERENCESAPEXPAGESDEVELOPERMODE" ;;
  }

  dimension: userpreferencescachediagnostics {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Prefrence Chached Diagnostics"
    sql: ${TABLE}."USERPREFERENCESCACHEDIAGNOSTICS" ;;
  }

  dimension: userpreferencescreatelexappswtshown {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Prefrences Create Shown"
    sql: ${TABLE}."USERPREFERENCESCREATELEXAPPSWTSHOWN" ;;
  }

  dimension: userpreferencesdisableallfeedsemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Prefrences Disable All Feeds Email"
    sql: ${TABLE}."USERPREFERENCESDISABLEALLFEEDSEMAIL" ;;
  }

  dimension: userpreferencesdisablebookmarkemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "USer Prefrences Disable Bookmark Email"
    sql: ${TABLE}."USERPREFERENCESDISABLEBOOKMARKEMAIL" ;;
  }

  dimension: userpreferencesdisablechangecommentemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Prefrence Disable Change Comment Email"
    sql: ${TABLE}."USERPREFERENCESDISABLECHANGECOMMENTEMAIL" ;;
  }

  dimension: userpreferencesdisableendorsementemail {
    type: yesno
    label: "User Prefrence Disable Endorsement Email"
    group_label: "User Preference Flags"
    sql: ${TABLE}."USERPREFERENCESDISABLEENDORSEMENTEMAIL" ;;
  }

  dimension: userpreferencesdisablefilesharenotificationsforapi {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Prefrence Disable File Share Notifications for API"
    sql: ${TABLE}."USERPREFERENCESDISABLEFILESHARENOTIFICATIONSFORAPI" ;;
  }

  dimension: userpreferencesdisablefollowersemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preernce Disable Followers Email"
    sql: ${TABLE}."USERPREFERENCESDISABLEFOLLOWERSEMAIL" ;;
  }

  dimension: userpreferencesdisablelatercommentemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Prefrence Disable Later Comment Email"
    sql: ${TABLE}."USERPREFERENCESDISABLELATERCOMMENTEMAIL" ;;
  }

  dimension: userpreferencesdisablelikeemail {
    type: yesno
    label: "User Preference Disable Like Email"
    group_label: "User Preference Flags"
    sql: ${TABLE}."USERPREFERENCESDISABLELIKEEMAIL" ;;
  }

  dimension: userpreferencesdisablementionspostemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preference Disablementionspost Email"
    sql: ${TABLE}."USERPREFERENCESDISABLEMENTIONSPOSTEMAIL" ;;
  }

  dimension: userpreferencesdisablemessageemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preference Disable Messages Email"
    sql: ${TABLE}."USERPREFERENCESDISABLEMESSAGEEMAIL" ;;
  }

  dimension: userpreferencesdisableprofilepostemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Disable Profile Post Email"
    sql: ${TABLE}."USERPREFERENCESDISABLEPROFILEPOSTEMAIL" ;;
  }

  dimension: userpreferencesdisablesharepostemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Disable Share Post Email"
    sql: ${TABLE}."USERPREFERENCESDISABLESHAREPOSTEMAIL" ;;
  }

  dimension: userpreferencesdiscommentafterlikeemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Disable Comment After Like Email"
    sql: ${TABLE}."USERPREFERENCESDISCOMMENTAFTERLIKEEMAIL" ;;
  }

  dimension: userpreferencesdismentionscommentemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Dismentions Comment Email"
    sql: ${TABLE}."USERPREFERENCESDISMENTIONSCOMMENTEMAIL" ;;
  }

  dimension: userpreferencesdisprofpostcommentemail {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Disprof Post Comment Email"
    sql: ${TABLE}."USERPREFERENCESDISPROFPOSTCOMMENTEMAIL" ;;
  }

  dimension: userpreferencesenableautosubforfeeds {
    type: yesno
    group_label: "User Preference Flags"
    label: "User PReferences Enable Autosub for Feeds"
    sql: ${TABLE}."USERPREFERENCESENABLEAUTOSUBFORFEEDS" ;;
  }

  dimension: userpreferenceseventreminderscheckboxdefault {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Event Reminders Check Box Default"
    sql: ${TABLE}."USERPREFERENCESEVENTREMINDERSCHECKBOXDEFAULT" ;;
  }

  dimension: userpreferencesexcludemailappattachments {
    type: yesno
    group_label: "User Preference Flags"
    label: "Uer Preferences Exclude Email App Attachements"
    sql: ${TABLE}."USERPREFERENCESEXCLUDEMAILAPPATTACHMENTS" ;;
  }

  dimension: userpreferencesfavoritesshowtopfavorites {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Favorite Show Top Favorites"
    sql: ${TABLE}."USERPREFERENCESFAVORITESSHOWTOPFAVORITES" ;;
  }

  dimension: userpreferencesfavoriteswtshown {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Favorites WT Shown"
    sql: ${TABLE}."USERPREFERENCESFAVORITESWTSHOWN" ;;
  }

  dimension: userpreferencesglobalnavbarwtshown {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Global Nav Bar WT Shown"
    sql: ${TABLE}."USERPREFERENCESGLOBALNAVBARWTSHOWN" ;;
  }

  dimension: userpreferencesglobalnavgridmenuwtshown {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Global Nav Grid Menu WT Shown"
    sql: ${TABLE}."USERPREFERENCESGLOBALNAVGRIDMENUWTSHOWN" ;;
  }

  dimension: userpreferenceshidebiggerphotocallout {
    type: yesno
    group_label: "User Preference Flags"
    label: "User Preferences Hide Bigger Photo Call Out"
    sql: ${TABLE}."USERPREFERENCESHIDEBIGGERPHOTOCALLOUT" ;;
  }

  dimension: userpreferenceshidechatteronboardingsplash {
    type: yesno
    group_label: "User Preference Flags"
    label: "Uswer Preferences Hide Chatter Onboarding Splash"
    sql: ${TABLE}."USERPREFERENCESHIDECHATTERONBOARDINGSPLASH" ;;
  }

  dimension: userpreferenceshidecsndesktoptask {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESHIDECSNDESKTOPTASK" ;;
  }

  dimension: userpreferenceshidecsngetchattermobiletask {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESHIDECSNGETCHATTERMOBILETASK" ;;
  }

  dimension: userpreferenceshideenduseronboardingassistantmodal {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESHIDEENDUSERONBOARDINGASSISTANTMODAL" ;;
  }

  dimension: userpreferenceshidelightningmigrationmodal {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESHIDELIGHTNINGMIGRATIONMODAL" ;;
  }

  dimension: userpreferenceshides1_browserui {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESHIDES1BROWSERUI" ;;
  }

  dimension: userpreferenceshidesecondchatteronboardingsplash {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESHIDESECONDCHATTERONBOARDINGSPLASH" ;;
  }

  dimension: userpreferenceshidesfxwelcomemat {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESHIDESFXWELCOMEMAT" ;;
  }

  dimension: userpreferenceslightningexperiencepreferred {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESLIGHTNINGEXPERIENCEPREFERRED" ;;
  }

  dimension: userpreferencespathassistantcollapsed {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESPATHASSISTANTCOLLAPSED" ;;
  }

  dimension: userpreferencespreviewlightning {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESPREVIEWLIGHTNING" ;;
  }

  dimension: userpreferencesrecordhomereservedwtshown {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESRECORDHOMERESERVEDWTSHOWN" ;;
  }

  dimension: userpreferencesrecordhomesectioncollapsewtshown {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESRECORDHOMESECTIONCOLLAPSEWTSHOWN" ;;
  }

  dimension: userpreferencesremindersoundoff {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESREMINDERSOUNDOFF" ;;
  }

  dimension: userpreferencesshowcitytoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWCITYTOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowcitytoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWCITYTOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowcountrytoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWCOUNTRYTOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowcountrytoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWCOUNTRYTOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowemailtoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWEMAILTOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowemailtoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWEMAILTOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowfaxtoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWFAXTOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowfaxtoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWFAXTOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowmanagertoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWMANAGERTOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowmanagertoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWMANAGERTOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowmobilephonetoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWMOBILEPHONETOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowmobilephonetoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWMOBILEPHONETOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowpostalcodetoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWPOSTALCODETOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowpostalcodetoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWPOSTALCODETOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowprofilepictoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWPROFILEPICTOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowstatetoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWSTATETOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowstatetoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWSTATETOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowstreetaddresstoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWSTREETADDRESSTOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowstreetaddresstoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWSTREETADDRESSTOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowtitletoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWTITLETOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowtitletoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWTITLETOGUESTUSERS" ;;
  }

  dimension: userpreferencesshowworkphonetoexternalusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWWORKPHONETOEXTERNALUSERS" ;;
  }

  dimension: userpreferencesshowworkphonetoguestusers {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSHOWWORKPHONETOGUESTUSERS" ;;
  }

  dimension: userpreferencessortfeedbycomment {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESSORTFEEDBYCOMMENT" ;;
  }

  dimension: userpreferencestaskreminderscheckboxdefault {
    type: yesno
    sql: ${TABLE}."USERPREFERENCESTASKREMINDERSCHECKBOXDEFAULT" ;;
  }

  dimension: userroleid {
    type: string
    sql: ${TABLE}."USERROLEID" ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}."USERTYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      communitynickname,
      companyname,
      firstname,
      lastname,
      middlename,
      name,
      username
    ]
  }
}
