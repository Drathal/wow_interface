ECHO OFF

SET DAY=%DATE:~0,2%
SET MONTH=%DATE:~3,2%
SET YEAR=%DATE:~7,4%
SET HH=%TIME:~-11,2%
SET MM=%TIME:~-8,2%
SET SS=%TIME:~-5,2%

SET FILE="C:\World of Warcraft\WTFbackup-%DAY%-%MONTH%-%YEAR%_%HH%-%MM%-%SS%.zip"
7z.exe a -tzip %FILE% "C:\World of Warcraft\WTF\*" -mx2

"C:\World of Warcraft\World of Warcraft Launcher.exe"



