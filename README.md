# MeteorのDDPを使ってテンプレートとAPIを切り離す
Meteorは速攻でCollectionからソーシャル認証までを作れるすぐれものです。テンプレートエンジンもangularからreactまで自由に使えます。
使えるんですが・・・angualr-meteorを経験してangularとmeteorが織りなす魔術コードに吐き気を催してしまいました。

firebaseのようにすっきりとコードを分離できれば嬉しいなと思って作ってみました。詳細はこのレポジトリをみてください。

##環境
```
Meteor
Asteroid
Webpack
```

##注意事項
Meteor-DDPクライアントのAsteroidですが、デフォルトではWebpackから使えません。```npm install asteroind```はNode.js専用に作られてるみたいです。bowerバージョンなら使えそうですが。

```npm```から使いたかったのでnpmレポジトリを作りました。


npm install asteroid.browser
```
でインストールしてください。
Webpackからインストールする際は
```
var asteroid = require('asteroid.browser')
```
です。
