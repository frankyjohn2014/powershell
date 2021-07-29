$getProcess = Get-Process chrome | Select-Object Id, Name, StartTime,PagedMemorySize

Out-File -FilePath .\get_procces.csv -InputObject ($getProcess | ConvertTo-Csv) -Encoding ASCII -Width 50 -Append
Out-File -FilePath .\get_procces.xml -InputObject ($getProcess | ConvertTo-Xml) -Encoding ASCII -Width 50 -Append
Out-File -FilePath .\get_procces.json -InputObject ($getProcess | ConvertTo-Json) -Encoding ASCII -Width 50 -Append
Out-File -FilePath .\get_procces.yaml -InputObject ($getProcess) -Encoding ASCII -Width 50 -Append


