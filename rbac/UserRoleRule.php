<?php

namespace app\rbac;

use Yii;
use yii\rbac\Rule;
use app\models\User;

class UserRoleRule extends Rule
{
    /**
     * @inheritdoc
     */
    public $name = 'userRole';

    private $_assignments = [];

    /**
     * @inheritdoc
     */
    public function execute($user, $item, $params)
    {
        if ($role = $this->userRole($user)) {
            switch ($item->name) {
                case User::ROLE_SUPERUSER:
                    return $role == User::ROLE_SUPERUSER;

                case User::ROLE_REGISTERED:
                    return $role == User::ROLE_SUPERUSER || $role == User::ROLE_REGISTERED;

                case User::ROLE_GUEST:
                    return in_array($role, [User::ROLE_SUPERUSER, User::ROLE_REGISTERED, User::ROLE_GUEST]);
            }
        }
        return false;
    }

    /**
     * @param integer|null $userId ID of user.
     * @return string|false
     */
    protected function userRole($userId)
    {
        $user = Yii::$app->user;
        if ($userId === null) {
            if ($user->isGuest) {
                return Users::ROLE_GUEST;
            }
            return false;
        }
        if (!isset($this->_assignments[$userId])) {
            $role = false;
            if (!$user->isGuest && $user->id == $userId) {
                $role = $user->role;
            } elseif ($user->isGuest || $user->id != $userId) {
                $role = User::getRoleOfUser($userId);
            }
            $this->_assignments[$userId] = $role;
        }
        return $this->_assignments[$userId];
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
}