<?php
    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/inc/header.php');
		include_once ($filepath.'/../classes/ExamTF.php');
	$exm = new Exam();
?>
<style>
	.adminpanel{width:480px;color:#999;margin:20px auto 0;padding:10px;border:1px solid #ddd;}
</style>
<?php
	if($_SERVER['REQUEST_METHOD'] == 'POST'){
		$addQue = $exm->addQuestions($_POST);
	}
	//Get Total Raw...................
	$total = $exm->getTotalRows();
	$next = $total+1;
?>
<style>
	.main h1{

		font-family: "Times New Roman", Georgia, Serif;
		font-size: 30px;
		color:#5e0c17;
	}
</style>
<div class="main">
<h1>Admin Panel - Add Question True/False</h1>
<?php
	if(isset($addQue)){
		echo $addQue;
	}
?>
	<div class = "adminpanel">
		<form action = "" method = "post">
		<table>
			<tr>
				<td>Question No</td>
				<td>:</td>
				<td><input type = "number" value="<?php
						if(isset($next)){
							echo $next;
						}
					?>" name ="quesNo" /></td>
			</tr>

			<tr>
				<td>Question</td>
				<td>:</td>
				<td><input type = "text" name ="ques" placeholder = "Enter Question...." required/></td>
			</tr>

			<tr>
				<td>TRUE</td>
				<td>:</td>
				<td><input  type = "checkbox" name ="ans1" value=True /></td>
			</tr>

			<tr>
				<td>FALSE</td>
				<td>:</td>
				<td><input type = "checkbox" name ="ans2" value=False /></td>
			</tr>



			<input hidden type = "text" name ="ans3" />
            <input hidden type = "text" name ="ans4"/>



			<tr>
				<td>Correct No.</td>
				<td>:</td>
				<td><input type = "number" name ="rightAns" required/></td>
			</tr>

			<tr>
				<td colspan = "3" align = "center" >
					<input type = "submit" value = "Add A Question"/>
			   </td>
			</tr>
		</table>
		</form>
	</div>
</div>
<?php include 'inc/footer.php'; ?>
