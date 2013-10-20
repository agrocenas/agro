<?php ?>

{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("posts/index", "&larr; Voltar") }}
    </li>
    <li class="pull-right">
        {{ link_to("posts/new", "Postar", "class": "btn btn-success") }}
    </li>
</ul>
<br/>
<br/>
{% for post in page.items %}
<!-- User line -->
<div class="post">
    <!-- post user -->
    <div class="post-user">
        <div style="width: 10%">                    
            {{ image("/../public/img/default-user.png") }}
        </div>
        <div style="width: 20%">       
            {{ post.getUsers().name }}<br>
            #{{ post.id }}
        </div>
        <div style="width: 60%">   
            {{ post.description }}
        </div>
        <div style="width: 10%">
            {% if (post.active == 'Y' ) %} 
            <span class="label label-success" style="text-align: right">disponivel</span>
            {% else %} 
            <span class="label label-important" style="text-align: right">indisponivel</span>
            {% endif %}
        </div>
    </div>
    <!-- post product -->
    <div class ="post-product">
        <div style="width: 10%" >                    
            {{ image("/../public/img/carrot.jpg") }}
        </div>
        <div style="width: 25%">
            {{ post.getProducts().name }}<br>
            {{ post.getProducts().price }}
        </div>
        <div style="width: 55%">
            <span></span>
        </div>
        <div style="width: 10%">
            {{ post.post_date }}
        </div>
    </div>
    <!--product comments -->
    <div class="post-comment">
        <div style="width: 10%" >                    
            {{ image("/../public/img/default-user.png") }}
        </div>
        <div style="width: 20%">
            {{ post.getComments().title }}<br>
            {{ post.getComments().description }}
        </div>
        <div style="width: 30%">
            <span/>
        </div>
        <div style="width: 10%">
            {{ post.getComments().date }}
        </div>   
    </div>
    <br/>
    <hr>
</div>
{% if loop.last %}
{{ link_to("posts/search?page=" ~ page.previous, '<i class="icon-step-backward"></i>', "class": "btn") }}
{{ link_to("posts/search?page=" ~ page.next, '<i class="icon-step-forward"></i>', "class": "btn") }}

{% endif %}

{% else %}
Sem novidades...
{% endfor %}




