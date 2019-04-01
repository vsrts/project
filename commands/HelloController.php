<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\commands;

use yii\console\Controller;
use yii\console\ExitCode;
use Yii;
use app\rbac\UserRoleRule;
use app\models\User;

/**
 * This command echoes the first argument that you have entered.
 *
 * This command is provided as an example for you to learn how to create console commands.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class HelloController extends Controller
{
    /**
     * This command echoes what you have entered as the message.
     * @param string $message the message to be echoed.
     * @return int Exit code
     */
    public function actionIndex($message = 'hello world')
    {
        echo $message . "\n";

        return ExitCode::OK;
    }

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
