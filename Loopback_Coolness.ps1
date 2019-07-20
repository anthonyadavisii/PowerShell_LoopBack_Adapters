Import-Module -Name LoopbackAdapter

$val = 0

while($val -lt 19) { 
  $val++ ; 

  # The name for the loopback adapter interface that will be created.
  $loopback_name = "Loopback$val"

  New-LoopbackAdapter -Name $loopback_name -Force

  # Commented this line out but you're probably gonna want it so you don't end up like me
  #Get-NetAdapter $loopback_name | Set-DNSClient –RegisterThisConnectionsAddress $False

  Write-Host $val 
  }

