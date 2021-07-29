$get_run_service =  @{"All_running_service" = Get-Service | Where-Object {$_.Status -eq "Running"} }
$proccess = @{"All_running_proccess" = (Get-Process)}

$get_run_service
$proccess