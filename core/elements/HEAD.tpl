<!DOCTYPE html>
<html lang="ru">

<head>

    <meta charset="utf-8">

    <title>{if $_modx->resource.seo_title == ''}{$_modx->resource.pagetitle}{else}{$_modx->resource.seo_title}{/if}{if $title != ''}{$title}{/if}</title>
    <meta name="description" content="{if $_modx->resource.seo_description == ''}{$_modx->resource.pagetitle | replace : '"' : ''}{else}{$_modx->resource.seo_description | replace : '"' : ''}{/if}">
    <base href="{$_modx->config.site_url}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="icon" href="/template/img/favicon/favicon.png">

    <meta name="theme-color" content="#767676">

    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&amp;subset=cyrillic" rel="stylesheet">
    <link rel="stylesheet" href="/template/css/main.min.css">
</head>
<body>