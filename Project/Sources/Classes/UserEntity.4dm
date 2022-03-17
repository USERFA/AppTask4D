Class extends Entity

Function nbUsersWorkingOnTask
	//C_LONGINT($0)
	//ARRAY TEXT($users; 0)
	//$users:=ds.Users.task.all()
	//$nb:=Num($users.length)
	//$0:=$nb
	C_LONGINT:C283($0)
	$0:=Num:C11(This:C1470.task.users.length)  //this line does the same job as the one below since This(ds.User.Task is an entity) and we already defined the fct doing the count in that class
	$0:=Num:C11(This:C1470.task.getNbUsers())
	
Function getFullName
	C_TEXT:C284($0)
	$fullname:=String:C10(This:C1470.firstName+" "+This:C1470.lastName)  //This == dc.User
	
Function getTaskLabel  //the one the current user is working on
	$0:=This:C1470.task.getFullName()