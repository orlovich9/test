<header>

    <div class="container-fluid">

        <div class="row justify-content-between">

            <div class="col-auto">
                <img src="/template/img/logo.png" alt="Название" class="logo" title="Название компании">
            </div>

            <div class="col-auto">
                <div class="contacts">
                    <div class="tel" title="Телефон для связи">
                        +7(499) 777-77-77
                    </div>
                    <div class="tel" title="Телефон для связи">
                        +7(499) 777-77-77
                    </div>
                    <a class="myLinkModal" href="#" title="Форма обратной связи">Обратная связь</a>
                </div>
            </div>

        </div>

    </div>



</header>

<div class="menu-btn" title="Открыть меню">
    <span></span><span></span><span></span>
</div>

<div class="menu">

    <div class="container-fluid">

        <div class="row">

            <div class="col-12">

                <nav class="main-menu">
                    {$_modx->runSnippet('pdoMenu@PropertySet', [
                        'parents' => 0,
                        'level' => 1,
                        'tpl' => '@INLINE <li><a href="{$link}">{$menutitle}</a></li>'
                    ])}
                </nav>

            </div>

        </div>

    </div>

</div>