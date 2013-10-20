<?php use Phalcon\Tag as Tag ?>

<?php echo $this->getContent() ?>

<ul class="pager">
    <li class="previous pull-left">
        <?php echo Tag::linkTo("producttypes/index", "&larr; Voltar") ?>
    </li>
    <li class="pull-right">
        <?php echo Tag::linkTo(array("producttypes/new", "Criar Categoria", "class" => "btn btn-primary")) ?>
    </li>
</ul>

<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th> </th>
        </tr>
    </thead>
    <tbody>
    <?php
        if(isset($page->items)){
            foreach($page->items as $productType){ ?>
        <tr>
            <td><?php echo $productType->id ?></td>
            <td><?php echo $productType->name ?></td>
            <td width="5%"><?php echo Tag::linkTo(array("producttypes/edit/".$productType->id, '<i class="icon-pencil"></i>', "class" => "btn")) ?></td>
            <td width="5%"><?php echo Tag::linkTo(array("producttypes/delete/".$productType->id, '<i class="icon-remove"></i>', "class" => "btn")) ?></td>
        </tr>
    <?php }
        } ?>
    </tbody>
    <tbody>
        <tr>
            <td colspan="4" align="right">
                <div class="btn-group">
                    <?php echo Tag::linkTo(array("producttypes/search", '<i class="icon-fast-backward"></i>', "class" => "btn")) ?>
                    <?php echo Tag::linkTo(array("producttypes/search?page=".$page->before, '<i class="icon-step-backward"></i>', "class" => "btn ")) ?>
                    <?php echo Tag::linkTo(array("producttypes/search?page=".$page->next, '<i class="icon-step-forward"></i>', "class" => "btn")) ?>
                    <?php echo Tag::linkTo(array("producttypes/search?page=".$page->last, '<i class="icon-fast-forward"></i>', "class" => "btn")) ?>
                    <span class="help-inline"><?php echo $page->current, "/", $page->total_pages ?></span>
                </div>
            </td>
        </tr>
    <tbody>
</table>