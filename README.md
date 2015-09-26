# CommonScripts
Some useful scripts.

## 一、convert.sh
### 1.1 说明

该Shell脚本用于将**Windows下可用源码**转换为**Linux下可用源码**。

Windows下编写的代码（如C\C++\Java等）放到Linux下不能直接编译， 因为主要存在两个问题：
 1. Windows和Linux的行尾符不同， Windows下行尾符是"\n\r"， 而Linux的行尾符是"\n"
 2. Windows下编码通常是GB2312, 而Linux中的编码通常是UTF-8。

### 1.2 使用

使用之前
```
sudo apt-get install dos2unix
```

使用
```
bash trans.sh 指定文件夹 要转换文件的拓展名
```

例如，将/home文件夹及其子文件下所有java源文件进行转换
```
bash trans.sh /home java
```

### 1.3 对应博文
http://blog.csdn.net/timberwolf_2012/article/details/38980201
