# quinart application

## ディレクトリ構成
設定ファイル以外は基本的に`./lib`内に入ってます

### `./lib/component/`
- サイト内で共通して再利用するクラスを管理

### `./lib/provider/`
- 状態管理用
- Riverpodを使用

### `./lib/view/`
- ページ画面となるクラスを管理
- 基本的に`./lib/component/.`で定義したクラスを呼び出すかたちでUIを構築

### `./main.dart`
- アプリケーションのエントリポイントとなるファイル

## 開発環境
|       |     |
|  :-:  | --- |
| OS    | Windows 10 Pro |
| IDE   | Visual Studio Code |
| LANG  | Dart (Flutter 3.10.5) |
| PKG   |  |

## デザイン
### カラー
- メイン
  - #63a697(淡い緑)
- サブ
  - #004d00(濃い緑)
- 白系
  - #f9faf8
- 黒系
  - #555656(濃い黒)
  - #979999(淡い黒)

## 作成者
[Wassy | Ryoga Washizawa](https://github.com/wassy310)