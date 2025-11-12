
@echo off
echo Starte Administration H2 Web Console...
"D:\IHK-Projektarbeit_13-10-2025_bis_24-10-2025\01_Implementierung\Projekt_gwf2H2\ressources\jdk-17.0.13+11\bin\java.exe" -cp "D:\IHK-Projektarbeit_13-10-2025_bis_24-10-2025\01_Implementierung\Projekt_gwf2H2\ressources\jars\h2-2.4.240.jar" org.h2.tools.Server -web -webAllowOthers -webPort 8082
pause
