
$getProcess = Get-Process chrome | Select-Object Id, Name, StartTime,PagedMemorySize
$hashtable = @{"Id" = ($getProcess.Id[0]); "Process" = ($getProcess.Name[0]);"StartTime" = ($getProcess.StartTime[0]);"PagedMemorySize" = ($getProcess.PagedMemorySize[0])}
$hashtable


