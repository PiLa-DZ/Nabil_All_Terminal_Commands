 ============================================================================================================================================================================
 || File_System_ | Basic_             | Remove_Directorys_        | Move_Files_               | Read_Files_          | Text_Edit_                | Make_Links_Between_Files_||
 ||              | Make_Directory_    | Remove_Files_             | Rename_File_Or_Directory_ | Write_Files_         | Search_in_files_          | File_Zip_                ||
 ||              | Make_Files_        | Move_Directorys_          | Copy_File_Or_Directory_   | File_Information_    | Search_In_File_System_    |                          ||
 ||______________|____________________|___________________________|___________________________|______________________|___________________________|__________________________||
 +-------------------------------------------------------+ +-------------------------------------------------------+ +-------------------------------------------------------+
 | Basic_                                                | | Copy_File_Or_Directory_                               | | Search_in_files_                                      |
 | pwd                       |                           | | cp F1 F2                  | Copy Files                | | grep Text F               |                           |
 | ls -h                     | Human Readable            | | cp -r D1 D2               | Copy Dires                | | grep -i Text F            | Ignore Case Sensitive     |
 | ls -l                     |                           | +-------------------------------------------------------+ | grep -n Text F            | Show Lines                |
 | ls -a                     |                           | | Read_Files_                                           | | grep -nC 2 Text F         | 2 Lines Before And After  |
 | cd                        |                           | | head F                    | Print First 10 Lines      | | grep -r Text              | All Files                 |
 +-------------------------------------------------------| | head -n 20 F              | Print First 20 Lines      | +-------------------------------------------------------+
 | Make_Directory_                                       | | tail F                    | Print Last 10 Lines       | | Search_In_File_System_                                |
 | mkdir    D                |                           | | tail -n 20 F              | Print Last 20 Lines       | | find .                    |                           |
 | mkdir    D1/D2            |                           | | less F                    | Read all File             | | find . -name "Name"       |                           |
 | mkdir -p D1/D2/D3         |                           | | cat F                     | Print All File Text       | | find . -name "*Name*"     |                           |
 +-------------------------------------------------------| | cat F1 F2                 | Print 2 Files             | | find . -not -name "Name"  |                           |
 | Make_Files_                                           | | cat -n F                  | Show Line Number          | | find . -iname "*Name*"    | Ignore Case Sensitive     |
 | touch F                   |                           | | diff F1 F2                | Compare Files Line By Line| | find . -type d "Name"     | Find Dire                 |
 | touch F1 F2               |                           | | diff -u F1 F2             | Unified                   | | find . -type f "Name"     | Find File                 |
 | touch D/F                 |                           | +-------------------------------------------------------+ | find . -type f -mtime +3  | Run Procces Last 3 Days   |
 | touch D/F1 D/F2           |                           | | Write_Files_                                          | | find . -name "*Name_1*" -or -name "*Name_2*"          |
 +-------------------------------------------------------| | echo Text > F             | Write Text In "File"      | | find . -type f -size +100k -size -1M                  |
 | Remove_Directorys_                                    | | cat F1 F2 F3 > F4         |                           | +-------------------------------------------------------+
 | rmdir D                   | Empty Dire                | | date > F                  | Write Output In "File"    | | Make_Links_Between_Files_                             |
 | rmdir D1 D2               | Empty Dire                | | date >> F                 | Add Output In "File"      | | ln         F1 PATH/F2     | Hard link                 |
 | rm D                      | Empty Dire                | +-------------------------------------------------------+ | ln -s PATH/F1 PATH/F2     | Symbolic link             |
 | rm D1 D2                  | Empty Dire                | | File_Information_                                     | +-------------------------------------------------------+
 | rm -r D                   | Not Empty Dire            | | wc F                      | Word Count                | | File_Zip_                                             |
 | rm -r *                   | Remove All Files And Dire | |                           | Lines & Words & Byts      | | gzip F                    | Delete Original File      |
 +-------------------------------------------------------| | ls -l | wc -l             | Show how many             | | gzip -k F                 | Keep Original File        |
 | Remove_Files_                                         | |                           | Files and Dires           | | gzip -k F1 F2             | Zip Multiple Files        |
 | rm F                      |                           | | du                        | Disk Usage                | | gzip -c F > F.gz          | Keep Original File        |
 | rm F1 F2                  |                           | | du -h                     | Human Readable            | | gzip -v F                 | Show Me What Happened     |
 | rm -v F                   | view what is happened     | | du F                      | Size Of File              | | gzip -d F.gz              | Unzip                     |
 | rm -i F                   | Ask me Y/N                | | du D                      | Size Of Dire              | | zip -r D.zip D            | Zip Dire                  |
 | rm *                      | Remove All Files          | | du -h * | sort -h         | Size Of Files And Sort    | | unzip D.zip -d PATH       | Unzip Dire                |
 | rm -r *                   | Remove All Files And Dire | +-------------------------------------------------------+ | tar -cf D.tar F1 F2 F3    | Zip All Files To Dire.zip |
 +-------------------------------------------------------| | Text_Edit_                                            | | tar -tf D.tar             | List Dire.tar             |
 | Move_Directorys_                                      | | sort F                    | Alphabet Sort             | | tar -xf D.tar             | Unzip Dire.tar            |
 | mv D PATH                 |                           | | sort -n F                 | Numeric Sort              | | tar -xf D.tar -C PATH     | Unzip D.tar In Other PATH |
 +-------------------------------------------------------| | sort -u F                 | Unique                    | +-------------------------------------------------------+
 | Move_Files_                                           | | sort -r F                 | Reverse                   | |                                                       |
 | mv F PATH                 |                           | | uniq F                    | Delete Repeated Lines     | |                                                       |
 | mv F1 F2 F3 PATH          |                           | | sort F | uniq             | Delete Repeated Lines     | |                                                       |
 | mv -v F                   | View what is happened     | | uniq -d F                 | Only Print Duplicate Lines| |                                                       |
 +-------------------------------------------------------| | uinq -u F                 | Only Print Unique Lines   | |                                                       |
 | Rename_File_Or_Directory_                             | | sort F | uinq -c          | How Many Line Duplicate   | |                                                       |
 | mv Old_Name New_Name      |                           | |                                                       | |                                                       |
 =============================================================================================================================================================================

=====================================================================================================================================================================================
= || System_Administrator_And_Permissions_               || = || Computer_                                           || = || Commands_                                           || =
= +-------------------------------------------------------+ = +-------------------------------------------------------+ = +-------------------------------------------------------+ =
= |       Basic_                                          | = |       Basic_                                          | = |       The_Pipe_Command_                               | =
= | whoami                    |                           | = | date                      | Print Full Date           | = |" Note:                                               "| =
= | who                       |                           | = | sleep 2                   | sleep 2 seconds           | = |" Many Command Does not Work With Pipe --> |          "| =
= | su    User                | Stay on the same PATH     | = +-------------------------------------------------------+ = |" Example:                                            "| =
= | su -l User                | Move to default HOME      | = |       Open_Files_Or_Directory_                        | = | echo f1 f2 f3 | rm        | It is Does not Work       | =
= | su -  USer                | Move to default HOME      | = | xdg-open .                | Open "Dire" With Files    | = | echo f1 f2 f3 | xargs rm  | It is Will Work           | =
= | Ctrl+d                    | Logout                    | = | xdg-open "File"           | Open "File" Default Editor| = |" Note:                                               "| =
= | exit                      | Logout                    | = | firefox "File"            | Open "File" With Firefox  | = |" You have to use "xargs" command                     "| =
= | passwd                    | Change password           | = +-------------------------------------------------------+ = +-------------------------------------------------------+ =
= | sudo passwd User          | Change other user password| = |       System_Information_                             | = |       Expansions_                                     | =
= +-------------------------------------------------------+ = | ps                        | Processor Status          | = | *                         |                           | =
= |       Chown_                                          | = | ps ax                     | All Processor Status      | = | *.png                     |                           | =
= | sudo chown User F         | Owner Of This File        | = | ps axww                   | ???                       | = | touch img{001..100}.png   |                           | =
= | sudo chown -R User D      | Owner Of All Files And D  | = | ps axww | sort -i "Text"  |                           | = | touch {a..z}.png          |                           | =
= | groups                    | List groups               | = | ps a                      |                           | = | touch app.{js,py,php}     |                           | =
= | sudo chown User:Group D   | Chenge Group Owner        | = | top                       | Default App               | = | ls app.??                 |                           | =
= +-------------------------------------------------------+ = | htop                      | Download it               | = +-------------------------------------------------------+ =
= |       File_Modes_-rwxr-x--x                           | = | btop                      | Download it               | = |       History_                                        | =
= | -                         | File                      | = +-------------------------------------------------------+ = | history                   |                           | =
= | d                         | Dire                      | = |       System_Control_                                 | = | !"Num"                    | Run "Num" Command         | =
= | l                         | Link                      | = | kill -l                   | Linst commands            | = |                           | From List Of History      | =
= | r                         | Read                      | = | kill -KILL "PID"          | Kill process by ID        | = +-------------------------------------------------------+ =
= | w                         | Write                     | = | killall -KILL "Name"      | Kill process by Name      | = |       Help_                                           | =
= | x                         | Execute                   | = | jobs                      | List Jobs                 | = | man                       |                           | =
= +-------------------------------------------------------+ = | bg "ID"                   | Start Job Background      | = |                           |                           | =
= |       Chmod_                                          | = | fg "ID"                   | Start Job Foreground      | = |                           |                           | =
= | u   | User        |                                   | = | "Command" &               | Start In Background       | = |                           |                           | =
= | g   | Group       |                                   | = +-------------------------------------------------------+ = |                           |                           | =
= | o   | Other       |                                   | = |       Map_Commands_                                   | = |                           |                           | =
= +-----|-------------|-----------------------------------+ = | alias                     | List Alias                | = |                           |                           | =
= | r   | Read        |                                   | = | alias "New_Name"='Command'| Old Command To New Command| = |                           |                           | =
= | w   | Write       |                                   | = | vim ~/.bashrc             | Save Your Command In      | = |                           |                           | =
= | x   | Execute     |                                   | = |                           | ~/.bashrc To Work In      | = |                           |                           | =
= | a   | All         |                                   | = |                           | EveryTime                 | = |                           |                           | =
= +-----|-------------|-----------------------------------+ = |" Note:                                               "| = |                           |                           | =
= | +   | Add Mod     |                                   | = |" Difference Between Single and                       "| = |                           |                           | =
= | -   | Remove Mod  |                                   | = |" Double Quotes in Shell Script                       "| = |                           |                           | =
= | =   | Reset Mod   |                                   | = | alias p2="ls $PWD"        | Translate In First Time   | = |                           |                           | =
=                                                           = | alias p1='ls $PWD'        | Translate In Last Time    | = |                           |                           | =
= =========================================================== +-------------------------------------------------------+ = |                           |                           | =
= || Terminal_                                           || = |       Disk_File_System_                               | = |                           |                           | =
= | clear                     |                           | = | df -h                     | Disk File System          | = |                           |                           | =
= | echo Text                 |                           | = | df -h .                   |                           | = |                           |                           | =
= | Ctrl+d                    | exit                      | = | df -n ~/Desktop           |                           | = |                           |                           | =
= | exit                      | exit                      | =                                                           = |                           |                           | =
=====================================================================================================================================================================================


