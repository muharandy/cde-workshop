CREATE EXTERNAL TABLE `dev_evolv_raw`.`atm_trx`(
  `timestamp_r` timestamp, 
  `trx_date` string, 
  `trx_hour` tinyint, 
  `a_party` string, 
  `account_owner` string, 
  `msisdn` string, 
  `pre_post_flag` tinyint, 
  `subs_id` string, 
  `lacci_id` string, 
  `lac` string, 
  `ci` string, 
  `node` string, 
  `area_sales` string, 
  `region_sales` string, 
  `branch` string, 
  `subbranch` string, 
  `cluster_sales` string, 
  `provinsi` string, 
  `kabupaten` string, 
  `kecamatan` string, 
  `kelurahan` string, 
  `lacci_closing_flag` tinyint, 
  `cust_type_desc` string, 
  `cust_subtype_desc` string, 
  `price_plan_id` int, 
  `network_activity_id` string, 
  `allowance_consumed_revenue` string, 
  `dimension_index` string, 
  `product_id` string, 
  `transaction_id` string, 
  `channel_id` string, 
  `timestamp_ifrs` string, 
  `last_5_digit_msisdn` string, 
  `sigma_business_id` string, 
  `sigma_rules_id` string, 
  `brand_ifrs` string, 
  `l1` string, 
  `l2_l3` string, 
  `logical_offer_id` string, 
  `item_id` string, 
  `uom` string, 
  `rate_per_unit` decimal(20,4), 
  `offer_quota` bigint, 
  `event_allowance_consumed` bigint, 
  `remaining_quota` bigint, 
  `utilized_quota` bigint, 
  `historical_quota` bigint, 
  `remaining_historical_quota` bigint, 
  `effective_date` string, 
  `expiration_date` string, 
  `allowance_cost` decimal(38,15), 
  `earned_revenue` decimal(38,15), 
  `unearned_revenue` decimal(38,15), 
  `brand` string, 
  `l1_payu` string, 
  `l2_service_type` string, 
  `l3_allowance_type` string, 
  `l4_product_category` string, 
  `l5_product` string, 
  `commercial_name` string, 
  `channel` string, 
  `validity` string, 
  `ifrs_ind_for_allowance_revenue` tinyint, 
  `ifrs_ind_for_vas_event` tinyint, 
  `itemized_bill_fee` bigint, 
  `unit_price` decimal(38,15), 
  `rev_per_usage` decimal(38,15), 
  `cp_name` string, 
  `daily_rate` decimal(38,15), 
  `actual_rev` decimal(38,15), 
  `deferred_rev` decimal(38,15), 
  `historical_unit_price` decimal(38,15), 
  `quota_to_rate` decimal(38,15), 
  `rev_per_usage_rollover` decimal(38,15), 
  `file_id` string, 
  `load_ts` timestamp, 
  `load_user` string, 
  `call_duration` int, 
  `site_name` string, 
  `total_volume` bigint, 
  `price_plan_name` string, 
  `service_filter` string, 
  `rating_group` string, 
  `rating_offer_id` bigint, 
  `region_hlr` string, 
  `city_hlr` string, 
  `cust_id` int, 
  `customer_sub_segment` string, 
  `sku` string, 
  `site_id` string, 
  `event_date` string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0007'
STORED AS TEXTFILE