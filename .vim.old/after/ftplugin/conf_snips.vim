if !exists('loaded_snips') || exists('b:did_conf_snips')
	fini
en
let b:did_conf_snips = 1

" New Block

exe "Snipp ttt ${1:KEY},fr,1,,${2}\n$1,en,1,,${3}"
exe "Snipp tttt ${1:KEY},fr,2,,${2}\n$1,en,2,,${3}"



