# Create An Azure Resource Group For all the resources.

New-AzResourceGroup -Name 'Learn-SSH2' -Location 'WestUS3"

# Create the Vm to run the App


New-AzVm -ResourceGroupName 'Learn-SSH2' -Name 'SSH-Test2' -Location 
'WestUS3' -image Debian11 -size Standard_B2s -PublicIpAddressName myPubIP 
-OpenPorts 22 -GenerateSshKey -SshKeyName mySSHKey  

