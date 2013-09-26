
<form method="post" action="{{ url("suppliers/save") }}">

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("suppliers", "&larr; Voltar") }}
    </li>
    <li class="pull-right">
        {{ submit_button("Guardar", "class": "btn btn-success") }}
    </li>
</ul>

{{ content() }}

<div class="center scaffold">
    <h2>Editar produtor</h2>

    {{ form.render("id") }}

    <div class="clearfix">
        <label for="name">Nome</label>
        {{ form.render("name") }}
    </div>

    <div class="clearfix">
        <label for="telephone">Telefone</label>
        {{ form.render("telephone") }}
    </div>

    <div class="clearfix">
        <label for="address">Morada</label>
        {{ form.render("address") }}
    </div>

    <div class="clearfix">
        <label for="city">Cidade</label>
        {{ form.render("city") }}
    </div>

    </form>
</div>
