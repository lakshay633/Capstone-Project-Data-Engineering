{% macro profit(sell_price, cost_price) %}
    ({{ sell_price }} - {{ cost_price }})
{% endmacro %}

{% macro discount_percentage(mrp, sell_price) %}
    (({{ mrp }} - {{ sell_price }}) / {{ mrp }}) * 100
{% endmacro %}
