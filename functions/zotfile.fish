function zotfile -d 'Open file from your Zotero library'
	# Check that variables are set.
	if [ ! -d "$zotfile_root" ]
			echo 'You need to set $zotfile_root.'
			return 1
	end
	
	# Search for `pdf` files using either `fd` or `find`,
	# then filter the results using a multi-select `fzf`.
	set files (
		if type -q fdfind
			fdfind -t f -e pdf . "$zotfile_root"
		else if type -q fd
			fd -t f -e pdf . "$zotfile_root"
		else
			find "$zotfile_root" -type f -iregex '.*\.pdf$'
		end \
		| fzf -m -d '/' --with-nth=-1 --prompt='Zotfile> '
	)
	
	# Open each file in default viewer.
	for f in $files
		if type -q xdg-open
			xdg-open "$f" &
		else
			open "$f" &
		end
	end
end
