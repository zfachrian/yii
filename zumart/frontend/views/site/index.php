<?php

/* @var $this yii\web\View */
use app\models\Item;
use yii\widgets\ListView;
use yii\data\ActiveDataProvider;
use yii\widgets\LinkPager;
use yii\widgets\ActiveForm;
use yii\helpers\Html;

$this->title = 'Zu Mart';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Zu Mart!</h1>

       <p class="lead">Happy Shopping.</p>

    </div>

    <?php $form = ActiveForm::begin(['action' => ['site/index'], 'options' => ['method' => 'post']]); ?>
    <center>
        <select name="category">
            <option value="0">Select Category</option>
            <?php foreach(app\models\ItemCategory::find()->all() as $cat): ?>
                <option value="<?= $cat->id; ?>"><?= $cat->name; ?></option>
            <?php endforeach; ?>
        </select>

        <?= Html::submitButton('Filter', ['class' => 'btn btn-success']) ?>
    </center>

    <?php ActiveForm::end(); ?>

    <?php foreach ($models as $model):?>
            <?= $this->render('_list_item',['model' => $model]);?>
            <br>
        <?php endforeach; ?> 
       <?=
        LinkPager::widget([
            'pagination' => $pagination,
        ]);
       ?>

    
    
</div>
