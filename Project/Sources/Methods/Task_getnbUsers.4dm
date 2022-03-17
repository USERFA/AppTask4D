//%attributes = {}
C_OBJECT:C1216($1; $t)  //input type is an object (task)
C_LONGINT:C283($0)  //output type is an int (nb of users working on this task)

$t:=$1  //input
$0:=Num:C11($t.users.length)  //users is the link name + num is used to cast the undefined value to an num value in case the length is null

