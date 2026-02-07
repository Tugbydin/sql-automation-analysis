
WITH daily AS (
    SELECT
        CAST(transaction_time AS DATE) AS day,
        SUM(transaction_amount) AS daily_total
    FROM transactions
    GROUP BY CAST(transaction_time AS DATE)
),
with_avg AS (
    SELECT
        day,
        daily_total,
        AVG(daily_total) OVER (
            ORDER BY day
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ) AS avg_3_day
    FROM daily
)
SELECT
    day,
    daily_total,
    avg_3_day
FROM with_avg
WHERE day = DATE '2021-01-15';
