<?php

//Route::get('/', 'SimplePage.Index');
Route::get('/', 'Filteres.Index');
Route::post('/', 'Filteres.Models');
Route::post('/getItem', 'Filteres.Filteres');

Route::post('/api/products/getItems', 'Product.ApiDynamicList');
Route::get('/catalog', 'Product.Index');
Route::get('/catalog/{id}', 'Product.Card');
Route::post('/api/news/getItems', 'News.ApiDynamicList');
Route::get('/delivery', 'Delivery.Index');
//Route::get('/news/{id}','News.Card');
Route::match(['POST', 'GET'], '/login', 'Auth.Login');
Route::match(['POST', 'GET'], '/profile', 'Auth.Profile');
Route::post('/register', 'Auth.Register');

Route::get('/register', 'Auth.Login');
Route::post('/api/feedback/{action}', 'Feedback.Api');
Route::get('/feedback', 'Feedback.Index');
Route::match(['POST', 'GET'], '/cart', 'Cart.Index');
Route::post('/api/cart/{action}', 'Cart.Api');
Route::get('/admin', 'Admin.Index');
Route::post('/api/orderList/{partOrders}/getItems', 'Shop.ApiOrdersList');
Route::get('/order/{uId}', 'Shop.OrderInfo');
Route::post('/api/order/chageStatus', 'Shop.ChangeStatus');

Route::get('/search', 'Search.Index');
Route::post('/search', 'Search.Search');

//Route::get('/filteres', 'Filteres.Index');
//Route::post('/filteres', 'Filteres.Models');
//Route::post('/filteres/getItem', 'Filteres.Filteres');
//
//Route::get('/','SimplePage.Index');
//Route::post('/api/products/getItems','Product.ApiDynamicList');
//Route::get('/catalog','Product.Index');
//Route::get('/search','Search.Index');
//Route::get('/catalog/{id}','Product.Card');
//Route::post('/api/news/getItems','News.ApiDynamicList');
//Route::get('/delivery','Delivery.Index');
////Route::get('/news/{id}','News.Card');
//Route::match(['POST', 'GET'], '/login','Auth.Login');
//Route::match(['POST', 'GET'], '/profile','Auth.Profile');
//Route::post('/register','Auth.Register');
//Route::post('/search','Search.Search');
//Route::get('/register','Auth.Login');
//Route::post('/api/feedback/{action}','Feedback.Api');
//Route::get('/feedback','Feedback.Index');
//Route::match(['POST', 'GET'], '/cart' , 'Cart.Index');
//Route::post('/api/cart/{action}','Cart.Api');
//Route::get('/admin','Admin.Index');
//Route::post('/api/orderList/{partOrders}/getItems','Shop.ApiOrdersList');
//Route::get('/order/{uId}','Shop.OrderInfo');
//Route::post('/api/order/chageStatus','Shop.ChangeStatus');