<?php


class StudentController extends Controller
{
	/**
	 * Declares class-based actions.
	 */

	public $layout='//layouts/triplets';

	
	public function actionAdd()
	{
		$this->layout='column1';
		$model = new StudentForm;
		var_dump($_POST);
		if(isset($_POST['StudentForm']))
		{
			var_dump($_POST);
			$model->attributes = $_POST['StudentForm'];
			if($model->validate())
			{
				$connection = Yii::app()->db;

				$sql = "INSERT INTO student(firstname, lastname, email ,gender) VALUES(:firstname, :lastname, :email, :gender)";
				$command=$connection->createCommand($sql);
				$command->bindValue(":firstname", $model->firstname);
				$command->bindValue("lastname", $model->lastname);
				$command->bindValue(":email", $model->email);
				$command->bindValue(":gender", $model->gender);
				$command->execute();


				Yii::app()->user->setFlash('student','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('student',array('model'=>$model));
	}


	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		$this->layout='column1';
		$connection = Yii::app()->db;
		$command = $connection->createCommand('select * from student');
		$record = $command->queryAll();
		//var_dump($record);

		$this->render('index',array('record'=> $record));
	}





}