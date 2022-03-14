//%attributes = {}
$tasks:=ds:C1482.Task.all()
For each ($task; $tasks)
	$task.priority:="Low"
	$task.save()
End for each 