//%attributes = {}
//creating and saving an entity using orda and passing it to the add_user form
C_OBJECT:C1216($context)
$context:=New object:C1471()
//data binding 
$context.entity:=ds:C1482.User.new()


//creating the dialog to display the form

$refWindow:=Open form window:C675("add_user")
DIALOG:C40("add_user"; $context)  //passing the object to the form
CLOSE WINDOW:C154()
If (ok=1)
	$context.entity.save()  //save the entity to the dc
End if 

