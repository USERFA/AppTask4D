Class extends Entity

Function getNbUsers
	//C_OBJECT($1; $t) the first param is not necessary, we can directly use this to refer to the current record
	C_LONGINT:C283($0)
	
	//$t:=$1
	//$0:=Num(This.users.length)
	$0:=Num:C11(This:C1470.users.query("active = :1"; True:C214).length)  // ghir active users
	
	//gets the task's label
Function getFullName
	C_TEXT:C284($0)
	$task_name:=String:C10(This:C1470.label)
	If ($task_name#"")
		$0:=$task_name
	End if 
	