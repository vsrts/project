<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 01.04.2019
 * Time: 16:10
 */

namespace app\commands;

use yii\console\Controller;
use Yii;
use app\models\User;

class RbacController extends Controller
{
    public function actionInitRbac()
    {
        $auth = Yii::$app->getAuthManager();
        $auth->removeAll();

        $userRoleRule = new UserRoleRule;
        $auth->add($userRoleRule);

        $superuser = $auth->createRole(User::ROLE_SUPERUSER);
        $superuser->ruleName = $userRoleRule->name;
        $auth->add($superuser);
        $registered = $auth->createRole(User::ROLE_REGISTERED);
        $registered->ruleName = $userRoleRule->name;
        $auth->add($registered);
        $guest = $auth->createRole(User::ROLE_GUEST);
        $guest->ruleName = $userRoleRule->name;
        $auth->add($guest);

        $auth->addChild($registered, $guest);
        $auth->addChild($superuser, $registered);
    }
}