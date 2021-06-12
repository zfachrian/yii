<?php

namespace frontend\components;

use yii\base\component;

use Yii;
use app\models\Statistic;
use yii\web\Controller;
use yii\db\Expression;

class MyComponent extends component
{
    public function welcome()
    {
        echo "ini adalah komponen saya";
    }

    public function EventStatisticHandler()
    {
        echo "<script>console.log('event terjadi')</script>";

        //add statistic
        $model = new Statistic(); 

            $model->access_time = new Expression('NOW()');
            $model->user_ip = Yii::$app->request->userIP;
            $model->user_host = Yii::$app->request->hostName;
            $model->path_info = Yii::$app->request->pathInfo;
            $model->query_string = Yii::$app->request->queryString;

            $model->save();
    }
}