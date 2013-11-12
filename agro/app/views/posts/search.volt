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
        <div class="divline-left" style="width: 10%">                    
            {{ image("/../public/img/default-user.png") }}
        </div>
        <div class="divline-left" style="width: 20%">       
            {{ post.getUsers().name }}<br>
            #{{ post.id }}
        </div>
        <div class="divline-left" style="width: 60%">   
            {{ post.description }}
        </div>
        <div class="divline-rigth" style="width: 10%">
            {% if (post.active == 'Y' ) %} 
            <span class="label label-success">disponivel</span>
            {% else %} 
            <span class="label label-important">indisponivel</span>
            {% endif %}
        </div>
    </div>
    <!-- post product -->
    <div class ="post-product">
        <div class="divline-left" style="width: 10%" >                    
            {{ image("/../public/img/carrot.jpg") }}
        </div>
        <div class="divline-left" style="width: 25%">
            {{ post.getProducts().name }}<br>
            {{ post.getProducts().price }}
        </div>
        <div class="divline-left" style="width: 55%">
            <span></span>
        </div>
        <div class="divline-rigth text-size-small" style="width: 10%">
            {{ post.date }}
        </div>
    </div>
    <!--post comments -->
    {% for comment in post.getComments() %}
        <div class="post-comment">
            <div class="divline-left" style="width: 10%" >                    
                {{ image("/../public/img/default-user.png") }}
            </div>
            <div class="divline-left" style="width: 20%">
                #{{ comment.id }} <br>
                {{ comment.type }}
            </div>
            <div class="divline-left" style="width: 60%">
                <!--<span/>-->
                {{ comment.title }}<br>
                {{ comment.description }}
            </div>
            <div class="divline-rigth text-size-small" style="width: 10%">
                {{ comment.date }}
            </div>   
        </div>
    {% endfor %}
</div>
<hr>
{% if loop.last %}
{{ link_to("posts/search?page=" ~ page.previous, '<i class="icon-step-backward"></i>', "class": "btn") }}
{{ link_to("posts/search?page=" ~ page.next, '<i class="icon-step-forward"></i>', "class": "btn") }}

{% endif %}

{% else %}
Sem novidades...
{% endfor %}




