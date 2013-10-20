
{{ content() }}

<div align="right">
    {{ link_to("suppliers/new", "Registar produtor", "class": "btn btn-primary") }}
</div>

<form method="post" action="{{ url("suppliers/search") }}">

<div class="left scaffold">

    <h2>Procurar produtores</h2>

    <div class="clearfix">
        <label for="id">Id</label>
        {{ form.render("id") }}
    </div>

    <div class="clearfix">
        <label for="name">Nome</label>
        {{ form.render("name") }}
    </div>

    <div class="clearfix">
        <label for="telephone">Telefone</label>
        {{ form.render("telephone") }}
    </div>

    <div class="clearfix">
        <label for="address">Endereco</label>
        {{ form.render("address") }}
    </div>

    <div class="clearfix">
        <label for="city">Cidade</label>
        {{ form.render("city") }}
    </div>

    <div class="clearfix">
        {{ submit_button("Search", "class": "btn btn-primary") }}
    </div>

</div>

</form>
