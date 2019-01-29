<?php

namespace app\models;
use Yii;
use yii\db\ActiveRecord;
use yii\base\Model;

class Faq extends ActiveRecord

{

    public static function tableName()
    {
        return 'faq';
    }

    public function rules()
    {
        return [
            [['question', 'autor'], 'required'],
            [['date'], 'safe'],
            [['question', 'answer'], 'string', 'max' => 50],
            [['theme', 'autor', 'status'], 'string', 'max' => 20],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'question' => 'Вопрос',
            'answer' => 'Ответ',
            'theme' => 'Тема',
            'date' => 'Дата',
            'autor' => 'Автор',
            'status' => 'Статус',
        ];
    }
}