README file for MarqueeSignService programs
Created: July 30, 2021
Edited: N/A
Author: Evan McKenzie
Status: Active Program

HOW TO EDIT MARQUEE SIGN SERVICE

1) Uninstall current version
	
	- Uninstall the current version of MarqueeSignservice from the APPSVC server by using an elevated command line prompt and typing two commands
	- First, type       cd C:\Windows\Microsoft.Net\Framework\v4.0.30319       and hit enter (keep in mind the number on the end may change as .Net is updated, try this one first, and then the latest one)
	- Then type       InstallUtil.exe -u "C:\Program Files\MarqueeSign\MarqueeSignService.exe"       and hit enter
	- MarqueeSignService should now say "Disabled" in the status column on the Services page

2) Make edits to MarqueeSign project

	- Move the project off of the APPSVC server, using a remote connection with shared drives works best
	- Open MarqueeSignService solution in Visual Studio (works best in VS2019)
	- Rebuild the project in Debug mode using the Build drop down menu and selecting Configuration Settings
	- Any edits such as adding signs to program or changing display messages is done in the MarqueeSignService.cs file
	- Any edits to the installation properties or configuration are made in the ProjectInstaller.cs file by viewing the designer
	- Once done editing, rebuild the project again in Release mode (again, from the Configuration Settings drop-down option)
	- Move the project back onto the APPSVC server

3) Install new version into Services

	- Open the command line, Services page, and Event Viewer with administrator privileges
	- First, type       cd C:\Windows\Microsoft.Net\Framework\v4.0.30319      and hit enter
	- Then type      InstallUtil.exe "C:\Program Files\MarqueeSign\MarqueeSignService.exe"      and hit enter
	- If the installation fails, try deleting the service one more time with the commands given in Part 1, then reinstall again
	- If the installaion succeeds, go to the Services page to start the service (despite being an Automatic service, it will need to be manually started)
	- Check the Event Viewer for confirmation that the service has started correctly, will be in the Windows Logs - Applications log


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

HOW TO EDIT MARQUEE SIGN CONSOLE APPLICATION

	- All edits to the Console App version of the MarqueeSign program must be made in the Worker.cs file, DO NOT MESS WITH THE PROGRAM.CS FILE
	- Make any necessary edits to the MethodOne() method, save, and rebuild the solution (both Debug and Release mode will work for this application)
	- Run the Program.cs file and the console window will open and begin running the program
	- Do not attempt to run the console application while the service is also running, they will both crash


