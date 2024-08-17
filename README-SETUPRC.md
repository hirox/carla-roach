# .setuprc の使い方

.setuprc を使用して CARLA-ROACH 環境をセットアップし、使用する方法を説明します。

## クイックスタート

1. `.setuprc`ファイルを source します：

   ```bash
   source /PATH/TO/.setuprc
   ```

   [.setuprc の自動読み込み](#setuprc-の自動読み込み)

2. Docker コンテナに入ります：

   ```bash
   cr-into
   ```

3. 初回セットアップ時は、コンテナ内で以下のコマンドを実行します：

   ```bash
   cr-initial-setup
   ```

4. [CARLA 関連の操作](#carla-関連のコマンド)

## 詳細な使用方法

### .setuprc の自動読み込み

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

### CARLA 関連のコマンド

- `cr-carla`: CARLA の起動 (サーバー)

  ```bash
  cr-carla
  ```

- 手動操作のサンプルを実行する

  `cr-carla` を実行して CARLA サーバーを起動し、別のターミナルで以下のコマンドを実行します：

  ```bash
  $ cd $CARLA_ROOT
  $ cd PythonAPI/examples
  $ python manual_control.py
  ```

- データ収集コマンドの実行

  **`cr-carla` を実行せずに**以下のコマンドを実行します：

  ```bash
  $ run/data_collect_bc.sh
  ```

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
