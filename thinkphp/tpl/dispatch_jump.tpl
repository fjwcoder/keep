
{__NOLAYOUT__}
<!--+----------------------------------------------------
    | Modify by FJW IN 2017-5-20.
    |
    |
    +----------------------------------------------------
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>KEEP跳转提示</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <style type="text/css">
        .system-message{position: absolute; width: 99%; top: 0; bottom: 0; padding: 0; margin: 0;}
        /*黄金矩形*/
        .info-panel{width: 500px; height: 309px; position: absolute; top: 50%; left: 50%; 
            margin-left: -250px; margin-top: -170px; background-color: #f0f0f0; 
            border-radius: 5px;-moz-box-shadow: 5px 5px 10px #e0e0e0;  
            -webkit-box-shadow: 5px 5px 10px #e0e0e0; box-shadow: 5px 5px 10px #e0e0e0;}
        .info-panel .info-title{height: 40px; width: 100%; background-color: #e0e0e0; padding: 0 5%;
            border-top-left-radius: 5px; border-top-right-radius: 5px; line-height: 43px; font-size: 25px;
            font-weight: 600; color: #7b7b7b;}
        .info-content{text-align: center; height: 200px; line-height: 230px;}
        .info-content h1{font-size: 70px; color: #7b7b7b;}
        .info-content p{font-size: 40px; color: #7b7b7b;}
        h1, p{display: inline-block;}
        .glyphicon-ok{color: #00ec00;}
        .glyphicon-remove{color: #ff2d2d;}
        .info-jump{height: 50px; line-height: 50px; padding: 0 20px; font-size: 20px;}

    </style>
</head>
<body>
    <div class="system-message">
        <div class="info-panel">
            <div class="info-title">
                <span class="glyphicon glyphicon-paperclip"></span> KEEP跳转提示
            </div>
            <div class="info-content">
                <?php switch ($code) {?>
                    <?php case 1:?>
                    <h1>
                        <span class="glyphicon glyphicon-ok"></span>
                    </h1>
                    <p class="success"><?php echo(strip_tags($msg));?></p>
                    <?php break;?>
                    <?php case 0:?>
                    <h1>
                        <span class="glyphicon glyphicon-remove"></span>
                    </h1>
                    <p class="error"><?php echo(strip_tags($msg));?></p>
                    <?php break;?>
                <?php } ?>
            </div>
            <div class="info-jump">
                <p class="jump">
                    页面自动 <a id="href" href="<?php echo($url);?>">跳转</a> 等待时间： <b id="wait"><?php echo($wait);?></b>
                </p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        (function(){
            var wait = document.getElementById('wait'),
                href = document.getElementById('href').href;
            var interval = setInterval(function(){
                var time = --wait.innerHTML;
                if(time <= 0) {
                    location.href = href;
                    clearInterval(interval);
                };
            }, 1000);
        })();
    </script>
</body>
</html>
