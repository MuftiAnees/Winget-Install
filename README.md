# A Script to Install Common Applications using Winget

1.  Description
    ------------
    This script automates the installation of commonly used Windows applications using the Winget package manager.  It's designed to help you quickly set up a new Windows PC with your favorite tools.

2.  Prerequisites
    -------------
    -   Windows 10 or later
    -   Winget (Windows Package Manager) -  Usually included with Windows 11 and available for Windows 10.

3.  Installation
    ----------
    To use this script:

    1.  Clone this repository to your local machine.
    2.  Open PowerShell as an administrator.
    3.  Navigate to the directory where you cloned the repository.
    4.  Run the script: `.\install_apps.ps1`

4.  Usage
    -----
    -   Run the script, and it will install the applications listed within.
    -   You may be prompted to provide administrator credentials.
    -   The script will display the installation progress.

5.  Customization
    -----------
    -   Edit the `install_apps.ps1` file to add or remove applications from the installation list.
    -   Applications are installed using their Winget package identifiers.  You can find these by using `winget search <app_name>`.

6.  Troubleshooting
    ---------------
    -   **Winget Not Found:** Ensure Winget is installed correctly.  It's usually included with App Installer from the Microsoft Store.
    -   **Installation Errors:** Check the script output for specific error messages.  Some applications may require specific system configurations.
    -   **Permissions:** Run PowerShell as an administrator to avoid permission issues.
    -   **Script Blocked:** If the script is blocked, you may need to adjust PowerShell's execution policy.  A temporary bypass can be done with:
        `Set-ExecutionPolicy Bypass -Scope Process`
        **WARNING:** This is a temporary setting.  For a more permanent solution, consider setting a less restrictive policy (e.g., `RemoteSigned`) after understanding the security implications.

7.  Contributing
    ------------
    -   Feel free to contribute to this script by submitting pull requests.
    -   Please follow the existing script style.

8.  License
    -------
    -   This script is released under the MIT License
    
    Disclaimer:
    -----------
    Use this script at your own risk.  The author is not responsible for any issues caused by the installation of these applications.  Always review the script before running it.
"@

# Define the output file path
$outputFilePath = "Readme.txt"

# Write the content to the file
$readmeContent | Out-File -FilePath $outputFilePath -Encoding utf8

# Output a success message
Write-Host "Readme.txt file created successfully at $($outputFilePath)" -ForegroundColor Green
