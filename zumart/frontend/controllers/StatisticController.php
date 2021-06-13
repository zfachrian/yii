<?php

namespace frontend\controllers;
use Yii;
use app\models\StatisticSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class StatisticController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $searchModel = new StatisticSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

}
