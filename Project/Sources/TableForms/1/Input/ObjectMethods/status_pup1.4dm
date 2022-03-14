Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		ARRAY TEXT:C222(at_status; 0)
		LIST TO ARRAY:C288("stats"; at_status)  //convert the enum list to an array
	: (FORM Event:C1606.code=On Data Change:K2:15)
		$position:=at_status
		[Task:1]status:6:=at_status{$position}
		//Form.status:=at_status{$position}
		//ALERT(Form.status)
End case 