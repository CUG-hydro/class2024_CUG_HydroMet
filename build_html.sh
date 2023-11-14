#!/bin/bash

export PUPPETEER_TIMEOUT=3600

function build_marp {
  fin=$1
  verbose=$2
  time=$3
  theme="./themes/beamer.css"

  fout=${fin//.md/.html}
  cmd="marp $fin -c .marprc.yml -o docs/$fout --html --allow-local-files --theme $theme $options"

  if [ "$verbose" -eq 1 ]; then
    echo $cmd
  fi

  if [ "$time" -eq 1 ]; then
    time $(eval $cmd)
  else
    eval $cmd
  fi
}

options=""
build_marp "ch00_课程介绍.md" 1 0
build_marp "ch01_绪论.md" 1 0
build_marp "./ch01_补充_全球气候变化.md" 1 0
