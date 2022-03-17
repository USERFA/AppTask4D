//%attributes = {}

$f:=Formula:C1597((This:C1470.users.length)>=0)  //This points to the current record, it's followed by the name of the link correspoding to the current used table(Task)
//the formula used in the query will return all the task having as min number of users working on it 1
$t:=ds:C1482.Task.query($f)
$sel_size:=$t.length

//3- now we want to define a dc function that will do the same job as the query fct $t:=ds.Task.query($f)
//to do that, we should create a new Task class (dc)
$ts:=ds:C1482.Task.getNbUsersGreaterThen1()  //no parameters were passed to this fct
$tsp:=ds:C1482.Task.getNbUsersGreaterThan(0)


$task:=$t.first()  //first record of this selection
$nb:=Task_getnbUsers($task)  //get the number of the users working on the same task

//1- we want to get the same previous result by using dcs
$nb_entity:=$task.getNbUsers()  //this method belong to the class Task => define the class (entity)
//2- we will try to use the same fct but on an entity selection
//we create a new class TaskSelection that will exetend entityselection class (selection)
$nb_selection:=$t.getNbUsers()