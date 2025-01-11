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
<br>
   
2. Next Create the VM using Azure CLI Script    
<br>
<img width="2116" alt="Screenshot 2025-01-10 at 16 15 40" src="https://github.com/user-attachments/assets/8493b32c-cdc4-4b82-9db6-f5399353e5b4" />
<br>
<br>

4. Downlaod the Remote-SSH Extension from the Extensions library.  
<br>
<img width="1428" alt="Screenshot 2025-01-10 at 17 45 22" src="https://github.com/user-attachments/assets/f387b4de-638f-4bf9-b6d2-f8baa0061265" />  
<br>
<br>

3. Create a Remote Connection on VS Code > Add a new ssh host  
<img width="1432" alt="Screenshot 2025-01-10 at 17 28 33" src="https://github.com/user-attachments/assets/d0ee6783-5c30-4816-9afc-1c1c4eb03de6" />  
<img width="1426" alt="Screenshot 2025-01-10 at 17 40 24" src="https://github.com/user-attachments/assets/cbf20e3c-a13f-46fd-8e46-4dc65c926016" />  
<br>
<br>

4. Fill in using
   
   ``` Bash
   ssh user@hostname -i filepath

   ```
<img width="646" alt="Screenshot 2025-01-10 at 17 52 03" src="https://github.com/user-attachments/assets/160fc959-9231-49a9-a9c9-4c484c76e6f7" />  
<br>
<br>

4.1 Ensure you have Port 22 Open from the VMs NSG if you run into any operation errors.  


4.2 Furthermore ensure you change the Private key File permissions using
``` Bash
chmod 400 /filepath/MySSHKey.pem
```
<br>
<br>   


5. Connect to machine - The bottom left contains the IP of the machine VS Code is running on.
   <br>  
  <img width="1009" alt="Screenshot 2025-01-10 at 18 44 57" src="https://github.com/user-attachments/assets/f36543d3-8876-47f9-a254-91d66940e629" />  
<br>
<br>

7. Open a new terminal by running the command "Terminal: Create New Terminal." From the terminal, run the following commands to update the packages in your Linux VM and install Node.js  
   ``` Bash
   sudo apt-get update
   ```
   Then
   ``` Bash
   curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
   ```
   ``` Bash
   sudo apt-get install nodejs -y
   ```

   <br>

8. Install Express Generator  
  ``` bash
      sudo npm install -g express-generator
  ```
   <br>
   
9. Create a new Application Using myExpressApp  
``` Bash
 express myExpressApp --view pug
```
<br>

10. Open the application files by clicking Open Folder in the Explorer view. Select "myExpressApp" in the dropdown to open the folder in your VS Code window.  
    Click OK
    <img width="981" alt="Screenshot 2025-01-11 at 14 16 15" src="https://github.com/user-attachments/assets/eb05c25c-a27e-4d8f-9dea-5dc0f3e9c9c4" />

11. Run to install dependencies  
    ``` bash
    npm install
    ```

12. Start the App
    ```bash
    npm start
    ```
The application will run on your VM's http://localhost:3000. 

13. To browse this application on your local machine. Search Focus on Port  
    
<img width="653" alt="Screenshot 2025-01-11 at 14 20 21" src="https://github.com/user-attachments/assets/c6bec57b-d057-49f7-9f95-85c272572067" />

Click Forward Port on ports and write 3000 in the box  
<img width="714" alt="Screenshot 2025-01-11 at 14 23 27" src="https://github.com/user-attachments/assets/f1e2532a-8e9f-4728-8058-9058b8ca6fc5" />

14. Open In Browser  
    
<img width="325" alt="Screenshot 2025-01-11 at 14 23 47" src="https://github.com/user-attachments/assets/59954a10-d88b-45bd-9c28-70d57ef64982" />

<img width="1105" alt="Screenshot 2025-01-11 at 14 24 27" src="https://github.com/user-attachments/assets/79b62617-64fe-4615-b555-94f0169f3b96" />
<br>
<br>

15. Open app.js and set breakpoint on line 11  
    
<img width="969" alt="Screenshot 2025-01-11 at 14 28 11" src="https://github.com/user-attachments/assets/7d391a25-8f22-4caf-aa22-6f6389e4f275" />
<br>
<br>

17. Click on the run and debug on the application and then you can inspect the variables. The debug section is run using the controller above.  
    
    <img width="704" alt="Screenshot 2025-01-11 at 14 29 36" src="https://github.com/user-attachments/assets/afdbaa42-26a9-419b-9c9d-266ab928e90a" />
<br>
<br>

18. If you start writing code just like on vscode it will trigger the intelli sense and allow you to carry on editing on the remote machine.  
    
    <img width="535" alt="Screenshot 2025-01-11 at 14 33 24" src="https://github.com/user-attachments/assets/61ae70b1-bc37-4dfa-89e3-0a814005225b" />

    


   
