# Source Han Code JP

Source Han Code JP is a derivative of Source Han Sans that replaces its proportional Latin glyphs with fixed-width 667-unit glyphs from Source Code Pro. The Latin glyphs are scaled to match the glyphs for Japanese kana and kanji, and their widths are adjusted to be exactly 667 units (two-thirds of an EM). Source Han Code JP is intended to be used as a UI font for mixed Latin and Japanese text on displays, for programming, editing HTML/CSS, viewing text or inputing to the command line in a terminal app, and so on.

Source Han Code JP is based on the Japanese subset of Source Han Sans, Source Han Sans JP, whose glyph set supports only Japanese.

* Screenshots for Source Han Code JP

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/img-View.png "img-View")

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/img-AA.png "img-AA")

* Version 2.0 supports Greek, Cyrillic, Roman Italic and a few emoji glyphs. Now Source Han Code JP is Non-Iatlic and Italic 14 fonts family. These emojis have been given color versions that will appear in apps or browsers that support OpenType SVG table. 

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/newglyphs.png "new_glyphs")

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/color_emoji.png "color_emoji")


## Download the fonts

* [Latest release](../../releases/latest)
* [All releases](../../releases)

## Changes from the original Source Han Sans JP

Proportional Latin glyphs that were replaced with fixed-width 667-unit versions:

* [SHC2_Roman_Glyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/SHC2_Roman.pdf)

Italic glyphs that were added to version 2.0 :

* [SHC2_Italic_Glyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/SHC2_Italic.pdf)

Full-width emoji glyphs that were added to version 2.0 :

* [SHC2_Emoji_Glyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/SHC2_Emoji.pdf)

Proportional glyphs that are removed from the original Source Han Sans JP :

* [Removed_Glyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/removedGlyphs_fromSHS.pdf)

Source Han Code JP does not support any GPOS features.

## Building the fonts
### Requirements

To build the binary font files from source, you need to have installed the [Adobe Font Development Kit for OpenType](http://www.adobe.com/devnet/opentype/afdko.html) (AFDKO). The AFDKO tools are widely used for font development today, and are part of most font editor applications.

### Building all fonts

For convenience, a shell script named `commands.sh` is provided in the root directory. To run `addSVGtable.py` which allows to add SVG files into a font will require fonttools version 2.5 and later :

```sh
$ ./commands.sh
```

You can use `commands_superotc.sh` to make a super otc that will be bound all of fonts in one single file :

```sh
$ ./commands_superotc.sh
```
## Installation notes
After installing in OS X, if you cannot find the fonts in the font menu of an app, or if the fonts cannot be selected in an app, please try the following steps to reset the font cache:

1. Copy fonts (OTFs or OTC) to the /Library/Fonts/ or ~/Library/Fonts/ directory.
2. Run the following command line in the Terminal app:  
```$ sudo atsutil databases -remove```
3. Logout from or restart OS X.

## The original open source fonts from which Source Han Code JP was derived

* [Source Han Sans](https://github.com/adobe-fonts/source-han-sans)
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

* [Updates to Source Code Pro](http://blog.typekit.com/2015/07/17/source-code-pro-italic-greek-cyrillic/)

## Getting Involved

Send suggestions for changes to the Source Han Code project maintainer, [Masataka Hattori](mailto:mhattori@adobe.com), for consideration.

========================================

# Source Han Code JP

Source Han Code JP（日本語メニューネーム：源ノ角ゴシック Code）は、Source Han Sansに含まれるプロポーショナル・ラテン・グリフを、Source Code Proのモノスペースのラテン・グリフに変更した派生フォントです。ラテン・グリフは、日本語の仮名や漢字とマッチするようにサイズを調整し、正確に667ユニット固定字幅に設定されています。Source Han Codeは、プログラミングやhtml/CSSの記述、ターミナルでのテキスト表示やコマンド入力などで、ディスプレイでの和欧表示用UIフォントとしての利用を想定しています。

Version2.0から、ギリシャ文字、キリル文字、欧文イタリック体、そして７つの絵文字グリフをサポートしました。標準の欧文をイタリックで表示するフォントの追加し１４フォントのファミリーとなりました。絵文字は、オープンタイプのSVGテーブルをサポートするアプリやブラウザで使用するとカラー絵文字として表示されます。

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
$ ./commands_superotc.sh
```
## インストールについて
MacOSXでフォントをインストールしても、フォントメニューで探せなかったり、アプリでフォントが使用できないときは、下記にのステップを試してみてください。  
   
1. フォント（ otfs あるいは otc ）を/library/fontsあるいは~/library/fontsにコピーする。
2. ターミナルで下記のコマンドを実行する。  
```  $ sudo atsutil databases -remove  ```
3. マシンをリスタートする。


## オリジナルのオープンソースフォント
* [Source Han Sans](https://github.com/adobe-fonts/source-han-sans)
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

* [Updates to Source Code Pro](http://blog.typekit.com/2015/07/17/source-code-pro-italic-greek-cyrillic/)

## 連絡先

ご提案・ご要望などありましたら、[Masataka Hattori](mailto:mhattori@adobe.com)までご連絡ください。
