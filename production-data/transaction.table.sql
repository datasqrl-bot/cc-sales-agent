CREATE TABLE Transaction (
     WATERMARK FOR `time` AS `time` - INTERVAL '1' SECOND
) WITH (
      'connector' = 'kafka',
      'properties.bootstrap.servers' = '${PROPERTIES_BOOTSTRAP_SERVERS}',
      'properties.group.id' = '${PROPERTIES_GROUP_ID}',
      'scan.startup.mode' = 'group-offsets',
      'properties.auto.offset.reset' = 'earliest',
      'value.format' = 'flexible-json',
      'topic' = 'example_cc_sales_agent_transaction'
      );