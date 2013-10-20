
{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("suppliers/index", "&larr; Voltar") }}
    </li>
    <li class="pull-right">
        {{ link_to("suppliers/new", "Registar produtor", "class": "btn btn-primary") }}
    </li>
</ul>

{% for supplier in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Morada</th>
            <th>Cidade</th>
            <th> </th>
        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ supplier.id }}</td>
            <td>{{ supplier.name }}</td>
            <td>{{ supplier.telephone }}</td>
            <td>{{ supplier.address }}</td>
            <td>{{ supplier.city }}</td>
            <td width="5%">{{ link_to("suppliers/edit/" ~ supplier.id, '<i class="icon-pencil"></i>', "class": "btn") }}</td>
            <td width="5%">{{ link_to("suppliers/delete/" ~ supplier.id, '<i class="icon-remove"></i>', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="7" align="right">
                <div class="btn-group">
                    {{ link_to("suppliers/search", '<i class="icon-fast-backward"></i>', "class": "btn") }}
                    {{ link_to("suppliers/search?page=" ~ page.before, '<i class="icon-step-backward"></i>', "class": "btn ") }}
                    {{ link_to("suppliers/search?page=" ~ page.next, '<i class="icon-step-forward"></i>', "class": "btn") }}
                    {{ link_to("suppliers/search?page=" ~ page.last, '<i class="icon-fast-forward"></i>', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    Sem prudotores.
{% endfor %}