##																																						 .functions.zshrc
mkyear() {
	for m in {1..12}; do
		command mkdir -v "${PWD\/$(date -d ${m}/1/1 +%m.\ %B)}";
	done
}

rmyear() {
	for m in {1..12}; do
		command rmdir -v "${PWD\/$(date -d ${m}/1/1 +%m.\ %B)}";
	done
}

endl() {
	printf "\n"
}

export COLUMNS
ls() {
#	command ls -lh --color=always "$@"
	command eza -Glha --group-directories-first --sort size "$@"
	endl
}

cd() {
	builtin cd "$@"
	ls
	return $?
}

# clang format
cform() {
	clang-format -style=Google -i "$@"
}

dir() {
	command gdir -w $COLUMNS -ACgs --color --hyperlink
}

#dir() {
#  ls -alhGF --color=always | less -R -X -F
#}

disk_space() {
	command df -am | less -R -X -F
}

lz() {
	command date &&\
	pillz "$@" &&\
	command date &&\
	command clear
}

mnap() {
	repeating '—' COLUMNS; endl
	command date
	repeating '—' COLUMNS; endl
	
	command sudo nmap -Pn -p 1-65535 -sV -sS -T4 "$@" 
	
	repeating '—' COLUMNS; endl
}

repeating() {
	local count=$(( $2 + 0 ))
	if (( $count < 1 )) || (( $count > 100 )); then
		$count=1
	fi
	command awk -v count="$count" -v txt="$1" 'BEGIN {
		while (z++ < count) printf txt
	}'
	
	return 0
}

# This command is so supidly awkward that, yes, I need a function for it.
# I know an alias would have worked. I don't care. Fuck you, Oracle.
mysql_start() {
	command mysql.server start
}
