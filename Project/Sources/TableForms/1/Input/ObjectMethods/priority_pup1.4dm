Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		ARRAY TEXT:C222(at_priority; 0)
		LIST TO ARRAY:C288("prio"; at_priority)  //convert the enum list to an array
		
	: (FORM Event:C1606.code=On Data Change:K2:15)
		$position:=at_priority
		//Form.priority_pup
		[Task:1]priority:3:=at_priority{$position}
		//ALERT(Form.priority_pup)
End case 