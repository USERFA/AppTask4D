//%attributes = {}
For each ($e; ds:C1482.User.all())
	$e.active:=(Random:C100%5#0)  //50% are active
	$e.save()
End for each 