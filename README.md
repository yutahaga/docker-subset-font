# docker-subset-font

フォントをサブセット化するための Docker イメージです。

## 使い方

`src` ディレクトリにフォントファイル（.otf）を配置して次のコマンドを実行します。

```sh
docker-compose up --build -d
```

Node.js をお使いの方は次のコマンドでもOKです。

```sh
npm run setup
```

しばらく待つと `dist` ディレクトリにサブセット化されたファイルが生成されます。
