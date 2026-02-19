{% macro dollars_per_mile(fare, miles) %}
    case 
        when {{ miles }} = 0 or {{ miles }} is null then null
        else round({{ fare }} / {{ miles }}, 2)
    end
{% endmacro %}