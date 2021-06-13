<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\StatisticSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="statistic-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'Id') ?>

    <?= $form->field($model, 'access_time') ?>

    <?= $form->field($model, 'user_ip') ?>

    <?= $form->field($model, 'user_host') ?>

    <?= $form->field($model, 'path_info') ?>

    <?php // echo $form->field($model, 'query_string') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
