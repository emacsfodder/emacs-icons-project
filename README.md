# Emacs icons project

Please note, these are not "official" GNU icons. 

I created these for my own use, I'm fairly OCD about visual stuff, and
I decided to share these with the community, I won't be promoting
them, in any way, (other than adding stuff to this project.)

Application icons are in the root folder, document type icons are in
the `document-icons` folder.

# Contributing / Intension of this project

I really offer this project up as a framework, I'd hope that people could come up with alternative designs, 
and I can improve the ease of including this into a build, that way you could pick from a range of icons, 
and be happy as larry.

I've made this initially Mac specific, because that's what I use, and stereotypes suggest that mac users 
are more focussed on how things look. So please raise issues and post icon/logo ideas, I'm not averse to 
customizing the god-awful Emacs splash page either.

## How to use

These are all ready to rock on OS X, because I use it, I've put a
couple of notes below for Linux and Windows, but they are sparse.

I will add better instructions at some point, for the moment, I expect
you to know how to do this:

# Mac OS X

Pick an Application icon style you like and copy that to Emacs.app

ie.

    cp emacs-card-blue-deep.icns /Applications/Emacs.app/Contents/Resources/Emacs.icns
    
To install the document icons:    

    cp document-icons/*.icns /Applications/Emacs.app/Contents/Resources/

Backup `Info.plist` and copy the version from here, ie.:

    cp /Applications/Emacs.app/Contents/Info.plist /Applications/Emacs.app/Contents/Info.plist.bak 
    
    cp document-icons/Info.plist /Applications/Emacs.app/Contents/Info.plist

I could write you a script to do this, but then you'd bug me if you
didn't know how to do this... so, you know, this is how it'll stay.

Getting OS X to recognise Emacs.app as the app to handle all the file types is something I'm working on, if you have various text editors installed, they will all vie for attention from OS X, e.g. XCode, TextMate, Sublime Text 2, MacVim, BBEdit, etc. etc. You can rebuild the launchd registry database with `lsregister` (`$(locate lsregister) --help` there's no man page AFAIK, but there is this http://ss64.com/osx/lsregister.html) - I intend to address this part of the process more completely, but as it is now, I have XCode overriding many of my defaults. - You can also have a look at `duti` - http://duti.org/documentation.html for info on OS X filetype handling and setting.

## Notes for Linux

I you want to use these on Linux, I'd recommend just downscaling the
PNG version to a suitable size with ImageMagick (they range from 900-1024px), eg.

    mkdir linux-icons;
    for icon in document-icons/*.png
    convert -size 256x256 $icon linux-icons/$icon

Do a single convert for an application icon, eg.

    convert -size 256x256 emacs-card-british-racing-green.png emacs-icon.png

I have no idea about filetype associations for KDE, Gnome etc. So for
that, you're on your own, add an issue if you figure something out for
a Linux window manager.

## Notes for Windows

If you want to use these with Windows, you're on your own. The PNG
versions are your starting point, if you come up with a free and
automatic method, add an Issue here and I'll integrate it.

## (semi) Automating doc-icons 

I've created a template method of building document-icons.

Within `document-icons/` you'll find:

  * document-icons/doc-types.yaml
  * document-icons/doc-icon.mustache - an SVG template 
  * document-icons/make-svg-icons.rb
  
I used InkScape to make the PNG files from SVG and [`makeicns`](https://bitbucket.org/mkae/makeicns) to make the
document icns.

I've also included an OS X Info.plist. 

The font used is Avenir Next, it's part of Mountain Lion's default
font set.

#### Plan

I intend to update doc-types to include descriptions, file extension
and any relevant `public` (or otherwise) Local UTI names. 

I can then automatically patch `Info.plist`.

# Document Icons

A small sample

![](https://github.com/jasonm23/emacs-icons-project/raw/master/doc-icons.png)

# Application Icons

[![EmacsIcon1](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon1.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon1.png)
[![EmacsIcon2](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon2.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon2.png)
[![EmacsIcon3](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon3.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon3.png)
[![EmacsIcon4](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon4.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon4.png)
[![EmacsIcon5](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon5.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon5.png)
[![EmacsIcon6](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon6.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon6.png)
[![EmacsIcon7](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon7.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon7.png)
[![EmacsIcon8](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon8.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon8.png)
[![EmacsIcon9](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon9.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/EmacsIcon9.png)
[![emacs-card-blue-deep](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-blue-deep.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-card-blue-deep.png)
[![emacs-card-british-racing-green](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-british-racing-green.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-card-british-racing-green.png)
[![emacs-card-carmine](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-carmine.png)](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-card-carmine.png)
[![emacs-card-green](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-green.png) ](https://github.com/jasonm23/emacs-icons-project/raw/master/emacs-card-green.png)

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

