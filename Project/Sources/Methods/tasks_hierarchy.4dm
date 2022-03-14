//%attributes = {}
C_OBJECT:C1216($1; $task)
C_LONGINT:C283($0; $list)
If (Count parameters:C259>0)
	$tasks:=$1
Else 
	$tasks:=ds:C1482.Task.query("ID = :1 and ID_maintask = :2"; [Task:1]ID:1; 0)
End if 

$list:=New list:C375
For each ($t; $tasks)
	If ($t.subTasks.length#0)
		$sublist:=tasks_hierarchy($t.subTasks)
		APPEND TO LIST:C376($list; $t.label; 1; $sublist; False:C215)
	Else 
		APPEND TO LIST:C376($list; $t.label; $t.ID)
	End if 
End for each 
$0:=$list
