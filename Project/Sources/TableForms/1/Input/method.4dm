
C_LONGINT:C283(lh_subtasks)
Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		lh_subtasks:=tasks_hierarchy()
	: (FORM Event:C1606.code=On Unload:K2:2)  //memory leak
		CLEAR LIST:C377(lh_subtasks; *)
End case 
