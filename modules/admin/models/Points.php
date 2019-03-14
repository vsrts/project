<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 14.03.2019
 * Time: 22:25
 */

namespace app\modules\admin\models;

use yii\db\ActiveRecord;

class Points extends ActiveRecord
{
    public function getCities(){
        return $this->hasOne(Cities::className(), ['id' => 'city']);
    }
}