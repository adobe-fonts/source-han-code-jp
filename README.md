[English](https://github.com/adobe-fonts/source-han-code-jp) / [日本語](README-JP.md)

# 2020-11-25 Release Notes

Removed SVG table to avoid problems with syntax highlighting as reported in [Issue #17](https://github.com/adobe-fonts/source-han-code-jp/issues/17).

# 2018-04-17 Release Notes

Source Han Code JP Version 2.010 is released. This version supports style-linking in apps that include 'B' (Bold) and 'I' (Italic) buttons in their font menu. The sorting of the font names in some apps is also improved.

Changes:

* U+2423 '␣' OPEN BOX now has a monospaced horizontal advance of 667 units (the previous version used 1000 units). See [Issue #12](https://github.com/adobe-fonts/source-han-code-jp/issues/12).

* Style-linking is now supported correctly, meaning that you can access 'Bold' and 'Italic' styles by pressing the 'B' or 'I' buttons in apps that support style linking.

* Fixed the issue that the Source Han Code JP family was not grouped in the 'Fonts' folder of Windows 10.

* Fixed the issue that the Source Han Code JP family was not grouped in the font menu of MS Office apps.

* Improved the syntax of the SVG glyph data.

* Added the 'ss01' and 'ss02' GSUB features for color to Black&White and Black&White to color glyph substitution, respectively.

* Removed 'addSVGtable.py' from the repository as you can now get this Python script from the [opentype-svg](https://github.com/adobe-type-tools/opentype-svg) project.

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
$ ./commands_subroutinize_otc.sh
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


## 2018-04-02 Note

*SVG font causes an error when saving an Adobe Illustrator file was fixed in version 22.1.

## 2017-11-22 Note

* The CID-keyed OpenType SVG issue was fixed in InDesign CC Version 13.0.1.

## 2017-11-4 Note
* Can't save Source Han Code JP in Adobe Illustrator CC

We are aware that Adobe Illustrator CC fails to save a document that uses Source Han Code JP that results in an "An unknown error has occurred." dialog appearing. This issue has been reported to the Illustrator team. This issue seems to affect CID-keyed OpenType/CFF fonts that include an 'SVG ' table, such as Source Han Code JP. An interim solution is to simply uncheck the "Create PDF Compatible File" option in the Save dialog's options. InDesign CC has a similar issue in its PDF export option, and unfortunately, we are not aware of a similar work-around.

Please visit [OpenType SVG Fonts in Creative Cloud Apps](https://blogs.adobe.com/CCJKType/2017/11/opentype-svg-fonts-illustratorindesignphotoshop-cc-2018.html) more details.


## Getting Involved

Send suggestions for changes to the Source Han Code project maintainer, [Masataka Hattori](mailto:mhattori@adobe.com), for consideration.

