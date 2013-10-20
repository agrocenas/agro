<?php

 use Phalcon\Tag as Tag ?>
{{ content() }}

<div class="profile">
    {{ form('requests/profile', 'id': 'profileForm', 'onbeforesubmit': 'return false') }}
    <div class="row">
        <div class="span6">
            <div class="clearfix">
                <label for="name">Nome completo:</label>
                <div class="input">
                    {{ text_field("name", "size": "30", "class": "span6") }}
                    <div class="alert" id="name_alert">
                        <strong>Aviso!</strong> Nome completo !
                    </div>
                </div>
            </div>
            <div class="clearfix">
                <label for="email">Email :</label>
                <div class="input">
                    {{ text_field("email", "size": "30", "class": "span6") }}
                    <div class="alert" id="email_alert">
                        <strong>Aviso!</strong> Email !
                    </div>
                </div>
            </div>
        </div>
        <div class="span6">
            <span> </span>
        </div>
        <div class="span6">
            <div class="clearfix">
                <label for="lat">Latitude :</label>
                <div class="input">
                    {{ text_field("lat","size": "20", "class": "span6") }}
                </div>
                <div>
                    <div class="clearfix">
                        <label for="lng">Longitude :</label>
                        <div class="input">
                            {{ text_field("lng","size": "20", "class": "span6") }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br/>
    <div class="span6">
        <input type="button" value="Update" class="btn btn-primary btn-large btn-info" onclick="Profile.validate()">
        &nbsp;
        {{ link_to('requests/index', 'Cancel') }}
    </div>
    <br/>
</form>
</div>