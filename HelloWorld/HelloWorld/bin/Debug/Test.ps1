$test = .\HelloWorld.exe "Cthulhu"
if ($test -eq "Hello Cthulhu")
{
    Write-Error "We don't want the world to end!"
}