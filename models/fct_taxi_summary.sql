
select
    payment_type,
    company,
    count(unique_key) as total_trips,
    round(avg(trip_miles), 2) as avg_miles,
    round(avg(fare), 2) as avg_fare,
    round(sum(trip_total), 2) as total_revenue,
    {{ dollars_per_mile('avg(fare)', 'avg(trip_miles)') }} as avg_rate_per_mile
from {{ ref('stg_taxi_trips') }}
group by 1, 2