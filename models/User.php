<?php

namespace app\models;

use yii\db\ActiveRecord;
use yii\db\Query;

class User extends ActiveRecord implements \yii\web\IdentityInterface
{

    const ROLE_SUPERUSER = 'superuser';
    const ROLE_REGISTERED = 'registered';
    const ROLE_GUEST = 'guest';

    /**
     * Возвращает массив всех доступных ролей.
     * @return array
     */
    static public function roleArray()
    {
        return [
            self::ROLE_SUPERUSER,
            self::ROLE_REGISTERED,
            self::ROLE_GUEST,
        ];
    }

    /**
     * Возвращает роль пользователя по его ID в случае успеха и `false`  в случае неудачи.
     * @param integer $id ID пользователя.
     * @return string|false
     */
    static public function getRoleOfUser($id)
    {
        return (new Query)
            ->select('role')
            ->from(self::tableName())
            ->where(['id' => $id])
            ->scalar();
    }

    public static function tableName()
    {
        return 'user';
    }


    /**
     * {@inheritdoc}
     */
    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    /**
     * {@inheritdoc}
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {

    }

    /**
     * Finds user by username
     *
     * @param string $username
     * @return static|null
     */
    public static function findByUsername($username)
    {
        return static::findOne(['username' => $username]);
    }

    /**
     * {@inheritdoc}
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * {@inheritdoc}
     */
    public function getAuthKey()
    {
        return $this->auth_key;
    }

    /**
     * {@inheritdoc}
     */
    public function validateAuthKey($authKey)
    {
        return $this->auth_key === $authKey;
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return bool if password provided is valid for current user
     */
    public function validatePassword($password)
    {
        return \Yii::$app->security->validatePassword($password, $this->password);
    }

    public function generateAuthKey(){
        $this->auth_key = \Yii::$app->security->generateRandomString();
    }
}
