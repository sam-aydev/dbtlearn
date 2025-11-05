{{
  config(
    materialized = 'view',
    )
}}

SELECT * FROM {{source('source', 'fact_sales') }}

{# SELECT * FROM dbt_learn.source.fact_sales #}