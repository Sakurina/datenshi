#!/usr/bin/env bash
# tengoku - pushing the fallen angel back into the clouds

bookmark='r-ch'

output_dir='_out'

if [ -f '.tengoku_lastrun' ]; then
  input_files=`find $output_dir -maxdepth 1 -newer .tengoku_lastrun`
else
  input_files=`find $output_dir -maxdepth 1`
fi

ncftpput $bookmark . $input_files

touch .tengoku_lastrun
