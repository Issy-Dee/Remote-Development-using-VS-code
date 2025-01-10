# Remote-Development-using-VS-code
_Remote Development using VS code to a Linux Machine in Azure._

Suppose you work at an agency that does software consulting around many different languages and runtime environments. All developers are using Visual Studio Code. The agency has dozens of projects in progress, each with its own configuration and runtime requirements. Developers at your agency need to work on any project without having to set up or configure their machines first. Here I will show how to seamlessly develop on a remote machine using the Visual Studio Code Remote - SSH extension. I will run and debug code located on a remote machine, while locally using Visual Studio Code's full feature set.

### Objectives
Set up an SSH host on a remote machine using Azure CLI
Configure a project on a remote machine
Install the Visual Studio Code Remote - SSH extension
Run and debug code while connected over SSH

### Prerequisites
Basic knowledge of software development, such as what it means to run and debug code
Basic familiarity with the Visual Studio Code editor



###Steps

1. First you must create a Resource group where your VM will reside

<img width="1104" alt="Screenshot 2025-01-07 at 18 16 57 copy" src="https://github.com/user-attachments/assets/72c5215f-b0b6-481e-8558-a47862c6478c" />

   
2. Next Create the VM using Azure CLI Script


<img width="2116" alt="Screenshot 2025-01-10 at 16 15 40" src="https://github.com/user-attachments/assets/21234ee4-14db-4a48-855a-bbb01c1eec02" />

3. Create a Remote Connection on VS Code
<img width="1432" alt="Screenshot 2025-01-10 at 17 28 33" src="https://github.com/user-attachments/assets/d0ee6783-5c30-4816-9afc-1c1c4eb03de6" />

4. 
