#!/usr/bin/env bash
# datenshi - yet another ridiculous static site generator

output_dir='_out'
header_file='_tpl/header.html'
footer_file='_tpl/footer.html'

mkdir -p $output_dir

if [ -f '.datenshi_lastrun' ]; then
  input_files=`find . -newer .datenshi_lastrun -path "*.markdown"`
else
  input_files=`echo *.markdown`
fi

for md in $input_files; do
  output_file="$output_dir/${md%.*}.html"
  echo ":: generating $output_file ..."
  cat $header_file | sed "s/{{title}}/`head -n 1 $md | cut -c 3-`/" > $output_file
  markdown $md >> $output_file
  cat $footer_file >> $output_file
done

touch .datenshi_lastrun
