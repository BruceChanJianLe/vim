# vim

This repo contains everyday vim usage method and .vimrc for future reference.

## .vimrc
```
se nu " set line number
se history=1000 " set history line to 100
se hls " hightlight search
se rnu " set relative number for better editing experience
```

## Common Problems  
**How to save vim without sudo**  
`:w !sudo tee %`  
**Info**  
- :w – Write a file (actually buffer).
- !sudo – Call shell with sudo command.
- tee – The output of write (vim :w) command redirected using tee.
- % – The % is nothing but current file name. In this example, it is /etc/apache2/conf.d/mediawiki.conf. In other words tee command is run as root and it takes standard input (or the buffer) and write it to a file represented by %. However, this will prompt to reload file again (hit L to load changes in vim itself)  
[Reference](https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission/)  

**Open file with cursor at the end**  
`vim "+normal G" file.txt`  
[Reference](https://edunham.net/2015/01/29/vim_open_file_with_cursor_at_the_end.html)  

**Read commands from shell into vim**  
`:r !ls`  
**Info**  
Learn more from the external command video from Linkedin Learning.  
[Reference](https://www.linkedin.com/learning/learning-vim/external-commands?u=43752620)  

**Go to a file inside vim**
`gf`  
**Info**
Just hit gf and you vim will open the right fiel for you, provided that the file path is correct.  
[Reference](https://www.linkedin.com/learning/learning-vim/open-files-from-name?u=43752620)  

## Abbreviation  
long | short
--- | ---
set | se
highlightsearch | hls
number | nu
relativenumber | rnu
