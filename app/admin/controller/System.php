<?php
# +-------------------------------------------------------------
# | CREATE by FJW IN 2017-5-17.
# | 后台系统信息设置控制器
# |
# |
# +-------------------------------------------------------------
namespace app\admin\controller;
use app\common\controller\Manage;
use app\common\controller\Common;
use think\Controller;
use think\Session;
use think\Cookie;
use think\Config;
use think\Request;
use think\Db;
use think\Cache;


class System extends Manage
{
    // dump(request()->module());//模块
    // dump(request()->controller()); //控制器
    // dump(request()->action()); //方法
    private $module = '';
    private $controller = '';

    public function _initialize(){
        $this->module = request()->module();
        $this->controller = request()->controller();
    }

    public function index()
    {   
        $navid = input('navid', 0, 'intval');
        $config = webConfig();

        $this->assign('config', $config);
        $this->assign('header', ['icon'=>'glyphicon-cog','title'=>'系统配置->系统配置->基本配置', 
        'form'=>'index',
        // 'form'=>"/$this->module/$this->controller/edit", 
        'navid'=>$navid]);
        return $this->fetch();
    }
    

    //修改配置
    public function edit(){
        $post = request()->post();
        $flag = false; //是否有更新项，如果有则为true
        if(empty($post['web_url'])){
            $post['web_url'] = $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['SERVER_NAME'];
        }
        $post['doc_root'] = ROOT_PATH?ROOT_PATH:$_SERVER['DOCUMENT_ROOT'];
        $list = array();
        foreach($post as $k=>$v){
            $list[] = ['name'=>$k, 'value'=>$v];
        }
        
        foreach($list as $data){
            $update = Db::table('keep_web_config') -> where(array('name'=>$data['name'])) -> update($data);
            if($update > 0){
                $flag = true;
            }
        }
        
        if($flag){
            Cache::rm('WEB_CONFIG');
            session('ADMIN_NAVBAR', null);
            // Cache::rm('ADMIN_NAVBAR');
            // Cache::rm('ADMIN_MODULE');
            return $this->success('更新成功', "$this->controller/index");
        }else{
            return $this->error('无更新项');
        }

    }

    public function add(){

        if(request()->post()){
            return $this->addPost();
        }
        $navid = input('navid', 0, 'intval');
        $this->assign('header', ['icon'=>'glyphicon-cog','title'=>'系统配置->系统配置->添加配置', 
        'form'=>'add', 'navid'=>$navid]);
        return $this->fetch();
    }

    public function addPost(){
        $post = request()->post();
        foreach($post['config'] as $k=>$v){
            $data[$k] = $v;
        }
        #需要检测name和title字段的唯一性
        return dump($data);
    }


}
