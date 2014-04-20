<?php
/* @var $this CityController */
/* @var $model City */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'city-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

        <?php echo $form->errorSummary($model); ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'select country'); ?>
<?php echo $form->dropDownList($model, 'countryid', $country,array('options' => array($countryid=>array('selected'=>true)))); ?>
        <?php echo $form->error($model, 'countryid'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model, 'select state'); ?>
<?php echo $form->dropDownList($model, 'stateid', $state); ?>
<?php echo $form->error($model, 'stateid'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'name'); ?>
<?php echo $form->textField($model, 'name', array('size' => 60, 'maxlength' => 255)); ?>
<?php echo $form->error($model, 'name'); ?>
    </div>

    <div class="row buttons">
    <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
    </div>

<?php $this->endWidget(); ?>
    

</div><!-- form -->
<script type="text/javascript">

    $(document).ready(function() {
        //$('#City_countryid').onchange()
        $('#City_countryid').on('change', function() {
            countryId = this.value; // or $(this).val()
            window.location.href = '<?php //echo $_SERVER['HTTP_HOST'] ;?><?php echo Yii::app()->baseUrl; ?>/index.php?r=city/create&countryid='+countryId;
        });
    });
</script>