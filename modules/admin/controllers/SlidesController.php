<?php

namespace app\modules\admin\controllers;

use Yii;
use app\modules\admin\models\Slides;
use app\modules\admin\models\SlideOnly;
use app\modules\admin\models\Cities;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * SlidesController implements the CRUD actions for Slides model.
 */
class SlidesController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }
    public function beforeAction($action) {
        $this->enableCsrfValidation = false;
        return parent::beforeAction($action);
    }

    /**
     * Lists all Slides models.
     * @return mixed
     */
    public function actionIndex()
    {
        $slides = Slides::find()
            ->select('slides.*')
           ->leftJoin('slide_only', 'slide_only.slide_id=slides.id' )
            ->leftJoin('cities', 'slide_only.city_id=cities.id')
            ->with('cities')
            ->all();
        $cities = Cities::find()->all();
        return $this->render('index', compact('slides', 'cities'));
    }

    public function actionDelete($id)
    {
        $onlyModel = SlideOnly::find()->where(['slide_id' => $id])->one();
        $onlyModel->delete();
        $this->findModel($id)->delete();
        return $this->redirect(['index']);
    }

    protected function findModel($id)
    {
        if (($model = Slides::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

}
