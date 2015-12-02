# Config
$Username = "barryftpsite\tran_barry"
$Password = "Passw0rd;"
$LocalFile = "C:\Temp\HelloWorld.zip"
$RemoteFile = "ftp://waws-prod-bay-043.ftp.azurewebsites.windows.net/Files/HelloWorld.zip"
 
# Create FTP Rquest Object
$FTPRequest = [System.Net.FtpWebRequest]::Create("$RemoteFile")
$FTPRequest = [System.Net.FtpWebRequest]$FTPRequest
$FTPRequest.Method = [System.Net.WebRequestMethods+Ftp]::UploadFile
$FTPRequest.Credentials = new-object System.Net.NetworkCredential($Username, $Password)
$FTPRequest.UseBinary = $true
$FTPRequest.UsePassive = $true
# Read the File for Upload
$FileContent = gc -en byte $LocalFile
$FTPRequest.ContentLength = $FileContent.Length
# Get Stream Request by bytes
$Run = $FTPRequest.GetRequestStream()
$Run.Write($FileContent, 0, $FileContent.Length)
# Cleanup
$Run.Close()
$Run.Dispose()