<?php
# +-------------------------------------------------------------
# | CREATE by FJW IN 2017-5-18.
# | Mobile控制器公共函数库
# |
# |
# +-------------------------------------------------------------

// 应用公共文件
namespace app\common\controller;
// use app\common\controller\Common; 
use app\index\controller\Wechat;
use think\Controller;
use think\Config;
use think\Session;
use think\Cache;
use think\Request;
defined('APPID') or define('APPID', 'wxa61ba5429b802e8f');
defined('APPSECRET') or define('APPSECRET', '7e7e4f652449441dec476d2b99fa63ba');
define('WEB_URL', 'https://api.weixin.qq.com/sns/oauth2/access_token?appid=');
define('WEB_USERINFO', 'https://api.weixin.qq.com/cgi-bin/user/info?access_token=');
class Mobile extends controller
{
    // 空操作，404页面
    public function _empty()
    {
        header('HTTP/1.1 404 Not Found');
        header('Status: 404 Not Found');
        $this->display(get_tpl('404.html'));
    }

    protected function _initialize()
    {
		if(empty(session('USER_WECHAT_NAME'))){
			
			if(empty(request()->get('code'))){
				// $html = '';
				// $html .= '<!DOCTYPE HTML><head><meta charset="utf-8"><title>关注公众号</title></head>';
				// $html .= '<body><div style="height: 50px; width: 100%; text-align: center; line-height: 50px;';
				// $html .= ' background-color: #e0e0e0; font-size: 1.2em; color: black;">';
				// $html .= '请先关注公众号：安进咨询 （anjinconsulting）</div></body>';
				// echo $html;
				// die;
				// return $this->redirect('/Index/Attention/index');

			}
            if(!empty(request()->get('code'))){
                $code = request()->get('code');
				$web_url = WEB_URL.APPID.'&secret='.APPSECRET.'&code='.$code.'&grant_type=authorization_code';
				$web_get = https_get($web_url);
				$open_arr = json_decode($web_get, true);
				if(!empty($open_arr['openid'])){
					$wechat = new Wechat();
					$access_token = $wechat->access_token();
					$info_url = WEB_USERINFO.$access_token.'&openid='.$open_arr['openid'].'&lang=zh_CN';
					$info_get = https_get($info_url);
					$info_arr = json_decode($info_get, true);

					session('USER_WECHAT_NAME', $info_arr['nickname']);

				}else{
					die('user info error');
				}
            }
				
				
			
		}else{
			session('USER_WECHAT_NAME', session('USER_WECHAT_NAME'));
		}
        
    }
	
	public function attention(){

		return $this->fetch();
	}



}