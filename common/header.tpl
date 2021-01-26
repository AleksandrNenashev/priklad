<!DOCTYPE html>
<html lang="ru">
<head>
    <title><?php echo $title; ?></title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>



    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- <script src="catalog/view/theme/priklad/js/home.js"></script> -->
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    

    <!-- <script src="build/three.min.js"></script>
    <script src="OrbitControls.js"></script>
    <script src="GLTFLoader.js"></script>
    <script src="https://82mou.github.io/threejs/js/OrbitControls.js"></script> -->

    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link rel="stylesheet" href="catalog/view/theme/priklad/css/main.min.css">
    <link rel="stylesheet" href="catalog/view/theme/priklad/css/new.css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />

    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>
<body>

<div class="main">

<header class="header">
    <div class="container">

        <a class="header__logo" href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>

        <button class="header__menu-button">
             
            <span>Меню</span>
        </button>
        
        <div class="header__dropdown">

            <menu class="header__menu">
                
<li>
    <a href=""><?php echo $text_category; ?></a>
</li>

<li>
    <a href="">Доставка и оплата</a>
</li>

<li>
    <a href="">Услуги</a>
</li>

<li>
    <a href="">О компании</a>
</li>


            </menu>

            <menu class="header__menu-sub">
                <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
                
                <li><a href="/<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
        <?php } ?>
            
            </menu>

            <form class="header__search" action="/search/">

                <input type="text" placeholder="Поиск" name="search">

                <button class="header-search-button" type=>
                    <svg class="icon icon_search"
                     xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                     <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                </svg>
                
                </button>

            </form>

        </div>

        <div class="header__search-list"></div>

        <div class="header-cart">
<div class="header__cart header__cart_have-goods">
        <?php echo $cart;?>
</div>
</div>
            </div>

    </div>
    
</header>

<div class="home-config">
    <div class="container">
        <div class="home-config__title">
            <div class="home-config__heading">Онлайн конфигуратор</div>
            <div class="config-help__step">
                Выберите свою модель. <br>
                Постройте идеальное оружие.
            </div>
            <a class="btn" href="/config/">Собрать</a>
        </div>
        <div class="home-config__product"></div>
    </div>
</div>
<?php echo $cart;?>