<?php ?>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
             <!-- {{ link_to('index/index', 'AGROCENAS', 'class': 'brand') }} -->
            <a class="brand" href="/agro/index.php">AGROCENAS</a>
            {{ elements.getMenu() }}
        </div>
    </div>
</div>

<div class="container">
    {{ content() }}
    <hr>
    <footer>
        <p>&copy; AGROCENAS 2013</p>
    </footer>
</div>
