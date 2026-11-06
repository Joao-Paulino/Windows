# Windows

PowerShell scripts and registry tweaks for Windows hardening and configuration.

> Test every script and .reg file on a non-production machine first. Registry changes can affect system behaviour, and each Disable file has a matching Enable file to revert it.

## PowerShell execution policy

| Policy | Behaviour |
| --- | --- |
| Restricted | Only interactive commands, no scripts. |
| AllSigned | Only scripts signed by a trusted publisher. |
| RemoteSigned | Scripts downloaded from the Internet must be signed. Local scripts run. |
| Unrestricted | Runs any script, with a warning for scripts from the Internet. |
| Bypass | Nothing is blocked and there are no warnings. |

Check and set the policy:

```powershell
Get-ExecutionPolicy -List
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## Miscellaneous

Add an Azure AD user to the Remote Desktop Users group:

```cmd
net localgroup "Remote Desktop Users" /add "AzureAD\the-UPN-attribute-of-your-user"
```

On a Portuguese Windows, the group name is localized:

```cmd
net localgroup "Utilizadores do ambiente de trabalho remoto" /add "AzureAD\the-UPN-attribute-of-your-user"
```
