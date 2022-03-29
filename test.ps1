Write-Host "Hello World from $Env:AGENT_NAME."
Write-Host "My ID is $Env:AGENT_ID."
Write-Host "AGENT_WORKFOLDER contents:"
gci $Env:AGENT_WORKFOLDER
Write-Host "AGENT_BUILDDIRECTORY contents:"
gci $Env:AGENT_BUILDDIRECTORY
Write-Host "BUILD_SOURCESDIRECTORY contents:"
gci $Env:BUILD_SOURCESDIRECTORY
Write-Host "Over and out."

$source = "http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-windows-i586.exe"
$destination = $Env:BUILD_SOURCESDIRECTORY+ "\jdk-7u60-windows-i586.exe"
$client = new-object System.Net.WebClient
$client.DownloadFile($source, $destination)
