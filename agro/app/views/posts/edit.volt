<?php use Phalcon\Tag as Tag ?>

<form method="post" action="{{ url("posts/save") }}">

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("posts", "&larr; Voltar") }}
    </li>
    <li class="pull-right">
        {{ submit_button("Guardar", "class": "btn btn-success") }}
    </li>
</ul>

{{ content() }}

<div class="left scaffold">
    <h2>Editar post</h2>

<div class="clearfix">
        <label for="id">Id</label>
        {{ form.render("id") }}
    </div>
    


<div class="clearfix">
    <div>
        <label for="user">Por</label>
    </div>
    <div>
{{ form.render("user") }}
    </div>
</div>
    


<div class="clearfix">
        <label for="description">Em</label>
        {{ form.render("date") }}
    </div>
    

<div class="clearfix">
        <label for="product">Produto</label>
        {{form.render("product") }}
    </div>
    
<div class="clearfix">
        <label for="description">Descricao</label>
        {{ form.render("description") }}
    </div>

<div class="clearfix">
        <label for="active">Active</label>
        {{form.render("active") }}
    </div>
    
    </form>
</div>
