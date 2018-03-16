#!/bin/bash
swear () {
    arr=('dick-ramming son of a shit-snack' fuck shit ass titty nipples cock 'ass-hat' 'butt-snatch' 'crap-cakes')
    say -i --voice="Karen" "${arr[$[$RANDOM % ${#arr[@]}]]}"
}

alias zzz="swear"
