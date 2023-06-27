#!/bin/bash
## NOTES ##
# Use exec if you want to replace the parent process, sh if you want to return to the parent when the child is finished

## SET VARIABLES ##
dew=1
export hasmap=0
export hasgun=0
sh ./colourset.sh

if [[ $* == *-d* ]]; then
  echo "------------------
DEBUG MODE ENABLED
------------------
"
export debug=1
else
  clear
  export debug=0
  echo "::::::::::::::    ::::::::::::: 
    :+:    :+:    :+::+:        
    +:+    +:+    +:++:+        
    +#+    +#++:++#+++#++:++#   
    +#+    +#+    +#++#+        
    #+#    #+#    #+##+#        
    ###    ###    ############# 
    :::    ::::::::: :::     :::::::::::::::::    :::::::::::::::::    :::::::::::: ::::::::::
  :+: :+:  :+:    :+::+:     :+::+:       :+:+:   :+:    :+:    :+:    :+::+:    :+::+:                
 +:+   +:+ +:+    +:++:+     +:++:+       :+:+:+  +:+    +:+    +:+    +:++:+    +:++:+               
+#++:++#++:+#+    +:++#+     +:++#++:++#  +#+ +:+ +#+    +#+    +#+    +:++#++:++#: +#++:++#           
+#+     +#++#+    +#+ +#+   +#+ +#+       +#+  +#+#+#    +#+    +#+    +#++#+    +#++#+               
#+#     #+##+#    #+#  #+#+#+#  #+#       #+#   #+#+#    #+#    #+#    #+##+#    #+##+#          
###     ############     ###    #############    ####    ###     ######## ###    #############"
  sleep 3
  clear
fi

## STORY ##
echo -e "You wake up in a dark room"



## PROMPT ##
while [ $dew = 1 ]; do
## OPTIONS ##
echo "Will you?
[1] Go Do stuff
[2] Dont do stuff
[3] do more stuff
[4] Use Item"

read -p ">> " -r response
  if [ "$response" = "1" ]; then
    echo "You did stuff"
    dew=0
    exec ./1.sh
    echo "done"
  elif [ "$response" = "2" ]; then
    echo "You didnt do stuff"
    dew=0
  elif [ "$response" = "3" ]; then
    echo "You did more stuff"
    dew=0
  elif [ "$response" = "4" ]; then
    sh ./item.sh
  elif [ "$response" = "7" ]; then
    sh ./7.sh
    echo "Done."
  else
    echo "Invalid Response, try again"
  fi
done

echo "The things were done"