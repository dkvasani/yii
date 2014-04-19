<?php
/* @var $this CityController */
/* @var $data City */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('stateid')); ?>:</b>
	<?php echo CHtml::encode($data->stateid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('countryid')); ?>:</b>
	<?php echo CHtml::encode($data->countryid); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />


</div>