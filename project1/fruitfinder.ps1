cd C:\it3038c-scripts\project1 ##Change directory to repository

$files = Get-ChildItem  ##Gets content from project1.txt and puts it into files variable



foreach ($file in $files) {        ##Searches for Cherry, Apple, and Peach in the massive text file, and then outputs which line they are on
    $content = Get-Content $file
    $content.Split("*") | Select-String Cherry, Apple, Peach | Select-Object Line
}

##All of this was written on my own. I did ask for help regarding a foreach loop