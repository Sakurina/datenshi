# datenshi

Another stupid static site generator.

Here is all I need a static site generator to do:

* Filter markdown files that have been modified since last run.
* Generate the HTML for the files and wrap them with header/footer HTML.
* Put them in a directory so I can upload them.

This does just that.

## Assumptions

These are the assumptions *datenshi* makes on your environment and files:

* You have markdown installed.
* All your markdown files have the extension *.markdown*.
* Your header and footer reside at *_tpl/header.html* and *_tpl/footer.html* respectively.
* Your header has *{{title}}* somewhere in it so it can be replaced by the page's title.
* The first line of each Markdown document is assumed to be a first-level header which is to be used as the title.

## Forcing a re-render

*datenshi* creates a hidden file called *.datenshi_lastrun* which is used to find files that have been changed since the last time you ran it. If you delete that, it will regenerate the entire site. This may be useful if you changed the header or footer and you want it to spread to all previous pages.

## Why is this so simple? It can't do XYZ! This is useless!

There are *tons* of static site generators in a variety of languages. While there are some really nice ones, I just wanted something that was braindead to set up to let me focus on my writing. It took me less time to write the (imperfect) *datenshi* to generate my site for me than I spent dicking around with other static site generators.

Surely I am not the only one who would be satisfied with such a barebones solution.
