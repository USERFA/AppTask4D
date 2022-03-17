//%attributes = {}
$form:=New object:C1471("task"; New object:C1471())
//the object form has as an attribute an object task



$ref:=Open form window:C675("add_task_usimg_dcs"; Sheet form window:K39:12)
DIALOG:C40("add_task_usimg_dcs"; $form)  //form is used as a param of the dialog
CLOSE WINDOW:C154($ref)

If (ok=1)
	$t:=ds:C1482.Task.create($form.task)  //create the entity task
End if 