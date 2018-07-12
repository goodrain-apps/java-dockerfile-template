## 方法1.源码构建的方式

```bash
将Dockerfile和run.sh拷贝到maven项目根路径
去掉Dockerfile RUN mvn -B -DskipTests=true clean install的注释
```
具体可以参考此方式：[java-maven-docker-demo](https://github.com/goodrain-apps/java-maven-docker-demo)

## 方法2.jar包的方式

新建target，然后把jar包放到target目录下
格式如下：
```
├── Dockerfile
├── README.md
├── run.sh
└── target
    └── demo.jar
```

