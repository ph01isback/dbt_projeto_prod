{% macro generate_schame_name(custom_schema_name, node) -%}

        {%- set default_schema = target.schame -%}

        {%- if custom_schema_name is not none and target.name in('prod', 'samples','defer','non_critical') -%}

            {{ custom_schema_name | trim }}

        {%- else -%}

            {{ default_schema }}

        {%- endif -%}

{%- endmacro %}