Class extends DataClass

Function getNbUsersGreaterThen1
	$formula:=Formula:C1597(This:C1470.users.length>=1)  //This in this case reffers to the whole table selection
	$0:=This:C1470.query($formula)  //This in this case reffers to the current selection using the fct
	
Function getNbUsersGreaterThan
	C_LONGINT:C283($1)
	C_OBJECT:C1216($settings)
	$settings:=New object:C1471
	$settings.args:=New object:C1471("limit"; $1)  //array of arguments having as an att in this case limit which is equal to the marhe inputted by the user $1
	$formula:=Formula:C1597(This:C1470.users.length>=$1.limit)  //if this line was directly inserted inside the query the the $1 will be called here
	$0:=This:C1470.query($formula; $settings)  //but the formula is itself a param of the query so the $1 will be called here
	
	
	//the attribute of settings is an object having as a param a int type(limit) that will have the value of the input (line 11)
	//$1.limit refers to the object args ?? it's not an int
	
Function create
	C_OBJECT:C1216($1)
	C_OBJECT:C1216($0)
	$entity:=This:C1470.new()
	$entity.fromObject($1)  //filling the entity with the object content (matching att by att)
	$entity.save()
	$0:=$entity
	ALERT:C41("Task "+$entity.label+" was added to your list")