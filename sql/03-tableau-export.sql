CREATE OR REPLACE TABLE `rideshare-483918.rideshare_ab_test.tbl_tableau_export` AS
SELECT
  ride_id,
  experiment_group_clean,
  trip_status_clean,
  ride_completed,
  realized_revenue,
  surge_multiplier,
  hour_of_day,
  day_of_week,
  is_weekend,
  pickup_lat,
  pickup_lon,
  request_date
FROM `rideshare-483918.rideshare_ab_test.vw_rideshare_ab_clean`;
