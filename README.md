# Ian FitzPatrick's fork of alfred-org-capture

This is a fork of
[alfred-org-capture](https://github.com/jjasghar/alfred-org-capture)
by [J. J. Asghar](https://github.com/jjasghar).

## Additions:

- Included a hook written by
  [Alan Schmitt](http://permalink.gmane.org/gmane.emacs.orgmode/76399)
  to close the frame when the capture is finalised.
- Included support for
  [org-mac-link](http://orgmode.org/worg/org-contrib/org-mac-link.html)
  which enables links to certain Mac applications (e.g., Mail, Safari, Firefox).
- Added a [PopClip](https://pilotmoon.com/popclip/) extension to
  include selected text in capture.

## Current issues:

- The text selection mechanism is implemented by means of a global
  variable. \*audible
  gasp\* 
- Text and links are inserted into the capture using
  `org-capture-prepare-finalize-hook` which sometimes requires
  finalising (i.e., completing, refiling, or discarding) the capture
  twice.
- **When emacs is run in fullscreen mode all frames are killed when
  the capture is finalised.**
  
## Original README.md

### alfred-org-capture

How to get [alfred](https://www.alfredapp.com/) and
[org-capture](http://orgmode.org/manual/Capture.html) to play nice.

In theory you should be able to do this with any productivity application.

You want to and the [alfred-org-capture.el](el/alfred-org-capture.el)
to your `.emacs` or `.emacs.d/init.el`. Then you should add the
[workflow](org-capture.alfredworkflow) to alfred.

This is a nice MVP, but it's nice to be able to call alfred with
`org-capture` and add a capture to your `org-default-notes-file`.

I stole this from [this post](http://comments.gmane.org/gmane.emacs.orgmode/76348) and wrapped it up in github.

Thanks to:

1. Haider Rizvi
1. Robert P. Goldman
1. Alan Schmitt
1. Alexander Baier
1. Damon Haley
