
{{ content() }}

<div class="page-header">
    <h2>Contactos</h2>
</div>

<p>Manda uma mensagem para nos informares do que achares importante...</p>
<br>

{{ form('contacts/send', 'class': 'form-horizontal') }}
    <fieldset>
        <div class="control-group">
            <label class="control-label" for="name">Nome</label>
            <div class="controls">
                {{ text_field('name', 'class': 'input-xlarge') }}
                <p class="help-block">(required)</p>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="email">Email</label>
            <div class="controls">
                {{ text_field('email', 'class': 'input-xlarge') }}
                <p class="help-block">(required)</p>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="comments">Texto</label>
            <div class="controls">
                {{ text_area('comments', 'rows': '5', 'class': 'input-xlarge') }}
                <p class="help-block">(required)</p>
            </div>
        </div>
        <div>
            {{ submit_button('Send', 'class': 'btn btn-primary btn-large') }}
        </div>
    </fieldset>
</form>
