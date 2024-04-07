import os, shutil, pathlib

#Process:
#Get list of files in folder
#Get the file extension(s)
#check if a folder exists for the file extension
#if it does move the file to that folder, if it doesn't
#create a folder and move those files into them

#List the contents of the folder and store it in an array
#Include the path of the folder has the files that you want to sort 
path = r''
Folder_Content = []
items = os.listdir(path)
for item in items:
    Folder_Content.append(item)

#Get the file extension(s)
for content in Folder_Content:
    Extension = pathlib.Path(str(content)).suffix
    #check if a folder exists for the file extension
    src = path + '\\' + content
    dest = path + '\\' + Extension
    #if it doesn't create a folder and move those files into them
    if(os.path.isdir(path + '\\' + Extension)) == False:
        os.mkdir(path + '\\' + Extension)
        if(content.endswith(Extension)):
            #print(path + '\\' + content)
            shutil.move(src,dest)
#if it does move the file to that folder
    else:
        if(content.endswith(Extension) and os.path.isfile(src) == True):
            #print(path + '\\' + content)
            #print(content)
            #print("Src:" + src + '\n' + "Dest:" + dest)
            shutil.move(path + '\\' + content,path + '\\' + Extension)

    
