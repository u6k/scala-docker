# scala-docker

Scalaの動作確認環境をDockerで構築します。

## 前提

* docker
* docker-compose

なるべくホスト環境を汚さず簡単に環境を構築するため、Dockerを使用します。

## 使い方

`git clone`します。

```
$ git clone https://github.com/u6k/scala-docker.git
$ cd scala-docker/
```

Dockerイメージを構築します。この時点でActivatorの関連ファイルをキャッシュするため、すごく時間がかかります。

```
$ docker-compose build
```

Dockerコンテナを起動します。起動すると`bash`でコンテナに入ります。

```
$ docker-compose run scala-app
```

`activator new`でScalaアプリケーションのひな型を生成します。

```
# activator new my-app minimal-scala
# cd my-app/
```

この時点で、以下のファイルが生成されます。

```
# find . -type f | sort
./.gitignore
./LICENSE
./bin/activator
./bin/activator.bat
./build.sbt
./libexec/activator-launch-1.3.10.jar
./project/build.properties
./src/main/scala/com/example/Hello.scala
./src/test/scala/HelloSpec.scala
```

`activator run`でScalaアプリケーションを実行してみます。

```
# activator run
[info] Loading project definition from /root/my-app/project
(中略)
[info] Compiling 1 Scala source to /root/my-app/target/scala-2.11/classes...
[info] Running com.example.Hello
Hello, world!
[success] Total time: 6 s, completed Jul 12, 2016 12:06:30 PM
```

実行され、`Hello, world!`が表示されることが確認できます。
