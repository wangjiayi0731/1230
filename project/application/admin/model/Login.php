<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/3/6
 * Time: 19:37
 */

namespace app\admin\model;




use think\Model;

class Login extends Model
{
    protected $table="tpadmin";
    //开启自动时间戳
    protected $autoWriteTimestamp=true;
}