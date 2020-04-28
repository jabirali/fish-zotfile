# Fish Zotfile

This is a simple but useful Fish function. It scans your [Zotero][1] library
for PDF files that have been renamed via [Zotfile][2], using either [`fd`][3]
(fast) or Unix `find` (ubiquitous). It then presents these results in [`fzf`][4],
letting you fuzzy-search through the results, and choose as many hits as you want
with <kbd>Tab</kbd>. Press <kbd>Enter</kbd> to open those files in your PDF viewer. 

If you use Zotero to organize your bibliography, and sometimes want to quickly 
open a paper without having to open the Zotero GUI program, this is for you.
To install it using [Fisher][5]:

    fisher add jabirali/fish-zotfile

Then set the variable `$zotfile_root` to the directory where Zotero stores its
PDF files. If you installed Zotero via Snap on Ubuntu, this can be done by adding
`set -x zotfile_root ~/snap/zotero-snap` to your `~/.config/fish/config.fish`.
Then just type `zotfile` into a Fish shell when you want to activate it.

[1]: https://www.zotero.org/
[2]: http://zotfile.com/
[3]: https://github.com/sharkdp/fd
[4]: https://github.com/junegunn/fzf
[5]: https://github.com/jorgebucaran/fisher
