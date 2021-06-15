## *安装指南*

* 版本要求
    1. Python >= 3.0.0 (如 *Python 3.8.0*)
    2. mysql 版本随意 (如 *mysql 8.0.22*)
* 温馨提示
    1. 建议添加 *mysql* 环境变量
    2. 执行安装步骤*3* 时建议使用 *PyCharm* 运行
* 安装步骤
    1. 执行 *douban.sql* 中的sql语句，导入数据
        * 使用你自己的用户名和密码登录 mysql
        * 执行 *source douban.sql*  
          ```sql
          source douban.sql;
          ```
        * (可选) 检查执行结果  
          ```sql
          show tables;
          ```
          ![](png/1.png)
    2. 将自己的数据库用户名和密码写入 *settings.py* 第85、86行
        * ![](png/2.png)
    3. 执行 *pip install -r requirements.txt* 语句，导入依赖
       ```bash
        pip install -r requirements.txt
        ```
        ![](png/3.png)
    4. 配置项目启动信息
        * *PyCharm* 右上角点击 *Add Configuration* 按钮  
          ![](png/4.png)
        * 点击右上角 + 按钮   
          ![](png/5.png)
        * 选择 *Django Server* 按钮  
          ![](png/6.png)
        * *Name* 修改名字，*Host* 添加网址，选择 *Run browser*  
          ![](png/7.png)
* 可能遇到的问题
    1. *Q:* 执行 *source douban.sql*  时遇到问题  
       ![](png/8.png)
       *A:* 把目标文件移动到命令行执行目录下(如 *C:\User\dyf*)，或目标文件完整的路径(如 *D:\book-recommendation\douban.sql*)
    2. *Q:* 网速太慢了  
       *A:* 建议使用国内镜像源