# Remote-Development-using-VS-code
_Remote Development using VS code to a Linux Machine in Azure._

![2-ssh-key-authentication](https://github.com/user-attachments/assets/c3bb9b0f-2442-41cf-a4a3-782b3f3d8af2)


Suppose you work at an agency that does software consulting around many different languages and runtime environments. All developers are using Visual Studio Code. The agency has dozens of projects in progress, each with its own configuration and runtime requirements. Developers at your agency need to work on any project without having to set up or configure their machines first. Here I will show how to seamlessly develop on a remote machine using the Visual Studio Code Remote - SSH extension. I will run and debug code located on a remote machine, while locally using Visual Studio Code's full feature set.

### Objectives
Set up an SSH host on a remote machine using Azure CLI
Configure a project on a remote machine
Install the Visual Studio Code Remote - SSH extension
Run and debug code while connected over SSH

### Prerequisites
Basic knowledge of software development, such as what it means to run and debug code
Basic familiarity with the Visual Studio Code editor



### Steps

1. First you must create a Resource group where your VM will reside  
<br>
<img width="1104" alt="Screenshot 2025-01-07 at 18 16 57 copy" src="https://github.com/user-attachments/assets/72c5215f-b0b6-481e-8558-a47862c6478c" />  
<br>
   
2. Next Create the VM using Azure CLI Script    
<br>
<img width="2116" alt="Screenshot 2025-01-10 at 16 15 40" src="https://github.com/user-attachments/assets/8493b32c-cdc4-4b82-9db6-f5399353e5b4" />  
<br>

3. Downlaod the Remote-SSH Extension from the Extensions library.  
<br>
<img width="1428" alt="Screenshot 2025-01-10 at 17 45 22" src="https://github.com/user-attachments/assets/f387b4de-638f-4bf9-b6d2-f8baa0061265" />  

3. Create a Remote Connection on VS Code > Add a new ssh host  
<img width="1432" alt="Screenshot 2025-01-10 at 17 28 33" src="https://github.com/user-attachments/assets/d0ee6783-5c30-4816-9afc-1c1c4eb03de6" />  
<img width="1426" alt="Screenshot 2025-01-10 at 17 40 24" src="https://github.com/user-attachments/assets/cbf20e3c-a13f-46fd-8e46-4dc65c926016" />  
<br>

4. Fill in using
   <br>
   ``` Bash
   ssh user@hostname -i filepath
   ```
<img width="646" alt="Screenshot 2025-01-10 at 17 52 03" src="https://github.com/user-attachments/assets/160fc959-9231-49a9-a9c9-4c484c76e6f7" />  
<br>

5. Ensure you have Port 22 Open from the VMs NSG if you run into any operation errors. Furthermore ensure you change the Private key File permissions using  
<br> 
   ``` Bash
   chmod 400 /filepath/MySSHKey.pem
   ```
<br> 


6. Connect to machine - The bottom left contains the IP of the machine VS Code is running on.
   <br>  
   
  <img width="1009" alt="Screenshot 2025-01-10 at 18 44 57" src="https://github.com/user-attachments/assets/f36543d3-8876-47f9-a254-91d66940e629" />  



