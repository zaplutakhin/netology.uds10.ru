<?php

/* @var $this yii\web\View */
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

$this->title = 'FAQ';


?>




<div class="site-index">

    <p>
        <?= Html::a('Задать вопрос', ['faq/create'], ['class' => 'btn btn-success']) ?>
    </p>


<ul>
<?php foreach ($faqarray as $faq): ?>
<li>
    <p><b>Вопрос:</b>
<?= Html::encode("{$faq->question}")?>
    </p>
    <p><b>Ответ:</b>
    <?= Html::encode("{$faq->answer}")?>
    </p>
    <p><b>Автор:</b>
    <?= Html::encode ("{$faq->autor} ({$faq->date})") ?>
        <b>Тема:</b>
    <?= Html::encode ("{$faq->theme}") ?>

</p>

</li>
<?php endforeach; ?>
</ul>



</div>
