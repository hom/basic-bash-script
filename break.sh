

#!/bin/bash

# 通过使用 while 循环配合 break 进行循环控制

while true; do
echo "On which topic do you want advice?"
echo "1.  politics"
echo "2.  startrek"
echo "3.  kernelnewbies"
echo "4.  sports"
echo "5.  bofh-excuses"
echo "6.  magic"
echo "7.  love"
echo "8.  literature"
echo "9.  drugs"
echo "10. education"
echo

echo -n "Enter your choice, or 0 for exit: "
read choice
echo

case $choice in
     1)
      echo 'politics'
     ;;
     2)
      echo 'startrek'
     ;;
     3)
      echo 'kernelnewbies'
     ;;
     4)
     echo 'sports'
     ;;
     5)
      echo 'bofh-excuses'
     ;;
     6)
      echo 'magic'
     ;;
     7)
      echo 'love'
     ;;
     8)
      echo 'literature'
     ;;
     9)
      echo 'drugs'
     ;;
     10)
      echo 'education'
     ;;
     0)
     echo "OK, see you!"
     break
     ;;
     *)
     echo "请从 0 - 10 中选择你喜欢的某一项"
     ;;
esac  
done
