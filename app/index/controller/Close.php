<?php
# +-------------------------------------------------------------
# | CREATE by FJW IN 2017-5-18.
# | 网站关停页面
# |
# |
# +-------------------------------------------------------------


namespace app\index\controller;
use think\Controller;
use think\Config;
use think\Session;
use think\Cache;

class Close extends controller
{

    public function index(){
       return $this->fetch();
    }
    
}