# Source Han Code JP

Source Han Code JP is a derivative of Source Han Sans that replaces its proportional Latin glyphs with fixed-width 667-unit glyphs from Source Code Pro. The Latin glyphs are scaled to match the glyphs for Japanese kana and kanji, and their widths are adjusted to be exactly 667 units (two-thirds of an EM). Source Han Code JP is intended to be used as a UI font for mixed Latin and Japanese text on displays, for programming, editing HTML/CSS, viewing text or inputing to the command line in a terminal app, and so on.

Source Han Code JP is based on the Japanese subset of Source Han Sans, Source Han Sans JP, whose glyph set supports only Japanese.

* Screenshots for Source Han Code JP

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/img-View.png "img-View")

![alt text](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/img-AA.png "img-AA")

## Download the fonts

* [Latest release](../../releases/latest)
* [All releases](../../releases)

## Changes from the original Source Han Sans JP

Proportional Latin glyphs that were replaced with fixed-width 667-unit versions:

* [SHC_LatinGlyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/SHC_LatinGlyphs.pdf)

Glyphs that were removed (the original Source Code Pro does not yet include glyphs for Cyrillic and Greek, along with those for some symbols): 

* [RemovedGlyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/RemovedGlyphs.pdf)

Source Han Code JP does not include any GPOS features.

## Building the fonts
### Requirements

To build the binary font files from source, you need to have installed the [Adobe Font Development Kit for OpenType](http://www.adobe.com/devnet/opentype/afdko.html) (AFDKO). The AFDKO tools are widely used for font development today, and are part of most font editor applications.

### Building all fonts

For convenience, a shell script named `commands.sh` is provided in the root directory. It builds all OTF and the OTC fonts, and can be executed by entering the following command :

```sh
$ ./commands.sh
```

## The original open source fonts from which Source Han Code JP was derived

* [Source Han Sans](https://github.com/adobe-fonts/source-han-sans)
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

## Getting Involved

Send suggestions for changes to the Source Han Code project maintainer, [Masataka Hattori](mailto:mhattori@adobe.com), for consideration.

========================================
# Source Han Code JP

Source Han Code JP（日本語メニューネーム：源ノ角ゴシック Code）は、Source Han Sansに含まれるプロポーションナル・ラテン・グリフを、Source Code Proのモノスペースのラテン・グリフに変更した派生フォントです。ラテン・グリフは、日本語の仮名や漢字とマッチするようにサイズを調整し、正確に667ユニット固定字幅に設定されています。Source Han Codeは、プログラミングやhtml/CSSの記述、ターミナルでのテキスト表示やコマンド入力などで、ディスプレイでの和欧表示用UIフォントとしての利用を想定しいます。

Source Han Codeは、日本語グリフのみサポートしたSource Han Sans JP subset fontをベースにしています。

## Download the fonts

* [Latest release](../../releases/latest)
* [All releases](../../releases)

OTC（.ttc）は、MacOSX 10.8以降で利用できます。MacOSX10.7以前、Windows、および、その他のOSでは、OTF（.otf）をご利用ください。

## Source Han Sans JPからの変更点

プロポーションナルから667ユニット固定字幅に変更されたラテン・グリフ。

* [SHC_LatinGlyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/SHC_LatinGlyphs.pdf)

削除されたグリフ。（オリジナルのSource Code Proがサポートしていない Cyrillic、Greek、一部の記号類）

* [RemovedGlyphs](https://github.com/adobe-fonts/source-han-code-jp/raw/master/resources/RemovedGlyphs.pdf)

Source Han CodeにはGPOS featuresは含まれていません。

## Build the fonts
### Requirements

バイナリ形式のフォントを生成するためには、[Adobe Font Development Kit for OpenType](http://www.adobe.com/devnet/opentype/afdko.html)（AFDKO）のインストールが必要条件になります。AFDKOツールズは、フォント開発や、フォント制作ソフトの一部として幅広く使用されています。

### Building all fonts

ルートディレクトリにおかれた`commands.sh`というシェル・スクリプトを実行することで、すべてのOTFとOTCのフォントが生成されます。ターミナルから下記のコマンドを実行してください。

```sh
$ ./commands.sh
```

## オリジナルのオープンソースフォント
* [Source Han Sans](https://github.com/adobe-fonts/source-han-sans)
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

## Getting Involved

提案・要望などありましたら、[Masataka Hattori](mailto:mhattori@adobe.com)までご連絡ください。
