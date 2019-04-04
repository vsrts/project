<?php

namespace app\modules\admin\controllers;

use Yii;
use app\modules\admin\models\Profile;
use app\modules\admin\models\Points;

class ProfileController extends AppAdminController
{
    public $layout = 'manager';

    public function actionIndex(){
        $profile = Profile::findOne(['user_id' => Yii::$app->user->getId()]);

        $points = Points::find()->with('cities')->where(['manager' => Yii::$app->user->getId()])->all();



        if ($profile->load(Yii::$app->request->post())) {
            $isValid = $profile->validate();
            if ($isValid) {
                $profile->save(false);
            }
        }

        return $this->render('index', compact('profile', 'points'));
    }

    public function actionSave(){
         //тут создаём модель на основе сохраненной формы и сохраняем
    }
}