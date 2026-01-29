$Port = 8081

$processId = netstat -ano | findstr ":$Port" | ForEach-Object {
    ($_ -split '\s+')[-1]
} | Select-Object -First 1

if ($processId) {
    & taskkill /PID $processId /F
}

dart_frog dev --port $Port --hostname 0.0.0.0
