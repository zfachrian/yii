<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "item".
 *
 * @property int $id
 * @property string $name
 * @property int|null $price
 * @property int|null $category_id
 * @property int|null $created_at
 * @property int|null $update_at
 * @property int|null $created_by
 * @property int|null $update_by
 */
class Item extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'item';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['price', 'category_id', 'created_at', 'update_at', 'created_by', 'update_by'], 'integer'],
            [['name'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'price' => 'Price',
            'category_id' => 'Category ID',
            'created_at' => 'Created At',
            'update_at' => 'Update At',
            'created_by' => 'Created By',
            'update_by' => 'Update By',
        ];
    }
}
