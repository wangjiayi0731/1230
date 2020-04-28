<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/3/5
 * Time: 17:22
 */

namespace app\admin\controller;


use think\Controller;
use app\admin\model\Zy;
use app\admin\model\Sp;
use app\admin\model\Gly;
class Admin extends Controller
{
    public function index(){
        $model=new Zy();
        $arr1=$model::all();
        $model1=new Sp();
        $arr2=$model1::all();
        $model1=new Gly();
        $arr3=$model1::all();
        $this->assign('arr1',$arr1);
        $this->assign('arr2',$arr2);
        $this->assign('arr3',$arr3);
        return $this->fetch();
    }
}