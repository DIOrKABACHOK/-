#!/bin/bash
echo "Задание №41
Вот вы и добрались до самой запутанной темы: РЕГУЛЯРНЫЕ ВЫРАЖЕНИЯ
Важнейшей командой остается знакомая вам grep
"

while [ True ]; do

  read -p "home/Linux/~$ " command

  if [ "$command" = "echo one two three | awk {print 1}" ]; then
    echo "one two three" | awk '{print $1}'
    break
  fi

done

phrase="Задание №41 решено"
if ! grep -q "$phrase" Tasks.txt; then
  echo "$phrase" >> Tasks.txt
fi

sleep 10