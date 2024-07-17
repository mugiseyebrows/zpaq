@echo off
zpaq add archive.zpaq zpaq.exe
zpaq extract archive.zpaq zpaq.exe -to zpaq.exe.new
fc /b zpaq.exe zpaq.exe.new
del /f /q zpaq.exe.new archive.zpaq