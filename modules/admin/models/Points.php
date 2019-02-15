<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "points".
 *
 * @property int $id
 * @property string $address
 * @property string $phone
 * @property string $time
 * @property string $mail
 * @property int $frontpad
 * @property int $city
 *
 * @property Cities $city0
 */
class Points extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'points';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['address', 'phone', 'time', 'mail', 'city'], 'required'],
            [['frontpad', 'city'], 'integer'],
            [['address', 'time', 'mail'], 'string', 'max' => 255],
            [['phone'], 'string', 'max' => 20],
            [['city'], 'exist', 'skipOnError' => true, 'targetClass' => Cities::className(), 'targetAttribute' => ['city' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'address' => 'Address',
            'phone' => 'Phone',
            'time' => 'Time',
            'mail' => 'Mail',
            'frontpad' => 'Frontpad',
            'city' => 'City',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCity0()
    {
        return $this->hasOne(Cities::className(), ['id' => 'city']);
    }
}
