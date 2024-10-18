> Hi all, Please consider donating to this or any of my many of opensource projects.
> 
> <a href='https://ko-fi.com/F1F714HTLD' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi2.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

# Emacs icons project

Please note, these are not "official" GNU icons.

I created these for my own use, I'm fairly OCD about visual stuff, and
I decided to share these with the community.

Application icons are in the root folder, document type icons are in
the `document-icons` folder.

# News

Added 2 new icons on Sept 7 2022.

### EmacsTerm

![](./EmacsTerm.png)

### EmacsVapor

![](./EmacsVapor.png)

# Mac OS X

Pick an Application icon style you like and copy that to Emacs.app

ie.

    cp emacs-card-blue-deep.icns /Applications/Emacs.app/Contents/Resources/Emacs.icns

To install the document icons:

    cp document-icons/*.icns /Applications/Emacs.app/Contents/Resources/

Backup `Info.plist` and copy the version from here, ie.:

    cp /Applications/Emacs.app/Contents/Info.plist /Applications/Emacs.app/Contents/Info.plist.bak

    cp document-icons/Info.plist /Applications/Emacs.app/Contents/Info.plist

## Linux

If necessary, downscale the pngs to sizes your window manager likes.

    mkdir linux-icons;
    for icon in document-icons/*.png
    convert -size 256x256 $icon linux-icons/$icon


## Windows

Use png to ico.

## Automating doc-icons

There is a template for building document-icons.

Within `document-icons/` you'll find:

  * document-icons/doc-types.yaml
  * document-icons/doc-icon.mustache - an SVG template
  * document-icons/make-svg-icons.rb

I used InkScape to make the PNG files from SVG and [`makeicns`](https://bitbucket.org/mkae/makeicns) to make the
document icns.

I've also included an OS X Info.plist.

The font used is Avenir Next, it's part of Mountain Lion's default
font set.

- - -

# Document Icons

A small sample

![](https://github.com/jasonm23/emacs-icons-project/raw/master/doc-icons.png)

# Application Icons

EmacsTerm

![](https://github.com/emacsfodder/emacs-icons-project/raw/master/thumb/EmacsTerm.png)

EmacsVapor

![](https://github.com/emacsfodder/emacs-icons-project/raw/master/thumb/EmacsVapor.png)

EmacsIcon1

[![EmacsIcon1](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon1.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon1.png "EmacsIcon1")

* * *

EmacsIcon2

[![EmacsIcon2](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon2.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon2.png "EmacsIcon2")

* * *

EmacsIcon3

[![EmacsIcon3](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon3.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon3.png "EmacsIcon3")

* * *

EmacsIcon4

[![EmacsIcon4](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon4.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon4.png "EmacsIcon4")

* * *

EmacsIcon5

[![EmacsIcon5](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon5.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon5.png "EmacsIcon5")

* * *

EmacsIcon6

[![EmacsIcon6](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon6.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon6.png "EmacsIcon6")

* * *

EmacsIcon7

[![EmacsIcon7](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon7.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon7.png "EmacsIcon7")

* * *

EmacsIcon8

[![EmacsIcon8](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon8.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon8.png "EmacsIcon8")

* * *

EmacsIcon9

[![EmacsIcon9](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon9.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon9.png "EmacsIcon9")

* * *

Emacs-card-blue-deep

[![emacs-card-blue-deep](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-blue-deep.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-card-blue-deep.png "emacs-card-blue-deep")

* * *

Emacs-card-british-racing-green

[![emacs-card-british-racing-green](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-british-racing-green.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-card-british-racing-green.png "emacs-card-british-racing-green")

* * *

Emacs-card-carmine

[![emacs-card-carmine](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-carmine.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-card-carmine.png "emacs-card-carmine")

* * *

Emacs-card-green

[![emacs-card-green](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-green.png) ](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-card-green.png "emacs-card-green")

* * *

# Icon base

Base icon motif - used to create all icons above.

[![Emacs interlock primitives](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-interlock-v2.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-interlock-v2.png)

(An early version)

[![Emacs interlock primitives](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-interlock-v1.png) ](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-interlock-v1.png)

---

# Use and Contributing

Do what you like with these, if you want to use them / modify etc, go
ahead.

MIT License applies.
