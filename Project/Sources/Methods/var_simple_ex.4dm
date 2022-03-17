//%attributes = {}
//var $e : Object  //$e := new Object 
//the declaration above does create a new objext but it's not clear if it's an entity
var $e : cs:C1710.TaskEntity  //classstore
//var $es : Object  // an entity selection is declared the same way
var $es : cs:C1710.TaskSelection

$es:=ds:C1482.Task.all()
$e:=$es.first()

