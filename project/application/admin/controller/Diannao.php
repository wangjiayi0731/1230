<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/3/10
 * Time: 10:59
 */

namespace app\admin\controller;


use think\Controller;
use app\admin\model\Diannao as DiannaoModel;
class Diannao extends Controller
{

    //查询全部数据
    public function dn(){
        $model=new DiannaoModel();
        $arr=$model::all();
        $this->assign('arr',$arr);
        return $this->fetch();
    }

    //增加页面
    public function zhengjia(){
        return $this->fetch();
    }
    public function zj(){
        $model=new DiannaoModel();
        $name=input('name');
        $jiage=input('jiage');
        $xiancun=input('xiancun');
        $sunhui=input('sunhui');
        $daixiu=input('daixiu');
        $date=array(
            'name'=>$name,
            'jiage'=>$jiage,
            'xiancun'=>$xiancun,
            'sunhui'=>$sunhui,
            'daixiu'=>$daixiu
        );
        $res=$model->save($date);
        if($res==true){
            $this->success('增加成功','dn');
        }else{
            $this->error('增加失败','zhengjia');
        }
    }

    //删除
    public function sc(){
        $id=input('id');
        $model=new DiannaoModel();
        $res=$model::destroy(['id'=>$id]);
        if($res==true){
            $this->success('删除成功','dn');
        }else{
            $this->error('删除失败','dn');
        }
    }

    //更新查询
    public function gengxin(){
        $id=input('id');
        $model=new DiannaoModel();
        $arr=$model::get(['id'=>$id]);
        $this->assign('arr',$arr);
        return $this->fetch();
    }

    public function gx(){
        $id=input('id');
        $model=new DiannaoModel();
        $name=input('name');
        $jiage=input('jiage');
        $xiancun=input('xiancun');
        $sunhui=input('sunhui');
        $daixiu=input('daixiu');
        $date=array(
            'name'=>$name,
            'jiage'=>$jiage,
            'xiancun'=>$xiancun,
            'sunhui'=>$sunhui,
            'daixiu'=>$daixiu
        );
        $res=$model->save($date,['id'=>$id]);
        if($res==true){
            $this->success('更新成功','dn');
        }else{
            $this->error('更新失败','gengxin');
        }
    }
}