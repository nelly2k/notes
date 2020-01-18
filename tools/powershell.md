Install
```dotnet tool install --global PowerShell```


Web request

```
$Uri='https://internalapi.test.int.livehire.com/invoke-lambda'
$Body = @{lambda= 'revelianPositionsUpdate'}

$response = Invoke-WebRequest -Uri $Uri -Body $Body -Method 'POST' -SkipCertificateCheck

echo $response


Invoke-WebRequest -Uri 'https://internalapi.test.int.livehire.com/invoke-lambda' -Body @{lambda= 'revelianPositionsUpdate'} -Method 'POST' -SkipCertificateCheck
```