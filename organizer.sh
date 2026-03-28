/* 
    name: FileOrganizer 
    type: shell script 
    usage: organizes files, compresses files, scripts for organizing files 
    required: none 
    dependencies: none 
*/ 

#!/bin/bash 

echo "File Organizer"; 
echo "1. Organize Files" 
echo "2. Compress Files" 
echo "3. Show File Details" 
echo "4. Exit" 
read choice; 

if [[ "$choice" -eq 1 ]]; then 
    create_dirs Images Documents Videos 
    move_files "*.jpg" Images 
    move_files "*.png" Images 
    move_files "*.pdf" Documents 
    move_files "*.txt" Documents 
    move_files "*.mp4" Videos 
    echo "Files Have Been Organized!"; 
elif [[ "$choice" -eq 2 ]]; then 
    compress_files; 
    echo "Files Have Been compressed!"; 
elif [[ "$choice" -eq 3 ]]; then 
    display_file_details; 
elif [[ "$choice" -eq 4 ]]; then 
    exit; 
else 
    echo "Invalid Option!"; 
fi 

# definitions for functions created in above script for organizing/compressing/displaying files. 

function create_dirs { 
    for dir in $@; do 
        mkdir $dir /$dir; 
    done 
} 

function move_files { 
    for file in $1; do 
        mv $file $2; 
    done; 
} 

function compress_files { 
    tar -cf file.tar.gz Images Documents Videos; 
} 

function display_file_details { 
    ls -l; 
} 