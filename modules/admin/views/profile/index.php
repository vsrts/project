<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

?>

<h1>Управляющий <?= $profile->name; ?></h1>

<?php $form = ActiveForm::begin([
    'options' => ['class' => 'form-inline'],
]); ?>

<?= $form->field($profile, 'phone')->textInput(['maxlength' => true]) ?>


    <?= Html::submitButton('Сохранить', ['class' => 'btn btn-success']) ?>


<?php ActiveForm::end(); ?>

<?php
echo "<pre>";
print_r($points);
echo "</pre>";