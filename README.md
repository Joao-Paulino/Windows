# Windows

PowerSheel Scripts and Tools

Execution Policy    Level of Security 
Restricted          Will only allow interactive shell execution.
AllSigned           Runs only scripts with a digital signature. Executing a script for the first time will prompt a trust publisher message.
RemoteSigned        All scripts from the Internet must be signed.
Unrestricted        Allows any script execution. Scripts from the Internet must be trusted.
ByPass              Every script execution must be validated by the user.

Miscellaneous
Add Azure User to Remote Users Group

net localgroup "Remote Desktop Users" /add "AzureAD\the-UPN-attribute-of-your-user"

net localgroup "Utilizadores do ambiente de trabalho remoto" /add "AzureAD\the-UPN-attribute-of-your-user"
