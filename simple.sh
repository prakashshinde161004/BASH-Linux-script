open_file(){
    ls | more
    read -p "Enter the file name which you want to read: " filename

    file="$filename"
    
    # Check if the file exists
    if [[ ! -f "$file" ]]; then
        echo "File does not exist!"
        return 1
    fi

    cat "$file"sdf

    read -p "Enter word to fetch from the file: " word

    if grep -q "$word" "$file"; then
        echo "Your word found"
    else
        echo "Your word not found"
    fi
    ls
}
crete_new_file(){
read -p "enter the file that u whant to create: " new_file_name
ur_new_file="new_file_name"

if [[ ! -f "ur_new_file"  ]]; then
    echo "your file is alredy exists"
  else
     touch "ur_new_file"  
fi
echo "ur file is create u can see below "
ls

}

delete_the_file(){
 
 read -p "enter the file u whant to delete from ur system:  " file_to_delete
 
deleting_file="$file_to_delete"

if [[ ! -f "$deleting_file" ]]; then
   echo "file is not there "
else
     rm "$deleting_file"
fi
echo "$deleting_file : your file is deleted! from ur system"

ls

}
open_file
delete_the_file
create_new_file

    
 
