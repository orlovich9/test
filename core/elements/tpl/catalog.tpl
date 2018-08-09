<div class="item-wrap">
    <img src="{$_modx->runSnippet('phpthumbon', [
    'input' => $_pls['tv.preview_image'],
    'options' => 'w=210&h=209&zc=1&q=70'
    ])}" alt="{$pagetitle}" class="item-img">
    <a href="{$id | url}" class="descr">Самый клевый чайник, который надо купить!</a>
    <div class="wrap">
        <p class="price" title="Стоимость товара">{$_pls['tv.price']} р.</p>
        <a href="#" title="Добавить товар в корзину"><img src="/template/img/addtobasket.png" alt="Самая клёвая иконка" class="icon"></a>
    </div>
</div>