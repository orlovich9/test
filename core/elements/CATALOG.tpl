<div class="slider">
    <div class="my_carousel">
        <div class="owl-carousel owl-theme">
            <div class="item_slider" style="background-image: url('/template/img/slide1.png')"></div>
            <div class="item_slider" style="background-image: url('/template/img/slide2.png')"></div>
        </div>
    </div>
</div>

<div class="content">

    <div class="container-fluid">

        <div class="row">

            <div class="col-12">
                <div class="breadcrumbs">
                    <nav>
                        {include 'file:/BLOCK/BREADCRUMBS.tpl'}
                    </nav>
                </div>
            </div>

        </div>

        <div class="row">

            <div class="col-sm-3 col-lg-2">
                <div class="leftblock">
                    <nav class="menu-aside">
                        {$_modx->runSnippet('pdoMenu@PropertySet', [
                            'parents' => 2,
                            'level' => 2,
                            'tpl' => '@INLINE <li class="sub"><a href="{$link}">{$menutitle}</a>{$wrapper}</li>',
                            'tplInner' => '@INLINE <ul class="submenu">{$wrapper}</ul>',
                            'tplInnerRow' => '@INLINE <li><a href="{$link}">{$menutitle}</a></li>'
                        ])}
                    </nav>

                    <div class="price-list" title="Прайс-лист">
                        <a href="#">
                            <img src="/template/img/excel.png" alt="Прайс-лист Самой клёвой компании">
                        </a>
                        <div class="prise-list__text">Прайс-лист</div>
                    </div>
                </div>
            </div>

            <div class="col-sm-9 col-lg-10">
                <div class="centerblock">

                    {$_modx->runSnippet('!pdoPage@PropertySet', [
                        'parents' => $_modx->resource.id,
                        'limit' => 10,
                        'tpl' => '@FILE tpl/catalog.tpl',
                        'includeTVs' => 'preview_image,price'
                    ])}

                    <div class="pagination-wrap">
                        <ul class="pagination">

                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a class="active-pag" href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                        </ul>
                    </div>

                    <div class="container">

                        <div class="row">

                            <div class="col-12 col-sm-6" style="padding-left: 0;">
                                <p>Site Elite Studio - интерактивная компания, работающая в области веб-технологий, графического дизайна и интернет-маркетинга.</p>
                                <p>Наша задача - помочь нашим Заказчикам найти общий язык с целевой аудиторией. Мы стремимся создавать только работающие проекты, эффективность которых можно измерить.</p>
                                <p>Закажите у нас создание сайта и результат не заставит себя долго ждать!</p>
                            </div>

                            <div class="col-12 col-sm-6">
                                <p>Создание сайтов уже давно не является целью - это способ достижения результата. А сам результат зависит от потребностей компании - увеличение продаж, привлечение партнеров, узнаваемость компании, лояльность клиентов к бренду и т.д.</p>
                                <p>При разработке сайтов, мы ориентируемся на маркетинговый подход: анализируем входные данные, изучаем ситуацию на рынке, выстраиваем правильную структуру подачи информации на сайте, проектируем интерфейс исходя из потребностей конечного пользователя.</p>
                            </div>

                        </div>

                    </div>

                </div>
            </div>

        </div>

    </div>

</div>