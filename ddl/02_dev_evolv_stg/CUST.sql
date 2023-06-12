CREATE EXTERNAL TABLE dev_evolv_stg.`cust`(
`trx_date` string,
`regional` string,
`transaction_id` string,
`status` string,
`rules_id` string,
`sku` string,
`channel_transaction_id` string,
`channel` string,
`msisdn` string,
`adn` string,
`order_type` string,
`payment_method` string,
`purchase_mode` string,
`business_id` string,
`transaction_price` string,
`charge` string,
`non_usage_flag` string,
`commercial_name` string,
`quota_value` string,
`validity_period` string,
`validity_period_unit` string,
`ssp` string,
`alloc_tp` string,
`unit_price` string,
`ssp_rate` string,
`consumption_rate` string,
`ssp_consumption_rate` string,
`allowance_sub_type` string,
`network_profile_a_lac` string,
`network_profile_a_ci` string,
`network_profile_b_lac` string,
`network_profile_b_ci` string,
`allowances_descriptions` string,
`bank_code` string,
`quota_unit` string,
`disc_alloc_tp` string,
`disc_unit_price` string,
`unit_measurement` string,
`historical_quota` string,
`historical_unit_price` string,
`product_length` string,
`daily_price` string,
`proration_indicator` string,
`disc_duration` string,
`quota_name` string,
`bonus_apps_id` string,
`profile_name` string,
`file_id` string,
`load_ts` string,
`load_user` string)
PARTITIONED BY (
`event_date` string)
ROW FORMAT SERDE
'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'