# isucon12-qualify

## はじめに

このディレクトリ以下の構成やファイルは以下のリポジトリを参考にさせて頂き作成しました。`privision.sh` に関してはそのまま利用させて頂いています。
https://github.com/matsuu/aws-isucon/tree/main/isucon12-qualify

## Build

### 1. Azure Compute Gallery の作成

Azure Compute Gallery を作成し、VM image definition も作成してください。その際、バージョンは指定する必要はありません。


### 2. Packer の実行

`variables.auto.pkrvars.hcl.sample` を参考にして変数を変更してください。

特に、Azure Compute Gallery の部分は以下を参考にしてください。
```
gallery_name = "sigforisucon"       # Azure Compute Gallery の名前
image_name = "isucon-12-qualify"    # VM image definition の名前
image_version = "0.0.2"             # 作成したいバージョン
replication_regions = ["japaneast"] # レプリケーション先のリージョン
resource_group = "rg-isucon"        # Azure Compute Gallery のリソースグループ
```

ビルドします。

```
packer build .
```

## Deploy

ビルドしたイメージから VM を作成します。

## Others

そのほかの注意点、手順はこちらの README を参照してください。  
https://github.com/matsuu/aws-isucon/tree/main/isucon12-qualify
