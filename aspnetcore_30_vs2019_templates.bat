set /p navn="Name: "
c:
cd\temp
mkdir template
cd template
git clone https://github.com/devcronberg/aspnetcore_30_vs2019_templates.git
cd..
rmdir /q /s c:\temp\%navn%\
mkdir %navn%
cd %navn%
xcopy /s C:\temp\template\aspnetcore_30_vs2019_templates c:\temp\%navn%
del .git*.*
del *.bat
rmdir /q /s c:\temp\template\
start .