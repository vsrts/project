<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "slides".
 *
 * @property int $id
 * @property string $image
 * @property string $code
 *
 * @property SlideOnly[] $slideOnlies
 */
class Slides extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'slides';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['image', 'code'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'image' => 'Изображение',
            'code' => 'Код',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSlideOnlies()
    {
        return $this->hasMany(SlideOnly::className(), ['slide_id' => 'id']);
    }
}
