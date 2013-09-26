
{{ content() }}

<div class="profile left">
    {{ form('requests/profile', 'id': 'profileForm', 'onbeforesubmit': 'return false') }}
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
        <div class="clearfix">
            <input type="button" value="Update" class="btn btn-primary btn-large btn-info" onclick="Profile.validate()">
            &nbsp;
            {{ link_to('requests/index', 'Cancel') }}
        </div>
    </form>
</div>