select
    unique_key,
    taxi_id,
    trip_start_timestamp,
    trip_end_timestamp,
    trip_seconds,
    trip_miles,
    fare,
    tips,
    trip_total,
    payment_type,
    company
from `bigquery-public-data.chicago_taxi_trips.taxi_trips`
where trip_start_timestamp is not null
limit 1000

