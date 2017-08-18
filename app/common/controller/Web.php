<?php
# +-------------------------------------------------------------
# | CREATE by FJW IN 2017-5-19.
# | 前台控制器基类
# |
# |
# +-------------------------------------------------------------
namespace app\common\controller;
use app\common\controller\Authority;
use think\Controller;
use think\Config;
use think\Session;

class Web extends Authority //需要继承该类，否则无法使用
{
    //权限验证
    public function _initialize(){
        
        //检查站点是否关闭
        if(Config::get('IS_WEB_CLOSE') == 1){
            die('站点关闭');
        }
        
        // Session::set(Config::get('USER_KEY'), 1);//测试账号

        if(!Authority::isLogin()){
            $this->success('请先登录', 'Login/index');
            exit;
        }

        //登录后 验证权限
        if(false == Config::get('IS_AUTH_VERITY')){
            $res = Authority::auth(true);
            // $res = $this->auth(true);
            // return dump($res);
        }
    }

    //加载后台配置
    public function loadConfig($name){
        $config = cache(Config::get('ADMIN_CONFIG'));
        if(empty($config)){
            $result = db('admin_config', [], false) 
                -> field(array('id', 'name', 'value', 'tvalue')) 
                -> where(array('status'=>1)) 
                -> select(); 
            $common = new Common();
            $config = $common->cacheForeach($result, 'name');
            cache(Config::get('ADMIN_CONFIG'), $config);
        }
        return $config[$name];
    }
}