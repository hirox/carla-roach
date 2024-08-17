# .setuprc の使い方

.setuprc を使用して CARLA-ROACH 環境をセットアップし、使用する方法を説明します。

## クイックスタート

1. `.setuprc`ファイルを source します：

   ```bash
   source /PATH/TO/.setuprc
   ```

2. Docker コンテナに入ります：

   ```bash
   cr-into
   ```

3. 初回セットアップ時は、コンテナ内で以下のコマンドを実行します：
   ```bash
   cr-initial-setup
   ```

## 詳細な使用方法

### .setuprc の source

新しいシェルセッションごとに自動的に .setuprc をロードするには、`.bashrc`に以下の行を追加してください：

```bash
source /PATH/TO/.setuprc
```

`/PATH/TO/`を`.setuprc`ファイルの実際のパスに置き換えてください。

### 基本的なコマンド

- `cr-into`: このコマンドを実行して Docker コンテナに入ります。コンテナが実行されていない場合は、自動的に起動されます。

- `cr-stop`: 作業が終わったらこのコマンドを使用して Docker コンテナを停止します。

### 初回セットアップ

Docker コンテナに初めて入った後、初期セットアップを実行する必要があります：

```bash
cr-initial-setup
```

このコマンドは、Conda 環境を作成し、必要な CARLA egg ファイルをインストールします。

### その他の公開関数

- `cr-docker-build-and-push`: Docker イメージをビルドしてプッシュします。

  ```bash
  cr-docker-build-and-push
  ```

- `cr-cd`: トップディレクトリに移動します。

  ```bash
  cr-cd
  ```

- `cr-cd-docker`: docker ディレクトリに移動します。

  ```bash
  cr-cd-docker
  ```

- `cr-carla`: CARLA の起動

  ```bash
  cr-carla
  ```
