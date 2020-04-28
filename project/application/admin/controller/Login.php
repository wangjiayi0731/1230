<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/3/5
 * Time: 15:05
 */

namespace app\admin\controller;
use think\captcha\Captcha;
use think\Controller;
use app\admin\model\Login as LoginModel;
class Login extends Controller
{
//    显示登录页
    public function indexss(){
        return $this->fetch();
    }

//    验证码
    public function login(){
        $config=array(
            'length'=>4,
            'fontSize'=>100,
            'useCurve'=>false
        );
        $captcha=new Captcha($config);
        return $captcha->entry();
    }
    //登录验证
    public function yanzm(){
//        判断是否为空
        $username=input('username');
        $password=input('password');
        $code=input('code');
        if (empty($username)||empty($password)||empty($code)){
            return json([
                'status'=>0,
                'msg'=>'用户名或密码不能为空'
            ]);
        }
        //判断验证码是否正确
        $captcha=new Captcha();
        $res=$captcha->check($code);
        if (!$res){
            return json([
                'status'=>0,
                'msg'=>'验证码错误'
            ]);
        }
//        查询用户名和密码是否正确
        $model=new LoginModel();
//        $data=$model->where('username',$username)->find();
        $data=$model::get(['username'=>$username]);
        if (is_null($data)==false&&$data['password']=$password){
            return json([
                'status'=>1,
                'msg'=>'登陆成功'
            ]);
        }else{
            return json([
                'status'=>0,
                'msg'=>'用户名或密码错误'
            ]);
        }
    }
}