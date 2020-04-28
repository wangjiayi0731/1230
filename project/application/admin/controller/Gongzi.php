<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/3/9
 * Time: 18:19
 */

namespace app\admin\controller;


use think\Controller;
use app\admin\model\Gz;
class Gongzi extends Controller
{
    //增加页面
    public function zhengjia(){
        return $this->fetch();
    }
    //增加
    public function zj(){
        $model=new Gz();
        $username=input('username');
        $ruzhi=input('ruzhi');
        $gongzi=input('gongzi');
        $phone=input('phone');
        $zhiwei=input('zhiwei');
        $date=array(
            'name'=>$username,
            'ruzhi'=>$ruzhi,
            'gongzi'=>$gongzi,
            'phone'=>$phone,
            'zhiwei'=>$zhiwei
        );
        $res=$model->save($date);
        if($res==true){
            $this->success('增加成功','gz');
        }else{
            $this->error('增加失败','zhengjia');
        }
    }

    //查询全部
    public function gz(){
        $model=new Gz();
        $arr=$model::all();
        $this->assign('arr',$arr);
        return $this->fetch();
    }

    //删除
    public function sc(){
        $id=input('id');
        $model=new Gz();
        $res=$model::destroy(['id'=>$id]);
        if($res==true){
            $this->success('删除成功','gz');
        }else{
            $this->error('删除失败','gz');
        }
    }

    //更新查询
    public function gengxin(){
        $id=input('id');
        $model=new Gz();
        $arr=$model::get(['id'=>$id]);
        $this->assign('arr',$arr);
        return $this->fetch();
    }

    public function gx(){
        $id=input('id');
        $model=new Gz();
        $username=input('username');
        $ruzhi=input('ruzhi');
        $gongzi=input('gongzi');
        $phone=input('phone');
        $zhiwei=input('zhiwei');
        $date=array(
            'name'=>$username,
            'ruzhi'=>$ruzhi,
            'gongzi'=>$gongzi,
            'phone'=>$phone,
            'zhiwei'=>$zhiwei
        );
        $res=$model->save($date,['id'=>$id]);
        if($res==true){
            $this->success('更新成功','gz');
        }else{
            $this->error('更新失败','gengxin');
        }
    }
}