# Password validator script
A Powershell script that checks whether a password is valid according to the following rules:
- Length – minimum of 10 characters.
- Contain both alphabet and number.
- Include both the small and capital case letters.

In addition:
- Color the output green if it passed the validation and red if it didn’t.
- Return exit code 0 if it passed the validation and exit code 1 if it didn’t.
- If validation failed, the script provide a message explaining why.
# How to use:
Clone or download source files.<br>
Usage:
```
./password-validator.ps1 "MyP@ssw0rd!"
```
Or, to read password from a file:
```
./password-validator.ps1 -f "/mypath/password.txt"
```
