
{{ content() }}

<div class="page-header">
    <h2>Regista-te em AGROCENAS</h2>
</div>

{{ form('session/register', 'id': 'registerForm', 'class': 'form-horizontal', 'onbeforesubmit': 'return false') }}
    <fieldset>
        <div class="control-group">
            <label class="control-label" for="name">Nome completo...</label>
            <div class="controls">
                {{ text_field('name', 'class': 'input-xlarge') }}
                <p class="help-block">(required)</p>
                <div class="alert" id="name_alert">
                    <strong>Aviso !</strong> Nome completo !
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="username">Username...</label>
            <div class="controls">
                {{ text_field('username', 'class': 'input-xlarge') }}
                <p class="help-block">(required)</p>
                <div class="alert" id="username_alert">
                    <strong>Aviso !</strong> Username !
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="email">Email...</label>
            <div class="controls">
                {{ text_field('email', 'class': 'input-xlarge') }}
                <p class="help-block">(required)</p>
                <div class="alert" id="email_alert">
                    <strong>Aviso !</strong> Email !
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="password">Password...</label>
            <div class="controls">
                {{ password_field('password', 'class': 'input-xlarge') }}
                <p class="help-block">(minimum 8 characters)</p>
                <div class="alert" id="password_alert">
                    <strong>Aviso !</strong> Uma que dê !
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="repeatPassword">Outra vez...</label>
            <div class="controls">
                {{ password_field('repeatPassword', 'class': 'input-xlarge') }}
                <div class="alert" id="repeatPassword_alert">
                    <strong>Aviso !</strong> Tem que ser igual !
                </div>
            </div>
        </div>
        <p>Ao aderir concordas com os termos...</p>
        <div class="form-actions">
            {{ submit_button('Register', 'class': 'btn btn-primary btn-large', 'onclick': 'return SignUp.validate();') }}
        </div>
    </fieldset>
</form>
