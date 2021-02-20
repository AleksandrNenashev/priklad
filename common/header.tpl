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


    <style>
        .booth {
        width: 400px;
        background: #ccc;
        border: 10px solid #ddd;
        margin: 0 auto;
        }
    </style>


    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- <script src="catalog/view/theme/priklad/js/home.js"></script> -->
    <script src="catalog/view/theme/priklad/js/common.js" type="text/javascript"></script>
    

    <script src="three.min.js"></script>
    <script src="OrbitControls.js"></script>
    <script type="module" src="GLTFLoader.js"></script>
    

    
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
    <a href="http://localhost:8888/open2.loc/index.php?route=product/category&path=20">Каталог</a>
</li>

<li>
    <a href="">Доставка и оплата</a>
</li>

<li>
    <a href="">Конфигуратор</a>
</li>

<li>
    <a href="">О компании</a>
</li>
 
</div>


<a class="header__phone" href="tel:<?= $telephone;?>"><?php echo $telephone ;?></a>

       
<div class="header__cart header__cart_have-goods">
        <?php echo $cart;?>
</div>
   
</header>
