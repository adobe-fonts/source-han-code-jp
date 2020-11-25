[English](https://github.com/adobe-fonts/source-han-code-jp) / [日本語](README-JP.md)

# 2020-11-25 リリースノート

macOS11上のシンタックスハイライト問題の為にSVGテーブルを削除しました。[Issue #17](https://github.com/adobe-fonts/source-han-code-jp/issues/17).


## 2018-4-17 リリースノート

Source Han Code JP（源ノ角ゴシック Code JP）を version2.010に更新しました。
このバージョンで、MS Office製品などで使われるスタイルリンクを機能するようにしました。これによりフォントのメニューバーにあるボールドやイタリックボタンがスタイルが変更できるようになりました。また、 Windows10のフォントフォルダやMS office製品などのフォントメニューで、フォント名が正しくソートされない問題を修正しました。

変更点：

* U+2423 OPEN BOX '␣'を、667unitsの文字幅にしました。[#12](https://github.com/adobe-fonts/source-han-code-jp/issues/12)

* スタイルリンク機能を使えるようにしました、アプリのフォントメニューバーに'B' や 'L'ボタンがある場合、スタイルリンクで設置されたボールドやイタリックを利用可能。

* Windows10の「フォント」フォルダーで、源ノ角ゴシックのファミリーが１つのグループに分類されない問題の修正。

* MS Office アプリのフォントメニューで、源ノ角ゴシックのファミリーが１のグループに分類されない問題の修正。

* SVGカラーグリフの記述の更新。

* カラーから白黒グリフの変換するss01、白黒からカラーの変換するss02の切り替えフィーチャーの追加。

* リポジトリから'addSVGtable.py'を削除しました。必要な場合は、[opentype-svg](https://github.com/adobe-type-tools/opentype-svg.git)から入手できます。


# Source Han Code JP

Source Han Code JP（日本語メニューネーム：源ノ角ゴシック Code JP）は、Source Han Sansに含まれるプロポーショナル・ラテン・グリフを、Source Code Proのモノスペースのラテン・グリフに変更した派生フォントです。ラテン・グリフは、日本語の仮名や漢字とマッチするようにサイズを調整し、正確に667ユニット固定字幅に設定されています。Source Han Codeは、プログラミングやhtml/CSSの記述、ターミナルでのテキスト表示やコマンド入力などで、ディスプレイでの和欧表示用UIフォントとしての利用を想定しています。

* Source Han Code JP のスクリーンショット

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/img-View.png "img-View")

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/img-AA.png "img-AA")

Version2.0から、ギリシャ文字、キリル文字、欧文イタリック体、そして７つの絵文字グリフをサポートしました。標準の欧文をイタリックで表示するフォントの追加し１４フォントのファミリーとなりました。絵文字は、オープンタイプのSVGテーブルをサポートするアプリやブラウザで使用するとカラー絵文字として表示されます。

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/newglyphs.png "new_glyphs")

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/color_emoji.png "color_emoji")

Source Han Code JPは、日本語グリフのみサポートしたSource Han Sans JP subset fontをベースにしています。

## Download the fonts

* [Latest release](../../releases/latest)
* [All releases](../../releases)

OTC（.ttc）は、MacOSX 10.8以降で利用できます。MacOSX10.7以前、Windows、および、その他のOSでは、OTF（.otf）をご利用ください。

## Source Han Sans JPからの変更点

プロポーショナルから667ユニット固定字幅に変更されたラテン・グリフ。

* [SHC2_Roman_Glyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/SHC2_Roman.pdf)

Version 2.0から追加されたイタリックグリフ。

* [SHC2_Italic_Glyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/SHC2_Italic.pdf)

Version 2.0から追加された全角絵文字グリフ。

* [SHC2_Emoji_Glyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/SHC2_Emoji.pdf)

オリジナルのSource Han Sans JPから削除されたプロポーショナルグリフ。

* [Removed_Glyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/removedGlyphs_fromSHS.pdf)

Source Han CodeにはGPOS featuresは含まれていません。

## Build the fonts
### Requirements

バイナリ形式のフォントを生成するためには、[Adobe Font Development Kit for OpenType](http://www.adobe.com/devnet/opentype/afdko.html)（AFDKO）のインストールが必要条件になります。AFDKOツールズは、フォント開発や、フォント制作ソフトの一部として幅広く使用されています。

### Building all fonts

ルートディレクトリにおかれた`commands.sh`というシェル・スクリプトを実行することで、すべてのOTFとOTCのフォントが生成されます。ターミナルから下記のコマンドを実行してください。また、SVGファイルを埋め込むためのスクリプト`addSVGtable.py`を実行するには、version 2.5以上のfonttoolsのインストールが必要です。

```sh
$ ./commands.sh
```

すべてのOTFフォントを一つのファイルにまとめたスーパーOTCを作成する場合は、`commands_superotc.sh`を参考にしてください。

```sh
$ ./commands_subroutinize_otc.sh
```
## インストールについて
MacOSXでフォントをインストールしても、フォントメニューで探せなかったり、アプリでフォントが使用できないときは、下記にのステップを試してみてください。  
   
1. フォント（ otfs あるいは otc ）を/library/fontsあるいは~/library/fontsにコピーする。
2. ターミナルで下記のコマンドを実行する。  
```  $ sudo atsutil databases -remove  ```
3. マシンをリスタートする。

## 04-02-2018 Note

* Illustratorファイルの保存時、SVG フォントがエラーを起こす問題は、Adobe Illustrator CC version 22.1で修正されました。

## 11-22-2017 Note

* SVGグリフを含むCID-keyed OpenTypeの問題は、InDesign CC Version 13.0.1で修正されました。

## 11-4-2017 Note

* 「源ノ角ゴシック Code JP」がイラストレーターで保存できない

Adobe Illustrator CCで「源ノ角ゴシック Code JP」を使ったドキュメントが「不明なエラーが発生しました。」というダイアログとともに保存できないという現象が発生しています。この問題はIllustratorチームに報告済みですが、カラーグリフをサポートしたSVGテーブルを持つ日本語フォントで問題が発生するという以外に詳しいことは不明です。当面の回避策として、保存時にIllustratorオプションで「PDF互換ファイルを作成」をオフにすることで保存が可能になります。InDesign CCに関してもPDF書き出しで同様の問題が起こります、InDesign CCに関しては回避策が見つかっていません。

この件に関しては、[OpenType SVG Fonts in Creative Cloud Apps](https://blogs.adobe.com/CCJKType/2017/11/opentype-svg-fonts-illustratorindesignphotoshop-cc-2018.html) (英語）を参照してください。


## オリジナルのオープンソースフォント
* [Source Han Sans](https://github.com/adobe-fonts/source-han-sans)
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

* [Updates to Source Code Pro](http://blog.typekit.com/2015/07/17/source-code-pro-italic-greek-cyrillic/)

## 連絡先

ご提案・ご要望などありましたら、[Masataka Hattori](mailto:mhattori@adobe.com)までご連絡ください。
