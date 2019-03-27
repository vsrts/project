<?php

namespace app\modules\admin\controllers;

use yii\web\Controller;

class ProfileController extends AppAdminController
{
    public function actionIndex(){
        return $this->render('index');
    }
}