//%attributes = {}
ARRAY TEXT:C222($_dataclass; 0)
OB GET PROPERTY NAMES:C1232(ds:C1482; $_dataclass)
$nb_dataclasses:=Size of array:C274($_dataclass)


$nb:=ds:C1482.countDataClasses()  //this fct cannot be declared in the previous classes, since it;s not a dc, not an entity, nor an entity selection
// => create a DataStoreclass
$nbRecords:=ds:C1482.countRecords()