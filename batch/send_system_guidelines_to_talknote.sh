#!/bin/bash
#
# send_system_guidelines_to_talknote.sh [Mail]
#

function getSystemGuidelines() {
    compiled_file="/home/h-yoshida/system-guidelines/batch/system-guidelines-compiled.md"
    if [ ! -f $compiled_file ]; then
	echo "make"
	exit 1
    fi

    count_file="/var/tmp/system-guidelines.counter"
    if [ ! -f $count_file ]; then
	count=1
	echo $count > $count_file
    else
	count=$(cat $count_file)
    fi

    while :; do
	line=$(sed -n ${count}P $compiled_file | tr '+' ' ' | tr '|' "\n")
	if [[ 1 -eq $(echo "$line" | wc -l) ]]; then
	    echo "$line"
	    count=$(expr $count + 1)
	else
	    echo "$line"
	    break
	fi
    done

    echo
    echo "https://github.com/mediba-system/system-guidelines"

    echo $(expr $count + 1) > $count_file
}

function sendMailTalknote() {
  mime="MIME-Version: 1.0"
  type="Content-Type: text/plain; charset=UTF-8"
  base="Content-Transfer-Encoding: base64"
  from="From: notifier@example.com"
  addr="To: $1"

  body="$2"
  if [ $(echo -e "${body}" | wc -l) -le 2 ]; then
    exit
  fi
  body=$(echo "${body}" | nkf -wMB)

  echo -e "${mime}\n${from}\n${addr}\n${type}\n${base}\n\n${body}" | /usr/sbin/sendmail -t -i
}

function isJapanHoliday() {
  url="https://www.google.com/calendar/ical/ja.japanese%23holiday%40group.v.calendar.google.com/public/full"
  now=$(date +%Y%m%d)
  if [[ -n $(curl -sS $url | fgrep "DTSTART;VALUE=DATE:$now") ]]; then
    return 0
  fi
  return 1
}

if ! isJapanHoliday; then
  sendMailTalknote $1 "$(getSystemGuidelines)"
fi
