
# Password Validator script
A Bash script that checks whether a password is valid.


## Password Policy:
- Length – minimum of 10 characters.
- Contain both alphabet and number.
- Include both the small and capital case letters.
## How to use:
Clone the project:

```bash
  git clone https://github.com/orbashan94/password-validator.git
```

Run on cmd: 

```bash
  .{pathToFile}/password-validator.sh "MyP@ssw0rd!"
```


## Output:
- Color the output green if it passed the validation and red if it didn’t.<br>
- Return exit code 0 if it passed the validation and exit code 1 if it didn’t.<br>
- If validation failed, the script provide a message explaining why.
