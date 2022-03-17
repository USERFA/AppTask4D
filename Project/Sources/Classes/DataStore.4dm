Class extends DataStoreImplementation
//returns the number of dc forming this ds
Function countDataClasses
	ARRAY TEXT:C222($_dc; 0)
	OB GET PROPERTY NAMES:C1232(This:C1470; $_dc)
	$0:=Size of array:C274($_dc)
	
	//returns a list of dcs
Function getDataClassesList
	C_COLLECTION:C1488($0)  //may have different types unlike arrays
	ARRAY TEXT:C222($_dc; 0)
	OB GET PROPERTY NAMES:C1232(This:C1470; $_dc)
	$collection:=New collection:C1472
	ARRAY TO COLLECTION:C1563($collection; $_dc)
	$0:=$collection
	
	//counts the # of records in each dc
Function countRecords
	C_COLLECTION:C1488($0)
	$collection:=New collection:C1472
	$dc:=This:C1470.getDataClassesList()
	For each ($dcName; $dc)  //iterates over the list of dataclasses
		$dcInfo:=New object:C1471
		$dcInfo.name:=$dcName
		$dcInfo.nbRecords:=This:C1470[$dcName].all().length
		$collection.push($dcInfo)  //add a new dc
	End for each 
	$0:=$collection
	
	
	
	