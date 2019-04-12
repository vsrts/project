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
<<<<<<< HEAD
    <?= $form->field($user, 'password')->input('password') ?>
=======
    <?= $form->field($user, 'new_password')->input('password') ?>
>>>>>>> 23301e2bf623a693e6b6e25541a951e9c8236177
    <?= $form->field($profile, 'name') ?>
    <?= $form->field($profile, 'phone') ?>
    <?= $form->field($profile, 'type') ?>



    <div class="form-group">
        <?= Html::submitButton('Сохранить', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
