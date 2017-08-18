<?php
namespace app\index\controller;
use think\Controller;
use think\Config;
use think\Session;
use think\Cache;

class Login extends controller
{

    public function index(){
        return $this->fetch();
    }

    public function login(){
        
    }
}
