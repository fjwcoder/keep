<?php
namespace app\index\controller;
use app\common\controller\Common; 
use app\common\controller\Web;
use think\Controller;
use think\Config;
use think\Session;

class Index extends Common
{

    public function index(){
        

        return 'index';
    }


}
