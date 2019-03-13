<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "slide_only".
 *
 * @property int $id
 * @property int $slide_id
 * @property int $city_id
 *
 * @property Slides $slide
 */
class SlideOnly extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'slide_only';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['slide_id'], 'required'],
            [['slide_id', 'city_id'], 'integer'],
            [['slide_id'], 'exist', 'skipOnError' => true, 'targetClass' => Slides::className(), 'targetAttribute' => ['slide_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'slide_id' => 'Slide ID',
            'city_id' => 'City ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSlide()
    {
        return $this->hasOne(Slides::className(), ['id' => 'slide_id']);
    }
}
