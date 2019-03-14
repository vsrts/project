<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 14.03.2019
 * Time: 22:45
 */

namespace app\modules\admin\controllers;

use yii\web\Controller;
use app\modules\admin\models\Points;

class PointsController extends Controller
{
    public function actionIndex(){
        $points = Points::find()->with('cities')->all();
        return $this->render('index', compact('points'));
    }
}