# scala-docker

Scalaの動作確認環境をDockerで構築します。

## 使い方

Dockerイメージを構築します。

```
docker-compose build
```

Dockerコンテナを起動して、`bash`でコンテナに入ります。

```
docker-compose run scala-app bash
```

scalaファイルを作成します。

sbtを実行します。
