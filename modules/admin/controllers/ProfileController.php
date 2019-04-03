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

        $points = Points::findOne(['manager' => Yii::$app->user->getId()]);

        if ($profile->load(Yii::$app->request->post())) {
            $isValid = $profile->validate();
            if ($isValid) {
                $profile->save(false);
            }
        }

        return $this->render('index', compact('profile', 'points'));
    }
}