$Port = 8081
$VmServicePort = 8181

$processIds = @(Get-NetTCPConnection -LocalPort @($Port, $VmServicePort) -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty OwningProcess -Unique)

foreach ($processId in $processIds) {
    if ($processId) {
        & taskkill /PID $processId /F | Out-Null
    }
}

dart_frog dev --port $Port --hostname 0.0.0.0
