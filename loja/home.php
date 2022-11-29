

<?php 

$smarty = new Template();


$smarty->assign('BANNER', Rotas::ImageLink('banner3.jpg', 720,300));

$smarty->display('home.tpl');

include_once Rotas::get_Pasta_Controller() .'/produtos.php';

 ?>