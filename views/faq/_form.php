<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Faq */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="faq-form">

    <?php $form = ActiveForm::begin(); ?>



    <?= $form->field($model, 'question')->textInput(['maxlength' => true]) ?>



    <?= $form->field($model, 'theme')->dropDownList(
        \yii\helpers\ArrayHelper::map(\app\modules\admin\models\Theme::find()->all(), 'category', 'category'))?>



    <?= $form->field($model, 'autor')->textInput(['maxlength' => true]) ?>



    <div class="form-group">
        <?= Html::submitButton('Создать', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
