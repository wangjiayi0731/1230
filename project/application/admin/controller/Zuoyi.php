<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/3/10
 * Time: 17:33
 */

namespace app\admin\controller;


use think\Controller;
use app\admin\model\Zuoyi as ZuoyiModel;
class Zuoyi extends Controller
{
    public function zuoyi(){
        $model=new ZuoyiModel();
        $arr=$model::all();
        $this->assign('arr',$arr);
        return $this->fetch();
    }

    //删除
    public function sc(){
        $id=input('id');
        $model=new ZuoyiModel();
        $res=$model::destroy(['id'=>$id]);
        if($res==true){
            $this->success('删除成功','zuoyi');
        }else{
            $this->error('删除失败','zuoyi');
        }
    }

    //增加页面
    public function zhengjia(){
        return $this->fetch();
    }
    //增加
    public function zj()
    {
        $model = new ZuoyiModel();
        $name = input('name');
        $jiage = input('jiage');
        $xs = input('xs');
        $js = input('js');
        $xz = input('xz');
        $sj = input('sj');
        $qita = input('qita');
        $date = array(
            'name' => $name,
            'jiage' => $jiage,
            'xs' => $xs,
            'js' => $js,
            'xz' => $xz,
            'sj' => $sj,
            'qita' => $qita,
        );
        $res = $model->save($date);
        if ($res == true) {
            $this->success('增加成功', 'zuoyi');
        } else {
            $this->error('增加失败', 'zhengjia');
        }
    }

    //更新查询
    public function gengxin(){
        $id=input('id');
        $model=new ZuoyiModel();
        $arr=$model::get(['id'=>$id]);
        $this->assign('arr',$arr);
        return $this->fetch();
    }

    public function gx(){
        $id=input('id');
        $model=new ZuoyiModel();
        $name = input('name');
        $jiage = input('jiage');
        $xs = input('xs');
        $js = input('js');
        $xz = input('xz');
        $sj = input('sj');
        $qita = input('qita');
        $date = array(
            'name' => $name,
            'jiage' => $jiage,
            'xs' => $xs,
            'js' => $js,
            'xz' => $xz,
            'sj' => $sj,
            'qita' => $qita,
        );
        $res=$model->save($date,['id'=>$id]);
        if($res==true){
            $this->success('更新成功','zuoyi');
        }else{
            $this->error('更新失败','gengxin');
        }
    }
}