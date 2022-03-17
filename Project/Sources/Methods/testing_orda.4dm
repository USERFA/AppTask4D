//%attributes = {}

$task:=ds:C1482.Task.new()  //empty new entity
$task.label:="bla bla"
$task.status:="Done"  //no need to fill all the other fields (their values will be set to undefined)
$task.save()

$userselection:=ds:C1482.User.newSelection()  //new empty selection
$user:=ds:C1482.User.new()
$user.firstName:="Khalid"
$user.role:="CEO"
$user.save()
$userselection.add($user)  //to save the entity in the selection
$x:=$userselection.length  //the size of our created selection


//a entity selection( set of records) is the result of querying a dataclass
$tasks:=ds:C1482.Task.query("priority = :1"; "High")
$tasks:=$tasks.orderBy("label").slice(-5)  //to get the last 5 entities of the table

$task_users:=ds:C1482.Task.query("priority = :1"; "High").users  // the name of the link becomes an att of the table as well
$user_tasks:=ds:C1482.User.all().task  // the many to one link name becomes an att of this table too (tasks of the users)
