<?php ?>
{{ content() }}

<div class="hero-unit">
    <h1>Bem Vindo ao AGROCENAS</h1>
    <p>AGROCENAS é uma cena revolucionaria para ligar quem produz quem consome vegetais.
    <p>Partilha o que produzes e compra o que precisas</p>
    <p>{{ link_to('session/register', 'Regista-te gratis &raquo;', 'class': 'btn btn-primary btn-large btn-success') }}</p>
</div>

<div class="row">
    <div class="span4">
        <h2>{{ link_to('posts/new', 'Vende o excesso') }}</h2>
        <p>
        <p>
        <p>Com o AGROCENAS é tao simples como registares-te e anunciar o que tens para vender em que zona do país. depois é so esperar pelos contactos. Tao simples quanto isso. </p>
    </div>
    <div class="span4">
        <h2>{{ link_to('posts/search', 'Vê as ofertas activas') }}</h2>
        <p>
        <p>
        <p>Tens um dashboard onde tens acesso ás ultimas ofertas lancadas, ou se preferires ao teu gosto.</p>
    </div>
    <div class="span4">
        <h2>Convida para a comunidade</h2>
        <p>
        <p>
        <p>Convida quem achas que faz falta no mercado alternativo de partilha de bens alimentares. Podes enviar convites YUUPPII! </p>
    </div>
</div>
