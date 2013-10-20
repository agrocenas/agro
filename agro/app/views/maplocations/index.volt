<?php ?>

{{ content() }}

{{ javascript_include("http://maps.googleapis.com/maps/api/js?sensor=false",false) }}

<div class="page-header" >
    <h2>Maps</h2>
    <br>
    <br>
    <p>Os pontos a vermelho representam os produtores, a verde os utilizadores.</p>
    <br>
    <input type="button" onclick="Map.loadMap()" class="btn-success" value="Mostar mapa"/>
</div>

<div>
    
    <div id="map" style="width: 100%; height: 600px;"  onplay="Map.loadMap()" ></div>   
  
</div>
