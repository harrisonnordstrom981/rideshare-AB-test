CREATE OR REPLACE VIEW `rideshare-483918.rideshare_ab_test.vw_rideshare_clean` AS
SELECT
  ride_id,
  city,
  pickup_zone,

  -- Experiment assignment
  CASE
    WHEN experiment_group IN ('A', 'B') THEN experiment_group
    ELSE 'UNKNOWN'
  END AS experiment_group_clean,

  request_ts,
  pickup_ts,
  dropoff_ts,

  pickup_lat,
  pickup_lon,
  dropoff_lat,
  dropoff_lon,

  hour_of_day,
  day_of_week,
  is_weekend,
  is_peak_hour,

  estimated_wait_min,
  actual_wait_min,
  trip_distance_miles,
  trip_duration_min,

  base_fare,
  surge_multiplier,
  discount_applied,
  final_fare,
  tip_amount,
  total_amount,

  payment_type,

  -- Completion indicator
  ride_completed,

  request_date,
  request_year,
  request_month,
  request_week

FROM `rideshare-483918.rideshare_ab_test.raw_rideshare_request`;
