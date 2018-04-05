" Highlight issues in commit message body
syn match   gitcommitIssue	" #[0-9]\+"
hi def link gitcommitIssue PreProc

" Highlight duration in commit message body
" http://www.redmine.org/projects/redmine/wiki/RedmineTimeTracking#Accepted-time-formats
syn match	gitcommitTime	" @[0-9\.]\+[m|h]"
hi def link gitcommitTime Constant 
