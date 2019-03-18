<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Slides';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="slides-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <div class="slides-list">
    <?php foreach($slides as $slide) : ?>
        <?php $form = ActiveForm::begin(['id' => 's' . $slide->id]); ?>
        <form id="s<?= $slide->id; ?>" action="" method="post">
        <div class="slide-row">
                <div class="slide-image">
                    <input type="text" name="slideImage" value="<?= $slide->image; ?>">
                </div>
                <div class="slide-code">
                    <textarea name="slideCode"><?= $slide->code; ?></textarea>
                </div>
                <div class="slide-cities">
                    <?php foreach($cities as $city) : ?>
                        <?php foreach($slide->cities as $citySlide) : ?>
                            <?php if($city->name == $citySlide->name) : ?>
                                <input type="checkbox" name="city" value="<?= $city->id; ?>" checked> <?= $city->name; ?>
                            <?php else: ?>
                                <input type="checkbox" name="city" value="<?= $city->id; ?>"> <?= $city->name; ?>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    <?php endforeach; ?>
                </div>
                <div class="operations">
                    <a href="/admin/slides/delete?id=<?= $slide->id; ?>" title="Delete" aria-label="Delete" data-pjax="0" data-confirm="Are you sure you want to delete this item?" data-method="post"><span class="glyphicon glyphicon-trash"></span></a>
                </div>
            </div>
        <?php ActiveForm::end() ?>
    <?php endforeach; ?>
    </div>

</div>
