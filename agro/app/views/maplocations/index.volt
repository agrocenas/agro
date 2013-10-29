<?php ?>

{{ content() }}

{{ javascript_include("http://maps.googleapis.com/maps/api/js?sensor=true",false) }}

<div class="page-header" >
    <h2>Maps</h2>
    <p>Os pontos a vermelho representam os produtores, a verde os utilizadores.</p>
    <br>
    <input type="button" onclick="Map.loadMap()" class="btn-success" value="Mostar mapa"/>
</div>

<div>
    
    <div id="map" onplay="Map.loadMap()" ></div>   
  
</div>
