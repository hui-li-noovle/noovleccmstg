view: fed_aws_billing {
  sql_table_name: `cost_control_multicloud.fed_aws_billing`
    ;;

  dimension: bill_bill_type {
    type: string
    sql: ${TABLE}.bill_BillType ;;
  }

  dimension: bill_billing_entity {
    type: string
    sql: ${TABLE}.bill_BillingEntity ;;
  }

  dimension_group: bill_billing_period_end {
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
    sql: ${TABLE}.bill_BillingPeriodEndDate ;;
  }

  dimension_group: bill_billing_period_start {
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
    sql: ${TABLE}.bill_BillingPeriodStartDate ;;
  }

  dimension: bill_invoice_id {
    type: string
    sql: ${TABLE}.bill_InvoiceId ;;
  }

  dimension: bill_invoicing_entity {
    type: string
    sql: ${TABLE}.bill_InvoicingEntity ;;
  }

  dimension: bill_payer_account_id {
    type: string
    sql: ${TABLE}.bill_PayerAccountId ;;
  }

  dimension: discount_spp_discount {
    type: number
    sql: ${TABLE}.discount_SppDiscount ;;
  }

  dimension: discount_total_discount {
    type: number
    sql: ${TABLE}.discount_TotalDiscount ;;
  }

  dimension: identity_line_item_id {
    type: string
    sql: ${TABLE}.identity_LineItemId ;;
  }

  dimension: identity_time_interval {
    type: string
    sql: ${TABLE}.identity_TimeInterval ;;
  }

  dimension: line_item_availability_zone {
    type: string
    sql: ${TABLE}.lineItem_AvailabilityZone ;;
  }

  dimension: line_item_blended_cost {
    type: number
    sql: ${TABLE}.lineItem_BlendedCost ;;
  }

  dimension: line_item_blended_rate {
    type: string
    sql: ${TABLE}.lineItem_BlendedRate ;;
  }

  dimension: line_item_currency_code {
    type: string
    sql: ${TABLE}.lineItem_CurrencyCode ;;
  }

  dimension: line_item_legal_entity {
    type: string
    sql: ${TABLE}.lineItem_LegalEntity ;;
  }

  dimension: line_item_line_item_description {
    type: string
    sql: ${TABLE}.lineItem_LineItemDescription ;;
  }

  dimension: line_item_line_item_type {
    type: string
    sql: ${TABLE}.lineItem_LineItemType ;;
  }

  dimension: line_item_net_unblended_cost {
    type: number
    sql: ${TABLE}.lineItem_NetUnblendedCost ;;
  }

  dimension: line_item_net_unblended_rate {
    type: string
    sql: ${TABLE}.lineItem_NetUnblendedRate ;;
  }

  dimension: line_item_normalization_factor {
    type: number
    sql: ${TABLE}.lineItem_NormalizationFactor ;;
  }

  dimension: line_item_normalized_usage_amount {
    type: number
    sql: ${TABLE}.lineItem_NormalizedUsageAmount ;;
  }

  dimension: line_item_operation {
    type: string
    sql: ${TABLE}.lineItem_Operation ;;
  }

  dimension: line_item_product_code {
    type: string
    sql: ${TABLE}.lineItem_ProductCode ;;
  }

  dimension: line_item_resource_id {
    type: string
    sql: ${TABLE}.lineItem_ResourceId ;;
  }

  dimension: line_item_tax_type {
    type: string
    sql: ${TABLE}.lineItem_TaxType ;;
  }

  dimension: line_item_unblended_cost {
    type: number
    sql: ${TABLE}.lineItem_UnblendedCost ;;
  }

  dimension: line_item_unblended_rate {
    type: string
    sql: ${TABLE}.lineItem_UnblendedRate ;;
  }

  dimension: line_item_usage_account_id {
    type: string
    sql: ${TABLE}.lineItem_UsageAccountId ;;
  }

  dimension: line_item_usage_amount {
    type: number
    sql: ${TABLE}.lineItem_UsageAmount ;;
  }

  dimension_group: line_item_usage_end {
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
    sql: ${TABLE}.lineItem_UsageEndDate ;;
  }

  dimension_group: line_item_usage_start {
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
    sql: ${TABLE}.lineItem_UsageStartDate ;;
  }

  dimension: line_item_usage_type {
    type: string
    sql: ${TABLE}.lineItem_UsageType ;;
  }

  dimension: pricing_currency {
    type: string
    sql: ${TABLE}.pricing_currency ;;
  }

  dimension: pricing_lease_contract_length {
    type: string
    sql: ${TABLE}.pricing_LeaseContractLength ;;
  }

  dimension: pricing_offering_class {
    type: string
    sql: ${TABLE}.pricing_OfferingClass ;;
  }

  dimension: pricing_public_on_demand_cost {
    type: string
    sql: ${TABLE}.pricing_publicOnDemandCost ;;
  }

  dimension: pricing_public_on_demand_rate {
    type: string
    sql: ${TABLE}.pricing_publicOnDemandRate ;;
  }

  dimension: pricing_purchase_option {
    type: string
    sql: ${TABLE}.pricing_PurchaseOption ;;
  }

  dimension: pricing_rate_code {
    type: string
    sql: ${TABLE}.pricing_RateCode ;;
  }

  dimension: pricing_rate_id {
    type: string
    sql: ${TABLE}.pricing_RateId ;;
  }

  dimension: pricing_term {
    type: string
    sql: ${TABLE}.pricing_term ;;
  }

  dimension: pricing_unit {
    type: string
    sql: ${TABLE}.pricing_unit ;;
  }

  dimension: product_ {
    type: string
    sql: ${TABLE}.product_ ;;
  }

  dimension: product_access_type {
    type: string
    sql: ${TABLE}.product_accessType ;;
  }

  dimension: product_account_assistance {
    type: string
    sql: ${TABLE}.product_accountAssistance ;;
  }

  dimension: product_alarm_type {
    type: string
    sql: ${TABLE}.product_alarmType ;;
  }

  dimension: product_architectural_review {
    type: string
    sql: ${TABLE}.product_architecturalReview ;;
  }

  dimension: product_architecture_support {
    type: string
    sql: ${TABLE}.product_architectureSupport ;;
  }

  dimension: product_attachment_type {
    type: string
    sql: ${TABLE}.product_attachmentType ;;
  }

  dimension: product_availability {
    type: string
    sql: ${TABLE}.product_availability ;;
  }

  dimension: product_availability_zone {
    type: string
    sql: ${TABLE}.product_availabilityZone ;;
  }

  dimension: product_backupservice {
    type: string
    sql: ${TABLE}.product_backupservice ;;
  }

  dimension: product_best_practices {
    type: string
    sql: ${TABLE}.product_bestPractices ;;
  }

  dimension: product_broker_engine {
    type: string
    sql: ${TABLE}.product_brokerEngine ;;
  }

  dimension: product_cache_engine {
    type: string
    sql: ${TABLE}.product_cacheEngine ;;
  }

  dimension: product_cache_type {
    type: string
    sql: ${TABLE}.product_cacheType ;;
  }

  dimension: product_capacity {
    type: string
    sql: ${TABLE}.product_capacity ;;
  }

  dimension: product_capacitystatus {
    type: string
    sql: ${TABLE}.product_capacitystatus ;;
  }

  dimension: product_case_severityresponse_times {
    type: string
    sql: ${TABLE}.product_caseSeverityresponseTimes ;;
  }

  dimension: product_ci_type {
    type: string
    sql: ${TABLE}.product_ciType ;;
  }

  dimension: product_classicnetworkingsupport {
    type: string
    sql: ${TABLE}.product_classicnetworkingsupport ;;
  }

  dimension: product_clock_speed {
    type: string
    sql: ${TABLE}.product_clockSpeed ;;
  }

  dimension: product_component {
    type: string
    sql: ${TABLE}.product_component ;;
  }

  dimension: product_compute_family {
    type: string
    sql: ${TABLE}.product_computeFamily ;;
  }

  dimension: product_compute_type {
    type: string
    sql: ${TABLE}.product_computeType ;;
  }

  dimension: product_connection_type {
    type: string
    sql: ${TABLE}.product_connectionType ;;
  }

  dimension: product_content_type {
    type: string
    sql: ${TABLE}.product_contentType ;;
  }

  dimension: product_cputype {
    type: string
    sql: ${TABLE}.product_cputype ;;
  }

  dimension: product_current_generation {
    type: string
    sql: ${TABLE}.product_currentGeneration ;;
  }

  dimension: product_customer_service_and_communities {
    type: string
    sql: ${TABLE}.product_customerServiceAndCommunities ;;
  }

  dimension: product_data {
    type: string
    sql: ${TABLE}.product_data ;;
  }

  dimension: product_database_edition {
    type: string
    sql: ${TABLE}.product_databaseEdition ;;
  }

  dimension: product_database_engine {
    type: string
    sql: ${TABLE}.product_databaseEngine ;;
  }

  dimension: product_datatransferout {
    type: string
    sql: ${TABLE}.product_datatransferout ;;
  }

  dimension: product_dedicated_ebs_throughput {
    type: string
    sql: ${TABLE}.product_dedicatedEbsThroughput ;;
  }

  dimension: product_deployment_option {
    type: string
    sql: ${TABLE}.product_deploymentOption ;;
  }

  dimension: product_describes {
    type: string
    sql: ${TABLE}.product_describes ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }

  dimension: product_direct_connect_location {
    type: string
    sql: ${TABLE}.product_directConnectLocation ;;
  }

  dimension: product_directory_size {
    type: string
    sql: ${TABLE}.product_directorySize ;;
  }

  dimension: product_directory_type {
    type: string
    sql: ${TABLE}.product_directoryType ;;
  }

  dimension: product_directory_type_description {
    type: string
    sql: ${TABLE}.product_directoryTypeDescription ;;
  }

  dimension: product_durability {
    type: string
    sql: ${TABLE}.product_durability ;;
  }

  dimension: product_ecu {
    type: string
    sql: ${TABLE}.product_ecu ;;
  }

  dimension: product_edition {
    type: string
    sql: ${TABLE}.product_edition ;;
  }

  dimension: product_endpoint {
    type: string
    sql: ${TABLE}.product_endpoint ;;
  }

  dimension: product_endpoint_type {
    type: string
    sql: ${TABLE}.product_endpointType ;;
  }

  dimension: product_engine_code {
    type: string
    sql: ${TABLE}.product_engineCode ;;
  }

  dimension: product_enhanced_networking_support {
    type: string
    sql: ${TABLE}.product_enhancedNetworkingSupport ;;
  }

  dimension: product_enhanced_networking_supported {
    type: string
    sql: ${TABLE}.product_enhancedNetworkingSupported ;;
  }

  dimension: product_event_type {
    type: string
    sql: ${TABLE}.product_eventType ;;
  }

  dimension: product_fee_code {
    type: string
    sql: ${TABLE}.product_feeCode ;;
  }

  dimension: product_fee_description {
    type: string
    sql: ${TABLE}.product_feeDescription ;;
  }

  dimension: product_file_system_type {
    type: string
    sql: ${TABLE}.product_fileSystemType ;;
  }

  dimension: product_free_query_types {
    type: string
    sql: ${TABLE}.product_freeQueryTypes ;;
  }

  dimension: product_from_location {
    type: string
    sql: ${TABLE}.product_fromLocation ;;
  }

  dimension: product_from_location_type {
    type: string
    sql: ${TABLE}.product_fromLocationType ;;
  }

  dimension: product_from_region_code {
    type: string
    sql: ${TABLE}.product_fromRegionCode ;;
  }

  dimension: product_georegioncode {
    type: string
    sql: ${TABLE}.product_georegioncode ;;
  }

  dimension: product_gets {
    type: string
    sql: ${TABLE}.product_gets ;;
  }

  dimension: product_gpu {
    type: string
    sql: ${TABLE}.product_gpu ;;
  }

  dimension: product_gpu_memory {
    type: string
    sql: ${TABLE}.product_gpuMemory ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}.product_group ;;
  }

  dimension: product_group_description {
    type: string
    sql: ${TABLE}.product_groupDescription ;;
  }

  dimension: product_included_services {
    type: string
    sql: ${TABLE}.product_includedServices ;;
  }

  dimension: product_insightstype {
    type: string
    sql: ${TABLE}.product_insightstype ;;
  }

  dimension: product_instance_family {
    type: string
    sql: ${TABLE}.product_instanceFamily ;;
  }

  dimension: product_instance_name {
    type: string
    sql: ${TABLE}.product_instanceName ;;
  }

  dimension: product_instance_type {
    type: string
    sql: ${TABLE}.product_instanceType ;;
  }

  dimension: product_instance_type_family {
    type: string
    sql: ${TABLE}.product_instanceTypeFamily ;;
  }

  dimension: product_intel_avx2_available {
    type: string
    sql: ${TABLE}.product_intelAvx2Available ;;
  }

  dimension: product_intel_avx_available {
    type: string
    sql: ${TABLE}.product_intelAvxAvailable ;;
  }

  dimension: product_intel_turbo_available {
    type: string
    sql: ${TABLE}.product_intelTurboAvailable ;;
  }

  dimension: product_io {
    type: string
    sql: ${TABLE}.product_io ;;
  }

  dimension: product_launch_support {
    type: string
    sql: ${TABLE}.product_launchSupport ;;
  }

  dimension: product_license_model {
    type: string
    sql: ${TABLE}.product_licenseModel ;;
  }

  dimension: product_location {
    type: string
    sql: ${TABLE}.product_location ;;
  }

  dimension: product_location_type {
    type: string
    sql: ${TABLE}.product_locationType ;;
  }

  dimension: product_logs_destination {
    type: string
    sql: ${TABLE}.product_logsDestination ;;
  }

  dimension: product_marketoption {
    type: string
    sql: ${TABLE}.product_marketoption ;;
  }

  dimension: product_max_iops_burst_performance {
    type: string
    sql: ${TABLE}.product_maxIopsBurstPerformance ;;
  }

  dimension: product_max_iopsvolume {
    type: string
    sql: ${TABLE}.product_maxIopsvolume ;;
  }

  dimension: product_max_throughputvolume {
    type: string
    sql: ${TABLE}.product_maxThroughputvolume ;;
  }

  dimension: product_max_volume_size {
    type: string
    sql: ${TABLE}.product_maxVolumeSize ;;
  }

  dimension: product_maximum_extended_storage {
    type: string
    sql: ${TABLE}.product_maximumExtendedStorage ;;
  }

  dimension: product_memory {
    type: string
    sql: ${TABLE}.product_memory ;;
  }

  dimension: product_memory_gib {
    type: string
    sql: ${TABLE}.product_memoryGib ;;
  }

  dimension: product_memorytype {
    type: string
    sql: ${TABLE}.product_memorytype ;;
  }

  dimension: product_message_delivery_frequency {
    type: string
    sql: ${TABLE}.product_messageDeliveryFrequency ;;
  }

  dimension: product_message_delivery_order {
    type: string
    sql: ${TABLE}.product_messageDeliveryOrder ;;
  }

  dimension: product_min_volume_size {
    type: string
    sql: ${TABLE}.product_minVolumeSize ;;
  }

  dimension: product_network_performance {
    type: string
    sql: ${TABLE}.product_networkPerformance ;;
  }

  dimension: product_normalization_size_factor {
    type: string
    sql: ${TABLE}.product_normalizationSizeFactor ;;
  }

  dimension: product_operating_system {
    type: string
    sql: ${TABLE}.product_operatingSystem ;;
  }

  dimension: product_operation {
    type: string
    sql: ${TABLE}.product_operation ;;
  }

  dimension: product_operations_support {
    type: string
    sql: ${TABLE}.product_operationsSupport ;;
  }

  dimension: product_ops_items {
    type: string
    sql: ${TABLE}.product_opsItems ;;
  }

  dimension: product_origin {
    type: string
    sql: ${TABLE}.product_origin ;;
  }

  dimension: product_physical_cpu {
    type: string
    sql: ${TABLE}.product_physicalCpu ;;
  }

  dimension: product_physical_gpu {
    type: string
    sql: ${TABLE}.product_physicalGpu ;;
  }

  dimension: product_physical_processor {
    type: string
    sql: ${TABLE}.product_physicalProcessor ;;
  }

  dimension: product_platoclassificationtype {
    type: string
    sql: ${TABLE}.product_platoclassificationtype ;;
  }

  dimension: product_platoinstancename {
    type: string
    sql: ${TABLE}.product_platoinstancename ;;
  }

  dimension: product_platoinstancetype {
    type: string
    sql: ${TABLE}.product_platoinstancetype ;;
  }

  dimension: product_platopricingtype {
    type: string
    sql: ${TABLE}.product_platopricingtype ;;
  }

  dimension: product_platoprotocoltype {
    type: string
    sql: ${TABLE}.product_platoprotocoltype ;;
  }

  dimension: product_platostoragename {
    type: string
    sql: ${TABLE}.product_platostoragename ;;
  }

  dimension: product_platostoragetype {
    type: string
    sql: ${TABLE}.product_platostoragetype ;;
  }

  dimension: product_platotrafficdirection {
    type: string
    sql: ${TABLE}.product_platotrafficdirection ;;
  }

  dimension: product_platotransfertype {
    type: string
    sql: ${TABLE}.product_platotransfertype ;;
  }

  dimension: product_platousagetype {
    type: string
    sql: ${TABLE}.product_platousagetype ;;
  }

  dimension: product_platovolumetype {
    type: string
    sql: ${TABLE}.product_platovolumetype ;;
  }

  dimension: product_port_speed {
    type: string
    sql: ${TABLE}.product_portSpeed ;;
  }

  dimension: product_pre_installed_sw {
    type: string
    sql: ${TABLE}.product_preInstalledSw ;;
  }

  dimension: product_pricing_unit {
    type: string
    sql: ${TABLE}.product_pricingUnit ;;
  }

  dimension: product_proactive_guidance {
    type: string
    sql: ${TABLE}.product_proactiveGuidance ;;
  }

  dimension: product_processor_architecture {
    type: string
    sql: ${TABLE}.product_processorArchitecture ;;
  }

  dimension: product_processor_features {
    type: string
    sql: ${TABLE}.product_processorFeatures ;;
  }

  dimension: product_product_family {
    type: string
    sql: ${TABLE}.product_productFamily ;;
  }

  dimension: product_product_name {
    type: string
    sql: ${TABLE}.product_ProductName ;;
  }

  dimension: product_programmatic_case_management {
    type: string
    sql: ${TABLE}.product_programmaticCaseManagement ;;
  }

  dimension: product_provisioned {
    type: string
    sql: ${TABLE}.product_provisioned ;;
  }

  dimension: product_queue_type {
    type: string
    sql: ${TABLE}.product_queueType ;;
  }

  dimension: product_recipient {
    type: string
    sql: ${TABLE}.product_recipient ;;
  }

  dimension: product_region {
    type: string
    sql: ${TABLE}.product_region ;;
  }

  dimension: product_region_code {
    type: string
    sql: ${TABLE}.product_regionCode ;;
  }

  dimension: product_request_description {
    type: string
    sql: ${TABLE}.product_requestDescription ;;
  }

  dimension: product_request_type {
    type: string
    sql: ${TABLE}.product_requestType ;;
  }

  dimension: product_routing_target {
    type: string
    sql: ${TABLE}.product_routingTarget ;;
  }

  dimension: product_routing_type {
    type: string
    sql: ${TABLE}.product_routingType ;;
  }

  dimension: product_servicecode {
    type: string
    sql: ${TABLE}.product_servicecode ;;
  }

  dimension: product_servicename {
    type: string
    sql: ${TABLE}.product_servicename ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.product_sku ;;
  }

  dimension: product_software_type {
    type: string
    sql: ${TABLE}.product_softwareType ;;
  }

  dimension: product_standard_storage_retention_included {
    type: string
    sql: ${TABLE}.product_standardStorageRetentionIncluded ;;
  }

  dimension: product_steps {
    type: string
    sql: ${TABLE}.product_steps ;;
  }

  dimension: product_storage {
    type: string
    sql: ${TABLE}.product_storage ;;
  }

  dimension: product_storage_class {
    type: string
    sql: ${TABLE}.product_storageClass ;;
  }

  dimension: product_storage_family {
    type: string
    sql: ${TABLE}.product_storageFamily ;;
  }

  dimension: product_storage_media {
    type: string
    sql: ${TABLE}.product_storageMedia ;;
  }

  dimension: product_storage_type {
    type: string
    sql: ${TABLE}.product_storageType ;;
  }

  dimension: product_subscription_type {
    type: string
    sql: ${TABLE}.product_subscriptionType ;;
  }

  dimension: product_technical_support {
    type: string
    sql: ${TABLE}.product_technicalSupport ;;
  }

  dimension: product_tenancy {
    type: string
    sql: ${TABLE}.product_tenancy ;;
  }

  dimension: product_thirdparty_software_support {
    type: string
    sql: ${TABLE}.product_thirdpartySoftwareSupport ;;
  }

  dimension: product_throughput_capacity {
    type: string
    sql: ${TABLE}.product_throughputCapacity ;;
  }

  dimension: product_tiertype {
    type: string
    sql: ${TABLE}.product_tiertype ;;
  }

  dimension: product_to_location {
    type: string
    sql: ${TABLE}.product_toLocation ;;
  }

  dimension: product_to_location_type {
    type: string
    sql: ${TABLE}.product_toLocationType ;;
  }

  dimension: product_to_region_code {
    type: string
    sql: ${TABLE}.product_toRegionCode ;;
  }

  dimension: product_training {
    type: string
    sql: ${TABLE}.product_training ;;
  }

  dimension: product_transfer_type {
    type: string
    sql: ${TABLE}.product_transferType ;;
  }

  dimension: product_updates {
    type: string
    sql: ${TABLE}.product_updates ;;
  }

  dimension: product_usage_family {
    type: string
    sql: ${TABLE}.product_usageFamily ;;
  }

  dimension: product_usagetype {
    type: string
    sql: ${TABLE}.product_usagetype ;;
  }

  dimension: product_vcpu {
    type: string
    sql: ${TABLE}.product_vcpu ;;
  }

  dimension: product_version {
    type: string
    sql: ${TABLE}.product_version ;;
  }

  dimension: product_virtual_interface_type {
    type: string
    sql: ${TABLE}.product_virtualInterfaceType ;;
  }

  dimension: product_volume_api_name {
    type: string
    sql: ${TABLE}.product_volumeApiName ;;
  }

  dimension: product_volume_type {
    type: string
    sql: ${TABLE}.product_volumeType ;;
  }

  dimension: product_vpcnetworkingsupport {
    type: string
    sql: ${TABLE}.product_vpcnetworkingsupport ;;
  }

  dimension: product_who_can_open_cases {
    type: string
    sql: ${TABLE}.product_whoCanOpenCases ;;
  }

  dimension: reservation_amortized_upfront_cost_for_usage {
    type: string
    sql: ${TABLE}.reservation_AmortizedUpfrontCostForUsage ;;
  }

  dimension: reservation_amortized_upfront_fee_for_billing_period {
    type: number
    sql: ${TABLE}.reservation_AmortizedUpfrontFeeForBillingPeriod ;;
  }

  dimension: reservation_effective_cost {
    type: number
    sql: ${TABLE}.reservation_EffectiveCost ;;
  }

  dimension: reservation_end_time {
    type: string
    sql: ${TABLE}.reservation_EndTime ;;
  }

  dimension: reservation_modification_status {
    type: string
    sql: ${TABLE}.reservation_ModificationStatus ;;
  }

  dimension: reservation_net_amortized_upfront_cost_for_usage {
    type: string
    sql: ${TABLE}.reservation_NetAmortizedUpfrontCostForUsage ;;
  }

  dimension: reservation_net_amortized_upfront_fee_for_billing_period {
    type: number
    sql: ${TABLE}.reservation_NetAmortizedUpfrontFeeForBillingPeriod ;;
  }

  dimension: reservation_net_effective_cost {
    type: number
    sql: ${TABLE}.reservation_NetEffectiveCost ;;
  }

  dimension: reservation_net_recurring_fee_for_usage {
    type: number
    sql: ${TABLE}.reservation_NetRecurringFeeForUsage ;;
  }

  dimension: reservation_net_unused_amortized_upfront_fee_for_billing_period {
    type: number
    sql: ${TABLE}.reservation_NetUnusedAmortizedUpfrontFeeForBillingPeriod ;;
  }

  dimension: reservation_net_unused_recurring_fee {
    type: number
    sql: ${TABLE}.reservation_NetUnusedRecurringFee ;;
  }

  dimension: reservation_net_upfront_value {
    type: number
    sql: ${TABLE}.reservation_NetUpfrontValue ;;
  }

  dimension: reservation_normalized_units_per_reservation {
    type: string
    sql: ${TABLE}.reservation_NormalizedUnitsPerReservation ;;
  }

  dimension: reservation_number_of_reservations {
    type: string
    sql: ${TABLE}.reservation_NumberOfReservations ;;
  }

  dimension: reservation_recurring_fee_for_usage {
    type: number
    sql: ${TABLE}.reservation_RecurringFeeForUsage ;;
  }

  dimension: reservation_reservation_arn {
    type: string
    sql: ${TABLE}.reservation_ReservationARN ;;
  }

  dimension: reservation_start_time {
    type: string
    sql: ${TABLE}.reservation_StartTime ;;
  }

  dimension: reservation_subscription_id {
    type: string
    sql: ${TABLE}.reservation_SubscriptionId ;;
  }

  dimension: reservation_total_reserved_normalized_units {
    type: string
    sql: ${TABLE}.reservation_TotalReservedNormalizedUnits ;;
  }

  dimension: reservation_total_reserved_units {
    type: string
    sql: ${TABLE}.reservation_TotalReservedUnits ;;
  }

  dimension: reservation_units_per_reservation {
    type: string
    sql: ${TABLE}.reservation_UnitsPerReservation ;;
  }

  dimension: reservation_unused_amortized_upfront_fee_for_billing_period {
    type: number
    sql: ${TABLE}.reservation_UnusedAmortizedUpfrontFeeForBillingPeriod ;;
  }

  dimension: reservation_unused_normalized_unit_quantity {
    type: number
    sql: ${TABLE}.reservation_UnusedNormalizedUnitQuantity ;;
  }

  dimension: reservation_unused_quantity {
    type: number
    sql: ${TABLE}.reservation_UnusedQuantity ;;
  }

  dimension: reservation_unused_recurring_fee {
    type: number
    sql: ${TABLE}.reservation_UnusedRecurringFee ;;
  }

  dimension: reservation_upfront_value {
    type: number
    sql: ${TABLE}.reservation_UpfrontValue ;;
  }

  dimension: resource_tags_aws_cloudformation_stack_name {
    type: string
    sql: ${TABLE}.resourceTags_aws_cloudformation_stack_name ;;
  }

  dimension: resource_tags_sr_ {
    type: string
    sql: ${TABLE}.resourceTags_sr_ ;;
  }

  dimension: resource_tags_user_ {
    type: string
    sql: ${TABLE}.resourceTags_user_ ;;
  }

  dimension: resource_tags_user_customer {
    type: string
    sql: ${TABLE}.resourceTags_user_Customer ;;
  }

  dimension: resource_tags_user_environment {
    type: string
    sql: ${TABLE}.resourceTags_user_Environment ;;
  }

  dimension: resource_tags_user_global_project {
    type: string
    sql: ${TABLE}.resourceTags_user_GlobalProject ;;
  }

  dimension: resource_tags_user_t {
    type: string
    sql: ${TABLE}.resourceTags_user_T ;;
  }

  dimension: resource_tags_user_t_id {
    type: string
    sql: ${TABLE}.resourceTags_user_T_ID ;;
  }

  dimension: resource_tags_user_tim {
    type: string
    sql: ${TABLE}.resourceTags_user_TIM ;;
  }

  dimension: resource_tags_user_tim_id {
    type: string
    sql: ${TABLE}.resourceTags_user_TIM_ID ;;
  }

  dimension: resource_tags_user_tm {
    type: string
    sql: ${TABLE}.resourceTags_user_TM ;;
  }

  dimension: savings_plan_amortized_upfront_commitment_for_billing_period {
    type: string
    sql: ${TABLE}.savingsPlan_AmortizedUpfrontCommitmentForBillingPeriod ;;
  }

  dimension: savings_plan_net_amortized_upfront_commitment_for_billing_period {
    type: string
    sql: ${TABLE}.savingsPlan_NetAmortizedUpfrontCommitmentForBillingPeriod ;;
  }

  dimension: savings_plan_net_recurring_commitment_for_billing_period {
    type: string
    sql: ${TABLE}.savingsPlan_NetRecurringCommitmentForBillingPeriod ;;
  }

  dimension: savings_plan_net_savings_plan_effective_cost {
    type: string
    sql: ${TABLE}.savingsPlan_NetSavingsPlanEffectiveCost ;;
  }

  dimension: savings_plan_recurring_commitment_for_billing_period {
    type: string
    sql: ${TABLE}.savingsPlan_RecurringCommitmentForBillingPeriod ;;
  }

  dimension: savings_plan_savings_plan_arn {
    type: string
    sql: ${TABLE}.savingsPlan_SavingsPlanARN ;;
  }

  dimension: savings_plan_savings_plan_effective_cost {
    type: number
    sql: ${TABLE}.savingsPlan_SavingsPlanEffectiveCost ;;
  }

  dimension: savings_plan_savings_plan_rate {
    type: number
    sql: ${TABLE}.savingsPlan_SavingsPlanRate ;;
  }

  dimension: savings_plan_total_commitment_to_date {
    type: number
    sql: ${TABLE}.savingsPlan_TotalCommitmentToDate ;;
  }

  dimension: savings_plan_used_commitment {
    type: number
    sql: ${TABLE}.savingsPlan_UsedCommitment ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product_product_name,
      product_volume_api_name,
      product_platostoragename,
      product_instance_name,
      product_servicename,
      resource_tags_aws_cloudformation_stack_name,
      product_platoinstancename
    ]
  }
}
