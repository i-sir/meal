<?php

namespace initmodel;

use think\Model;
use think\model\concern\SoftDelete;

class ShopCartModel extends Model
{
    protected $name = 'shop_cart';

    //软删除
    protected $hidden            = ['delete_time'];
    protected $deleteTime        = 'delete_time';
    protected $defaultSoftDelete = 0;
    use SoftDelete;
}