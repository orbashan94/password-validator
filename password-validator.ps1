if ($args[0] -eq "-f") {
    #Read password from file
    $filePath = $args[1]
    $password = Get-ChildItem $filePath | Get-Content
}
else {
    #Read password from user input
    $password = "$args"
}

function PrintOutput([int]$x, [string]$message) {
    # The function prints the correct message for each case
    # if the password is valid: 
    #     exit code - 0
    #     output color - green
    # if the password is not valid:
    #     exit code - 1
    #     output color - red

    if ($x -eq 0) {
        Write-Host -ForegroundColor Green $message
        exit 0
    }
    else {
        Write-Host -ForegroundColor Red $message
        exit 1
    }
}

#Check if password length is less than 10 characters
if ($password.Length -lt 10) {
    PrintOutput 1 "Password is less than 10 characters"
}

#Check if password does not contain alphabet and number
if ( ! (($password -cmatch "[a-zA-Z]") -and ($password -cmatch "[0-9]"))) {
    PrintOutput 1 "Password must contain alphabet and number"
}

#Check if password does not include both small and capital case letters.
if ( ! (($password -cmatch "[a-z]") -and ($password -cmatch "[A-Z]"))) {
    PrintOutput 1 "Password must include both small and capital case letters"
}

#If we got here, password is valid
PrintOutput 0 "Password is valid!"