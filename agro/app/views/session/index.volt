
{{ content() }}

<div class="login-or-signup">
    <div class="row">

        <div class="span6">
            <div class="page-header">
                <h2>Log In</h2>
            </div>
            {{ form('session/start', 'class': 'form-inline') }}
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="email">Username/Email</label>
                        <div class="controls">
                            {{ text_field('email', 'size': "30", 'class': "input-xlarge") }}
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="password">Password</label>
                        <div class="controls">
                            {{ password_field('password', 'size': "30", 'class': "input-xlarge") }}
                        </div>
                    </div>
                    <br/>
                    <div>
                        {{ submit_button('Login', 'class': 'btn btn-primary btn-large') }}
                    </div>
                </fieldset>
            </form>
        </div>

        <div class="span6">
            <div class="page-header">
                <h2>Ainda nao estás IN?</h2>
            </div>

            <p>Cria uma contar para poderes:</p>
            <ul>
                <li>Comprar alimentos melhores e a melhores precos</li>
                <li>Vender os limoes, os coentros, ou as malaguetas que nao precisas</li>
                <li>Ver os outros a aproveitar...</li>
            </ul>

            <div class="clearfix left">
                {{ link_to('session/register', 'Sign Up', 'class': 'btn btn-primary btn-large btn-success') }}
            </div>
        </div>

    </div>
</div>
