<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "points".
 *
 * @property int $id
 * @property int $city
 * @property string $phone
 * @property string $email
 * @property string $address
 * @property int $filial
 * @property int $status
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
            [['city', 'phone', 'time', 'email', 'address', 'filial', 'manager'], 'required'],
            [['city', 'filial', 'status', 'manager'], 'integer'],
            [['phone', 'second_phone', 'email', 'address', 'time'], 'string', 'max' => 255],
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
            'city' => 'Город',
            'phone' => 'Телефон',
            'second_phone' => 'Дополнительный телефон',
            'email' => 'Email',
            'address' => 'Адрес',
            'time' => 'Время работы',
            'manager' => 'Управляющий',
            'filial' => 'ID филиала',
            'status' => 'Статус',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCities()
    {
        return $this->hasOne(Cities::className(), ['id' => 'city']);
    }

    public function getProfile()
    {
        return $this->hasOne(Profile::className(), ['user_id' => 'manager']);
    }
}
