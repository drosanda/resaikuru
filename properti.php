<?php
	$segments = array();
	$segments[] = 'produk';
	$segments[] = 'rolciz-original';
	//$segments[] = 'asdasd';
	$uri = implode('/', $segments);
	$key = 'produk/(:any)';
	$val = 'produk/detail/index/$1';
$key = str_replace(array(':any', ':num'), array('[^/]+', '[0-9]+'), $key);
if (preg_match('#^'.$key.'$#', $uri, $matches)){

	echo '<pre>';
	print_r($matches);
	echo '</pre>';
	
	$val = preg_replace('#^'.$key.'$#', $val, $uri);
	echo '<pre>';
	print_r($val);
	echo '</pre>';
}else{
	//echo $key;
}