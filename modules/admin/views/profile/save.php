<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
use yii\widgets\Pjax;

?>

<div class="save-form">
    <?php Pjax::begin(['id' => $point->id]); ?>
    <?php $form = ActiveForm::begin([
        'options' => ['data-pjax' => true],
        'action' => Url::to(['profile/save/?id=' . $point->id]),
    ]); ?>

    <?= $form->field($point, 'status')->dropDownList(['0' => 'Выключен', '1' => 'Включен',]) ?>
    <?= $form->field($point, 'phone') ?>
    <?= $form->field($point, 'second_phone') ?>
    <?= $form->field($point, 'time') ?>
    <?= $form->field($point, 'categoriesArray')->checkboxList(\yii\helpers\ArrayHelper::map(\app\modules\admin\models\Categories::find()->all(), 'id', 'name')) ?>


    <div class="form-group">
        <?= Html::submitButton('Сохранить', ['class' => 'btn btn-success']) ?>
        <?= Html::a('Отмена', ['index'], ['class'=>'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>
    <?php Pjax::end(); ?>

</div>