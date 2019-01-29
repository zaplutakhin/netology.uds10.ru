<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "faq".
 *
 * @property int $id
 * @property string $question
 * @property string $answer
 * @property string $theme
 * @property string $date
 * @property string $autor
 * @property string $status
 */
class Faq extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'faq';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['question', /*'answer', 'theme', 'date'*/ 'autor', /*'status'*/], 'required'],
            [['date'], 'safe'],
            [['question', 'answer'], 'string', 'max' => 50],
            [['theme', 'autor', 'status'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
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
