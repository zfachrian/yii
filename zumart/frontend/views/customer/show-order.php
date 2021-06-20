<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\data\ActiveDataProvider;

/* @var $this yii\web\View */
/* @var $searchModel app\models\CustomerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Customers Order';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="customer-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    
    <?php 
    $dataProvider2 = new ActiveDataProvider([
        'query' => $dataProvider,
        'pagination' => [
            'pageSize' => 20,
        ],
    ]);
    ?>
    
    <?php 
    function($dataProvider2){
        foreach($dataProvider2->orderItems as $list){
            $result = '<li>'.$list->item_id.'</li>'; 
        }
    }
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider2,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'header' => 'Order ID',
                'attribute' => 'id',
            ],
            [
                'header' => 'Customer Name',
                'attribute' => 'customer.nama',
            ],
            [
                'label' => 'Items',
                'class' => 'yii\grid\DataColumn',
                'format' => 'html',
                'value' => function ($data) { 
                    $result = '<ul>';
                        echo"<li>aaaaa</li>";
                    $result = '</ul>';
                    return $result;
                },
            ]
        ],
    ]); ?>


</div>
