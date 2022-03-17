//%attributes = {}
$rep:=Request:C163("Add a new task: "; "")
If (ok=1) & ($rep#"")  //if the button is clicked and the value is not empty
	$task:=New object:C1471
	$task.label:=$rep
	$t:=ds:C1482.Task.create($task)  //#new() general fct
Else 
	ALERT:C41("please enter a new label for your task!")
End if 
