# CommonScripts
Some useful scripts.

## search.py
**说明**
该脚本用于在制定目录及其子目录中查找[含有关键字的文件]

**使用**
```
python search.py directory_path keyword
```

**博文地址**
http://blog.csdn.net/timberwolf_2012/article/details/43816899

## convert.sh
**说明**
该Shell脚本用于 将Windows下可用源码 转换为 Linux下可用源码。

Windows下编写的代码（如C\C++\Java等）放到Linux下不能直接编译， 因为主要存在两个问题：
1. Windows和Linux的行尾符不同， Windows下行尾符是"\n\r"， 而Linux的行尾符是"\n"
2. Windows下编码通常是GB2312, 而Linux中的编码通常是UTF-8。

所以编写了这个脚本文件用于将Windows下编写的源码转化为Linux下可用的源码，该脚本文件可以将 指定目录及其子目录 下指定 后缀名 的源文件进行转换。

**使用**
```
sudo apt-get install dos2unix
bash trans.sh 指定文件夹 要转换文件的拓展名
```

例如，将/home文件夹及其子文件下所有java源文件进行转换
```
bash trans.sh /home java
```

**博文地址**
http://blog.csdn.net/timberwolf_2012/article/details/38980201
