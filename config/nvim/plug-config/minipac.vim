packadd minpac
call minpac#init()

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

call minpac#add('k-takata/minpac', {'type': 'opt'})