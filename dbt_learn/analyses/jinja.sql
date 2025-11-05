{% set apples = ["Gala","Red Delicious","Fuji","Macintosh"] %}

{% for item in apples %}


    {% if item == "Macintosh" %}

        Interisting

    {% else %}

        {{ item }}

    {% endif %}


{% endfor %} 