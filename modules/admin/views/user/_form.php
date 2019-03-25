<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($user, 'username') ?>
    <?= $form->field($user, 'new_password')->input('password') ?>
    <?= $form->field($profile, 'name') ?>
    <?= $form->field($profile, 'phone') ?>
    <?= $form->field($profile, 'type') ?>



    <div class="form-group">
        <?= Html::submitButton('Update', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
