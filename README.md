# Emacs icons project

Please note, these are not "official" GNU icons. 

I created these for my own use, I'm fairly OCD about visual stuff, and
I decided to share these with the community, I won't be promoting
them, in any way, (other than adding stuff to this project.)

Application icons are in the root folder, document type icons are in
the `document-icons` folder.

## How to use

I will add better instructions at some point, for the moment, I expect
you to know how to do this:

Copy `document-icons/*.icns` into `Emacs.app/Contents/Resources` to
add the document icons. 

Overwrite `Emacs.app/Contents/Info.plist` with
`document-icons/Info.plist`

Pick an Application icon style you like and copy that to
`Emacs.app/Contents/Resources/Emacs.icns`

I you want to use these on Linux, I'd recommend just downscaling the
PNG version to a suitable size with ImageMagick (they are 1024px), eg.

    mkdir linux-icons;
    for icon in document-icons/*.png
    convert -size 256x256 $icon linux-icons/$icon

Do a single convert for an application icon, eg.

    convert -size 256x256 emacs-card-british-racing-green.png emacs-icon.png

I have no idea about filetype associations for KDE, Gnome etc. So for
that, you're on your own, add an issue if you figure something out for
a Linux window manager.

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

#### Plan

I intend to update doc-types to include descriptions, file extension
and any relevant `public` (or otherwise) Local UTI names. 

I can then automatically patch `Info.plist`.

# Document Icons

A small sample

![](https://github.com/jasonm23/emacs-icons-project/raw/master/doc-icons.png)

# Application Icons

![EmacsIcon1](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon1.png)
![EmacsIcon2](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon2.png)
![EmacsIcon3](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon3.png)
![EmacsIcon4](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon4.png)
![EmacsIcon5](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon5.png)
![EmacsIcon6](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon6.png)
![EmacsIcon7](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon7.png)
![EmacsIcon8](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon8.png)
![EmacsIcon9](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/EmacsIcon9.png)
![emacs-card-blue-deep](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-blue-deep.png)
![emacs-card-british-racing-green](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-british-racing-green.png)
![emacs-card-carmine](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-carmine.png)
![emacs-card-green](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-card-green.png) 

# Icon base

Base icon motif - used to create all icons above.

![Emacs interlock primitives](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-interlock-v2.png)

(An early version)

![Emacs interlock primitives](https://github.com/jasonm23/emacs-icons-project/raw/master/thumb/emacs-interlock-v1.png) 

--- 

# Use and Contributing

Do what you like with these, if you want to use them / modify etc, go
ahead.

MIT License applies.

