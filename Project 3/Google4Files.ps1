Get-ChildItem -Path (Read-Host -Prompt "Where is this file stored?") ##Change directory to repository where the user requested

$files = Get-ChildItem  ##Gets content from project1.txt and puts it into files variable

$userInput = Read-Host "What are you looking for in this file?"


$answer = Read-Host "Would you like to save the output from this file? (yes or no)"

if ($answer -eq 'yes'){
    foreach ($file in $files) {        ##Searches for what you input in the previous line. Then searches in the massive text file, and then outputs which line they are on
        $content = Get-Content $file
        $content.Split("*") | Select-String $userInput | Select-Object LineNumber, Line | Out-File .\outputFile.txt
    }
}
if ($answer -eq 'no'){
    foreach ($file in $files) {        ##Searches for what you input in the previous line. Then searches in the massive text file, and then outputs which line they are on
        $content = Get-Content $file
        $content.Split("*") | Select-String $userInput | Select-Object LineNumber, Line
}
}


##All of this was written on my own. I did ask for help regarding a foreach loop