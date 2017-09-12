Create A New Directory
The simplest way to create a new directory is as follows:
mkdir <foldername>

 copy a folder with files in that folder into another folder
 cp -R source destination/
If destination doesn't exist, it will be created.
R means "copy directories recursively"

create a soft link:
[root@localhost test]# ln -s log2013.log link2013
[root@localhost test]# ll
lrwxrwxrwx 1 root root     11 12-07 16:01 link2013 -> log2013.log

delete all the soft link under certain path, we should go to that path first
find -type l -delete [PATH]

delete a softlink
unlink – deletes a single specified file name including symbolic links.


how to solve Permission denied
在linux下执行sh文件时提示下面信息：
-bash: ./xx.sh: Permission denied
解决：
chmod 777 xx.sh

linux check pid
top


linux quit without save
!q



linux run process on background
Execute the script with redirection
$ nohup sh custom-script.sh > custom-out.log &
Execute the script without redirection
$ nohup sh custom-script.sh &



get stand out put by pid
You can get that process's standard file descriptors, e.g. stdout:
tail -f /proc/<pid>/fd/1

