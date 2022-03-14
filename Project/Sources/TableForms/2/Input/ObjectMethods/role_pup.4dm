Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		ARRAY TEXT:C222(at_role; 0)
		LIST TO ARRAY:C288("roles"; at_role)  //convert the enum list to an array
		
	: (FORM Event:C1606.code=On Data Change:K2:15)
		$position:=at_role
		Form:C1466.role:=at_role{$position}
		
End case 