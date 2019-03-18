Remove-Item -ErrorAction Ignore app.exe
Remove-Item -ErrorAction Ignore rsrc.syso
rsrc -manifest app.manifest -o rsrc.syso
go build -ldflags="-H windowsgui" -o app.exe .
./app.exe | Out-Null
Remove-Item -ErrorAction Ignore app.exe
Remove-Item -ErrorAction Ignore rsrc.syso
