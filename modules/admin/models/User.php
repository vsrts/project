<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property string $username
 * @property string $password
 * @property string $auth_key
 *
 * @property Profile $profile
 */
class User extends \yii\db\ActiveRecord
{
<<<<<<< HEAD
=======

>>>>>>> 36cc9083d0fef92da4b0d14150e1f2d91c00595c
    public $new_password;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
<<<<<<< HEAD
            [['username', 'password',], 'required'],
            [['username', 'password', 'new_password',], 'string', 'max' => 255],
=======
            [['username', 'role'], 'required'],
            [['username', 'new_password',], 'string', 'max' => 255],
            [['new_password'], 'required', 'on'=>'create'],
>>>>>>> 36cc9083d0fef92da4b0d14150e1f2d91c00595c
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'username' => 'Логин',
            'password' => 'Пароль',
            'name' => 'Имя',
            'phone' => 'Телефон',
<<<<<<< HEAD
            'type' => 'Тип пользователя',
            'new_password' => 'Новый пароль',
=======
            'role' => 'Тип пользователя',
            'new_password' => 'Пароль',
>>>>>>> 36cc9083d0fef92da4b0d14150e1f2d91c00595c
        ];
    }

    public function beforeSave()
    {
            if ($this->new_password)
            {
                $this->password = \Yii::$app->security->generatePasswordHash($this->new_password);
            }
            return true;
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProfile()
    {
        return $this->hasOne(Profile::className(), ['user_id' => 'id']);
    }
}
