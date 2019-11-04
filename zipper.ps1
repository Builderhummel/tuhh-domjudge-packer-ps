$firstname = Read-Host -Prompt "First Name:"
$lastname = Read-Host -Prompt "Last Name"
$input_path = Read-Host -Promp FilePath:

$filenamepath = (Get-Item $input_path ).Basename
$zipname = $filenamepath + "_" + $firstname + "_" + $lastname + ".zip"
$destpath = ((Split-Path -Path $input_path) + $zipname)

Compress-Archive -Path ($input_path) -DestinationPath $destpath.Substring(1)