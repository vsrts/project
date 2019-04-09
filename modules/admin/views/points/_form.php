<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Points */
/* @var $form yii\widgets\ActiveForm */

//echo "<pre>";
//print_r($pointCategories());
//echo "</pre>";
//$checked = [];
//foreach($model->categories as $category){
//    $checked[$category->id] = $category->name;
//}
//
//echo "<pre>";
//print_r($checked);
//echo "</pre>";
$cats = [];
foreach($categories as $category){
    $cats[$category->id] = $category->name;
}

echo "<pre>";
print_r($cats);
echo "</pre>";

?>



<div class="points-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'city')->dropDownList(\yii\helpers\ArrayHelper::map(\app\modules\admin\models\Cities::find()->all(), 'id', 'name')) ?>

    <?= $form->field($model, 'phone')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'second_phone')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'address')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'time')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'manager')->dropDownList(\yii\helpers\ArrayHelper::map(\app\modules\admin\models\Profile::find()->all(), 'user_id', 'name')) ?>

    <?= $form->field($model, 'filial')->textInput() ?>

    <?= $form->field($model, 'status')->dropDownList(['0' => 'Выключен', '1' => 'Включен',]) ?>

    <?= $form->field($model, 'categories')->checkboxList($cats) ?>


    <div class="form-group">
        <?= Html::submitButton('Сохранить', ['class' => 'btn btn-success']) ?>
        <?= Html::a('Отмена', ['index'], ['class'=>'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

