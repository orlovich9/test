        <footer>

            <div class="container-fluid">

                <div class="row">
                    <div class="col-12 col-sm-5 col-md-4">
                        <p>© 2012–2013 ЗАО «Компания»<br>
                            info@name.ru</p>
                    </div>

                    <div class="col-6 col-sm-3 col-md-4">
                        <nav class="footer-menu">
                            <ul>
                                {$_modx->runSnippet('pdoMenu@PropertySet', [
                                    'parents' => 0,
                                    'level' => 1,
                                    'tpl' => '@INLINE <li><a href="{$link}">{$menutitle}</a></li>'
                                ])}
                            </ul>
                        </nav>
                    </div>

                    <div class="col-6 col-4 col-md-4">
                        <a class="copi-wrap" href="#" title="Компания «Site Elite» - самая КЛЁВАЯ компания">
                            <img src="/template/img/main-logo.png" alt="Компания «Site Elite»" class="logo_footer">
                            <p><u>Разработка сайта —</u><br>
                                компания «Site Elite»</p>
                        </a>
                    </div>
                </div>

            </div>

        </footer>

        <div class="feedback">

            <div id="myModal">
                {$_modx->runSnippet('!AjaxForm@PropertySet', [
                    'snippet' => 'FormIt',
                    'form' => '@FILE ajaxForm/feedbackForm.tpl',
                    'hooks' => 'spam,FormItSaveForm,email',
                    'emailSubject' => 'Обратная связь',
                    'formName' => 'Обратная связь',
                    'emailTo' => $_modx->config.email,
                    'emailFrom' => 'a.orlov@msforyou.ru',
                    'submitVar' => 'feedback_submit',
                    'validate' => 'user_name:required,user_phone:required,user_email:required',
                    'formFields' => 'user_name,user_phone,user_email,user_message',
                    'fieldNames' => 'user_name==Имя,user_phone==Телефон,user_email==Email,user_message==Сообщение',
                    'validationErrorMessage' => 'Не все поля были заполнены корректно',
                    'successMessage' => 'Ваше сообщение успешно отправлено',
                    'emailTpl' => '@FILE ajaxform/sentEmail.tpl'
                ])}

                <span id="myModal__close" class="close"></span>
            </div>
            <div id="myOverlay"></div>
        </div>

        <script src="/template/js/scripts.min.js"></script>
    </body>
</html>