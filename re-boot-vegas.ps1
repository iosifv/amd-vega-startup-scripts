$d = Get-PnpDevice| where {$_.friendlyname -like "Radeon RX Vega*"}
$d  | Disable-PnpDevice -Confirm:$false
$d  | Enable-PnpDevice -Confirm:$false
