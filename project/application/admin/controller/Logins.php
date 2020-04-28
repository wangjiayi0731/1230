<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/3/5
 * Time: 15:05
 */

namespace app\admin\controller;

use think\Controller;
use app\admin\model\Login as LoginModel;
use think\Request;//引入Request类
class Logins extends Controller
{
//    显示登录页
    public function logins(){
        return $this->fetch();
    }

    public function zc(){
        $model=new LoginModel();
        $request=Request::instance();
        $username=input('username');
        $password=input('password');
        $date=array(
            'username'=>$username,
            'password'=>$password,
            'login_ip'=>$request->ip(),//获取访问ip
            'status'=>input('status')

        );
        $res=$model->save($date);
        if($res==true){
            $this->success('注册成功','Login/indexss');
        }else{
            $this->error('账号或密码无效','logins');
        }
    }

//
}