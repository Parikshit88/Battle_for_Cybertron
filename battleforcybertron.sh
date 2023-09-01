#!/bin/bash



Magenta='\e[1;35m'
Red='\e[1;31m'
Yellow='\e[1;33m'
Blue='\e[1;34m'
Cyan='\e[1;36m'
Green='\e[1;32m'
RESET='\e[0m'


sleep 1
echo -e "${Magenta}

******************************************************************************************************************************************************
******************************************************************************************************************************************************${RESET}
"
sleep 1

echo -e "        ${Cyan}The Decepticons have betrayed the Autobots and the planet on which both the races co-existed is in grave danger.
"
sleep 1.5
echo -e "                            There is a war erupted between both the Transformer race.
"
sleep 1.5
echo -e "               The winner of a ferocious battle will decide who will conquer and rule over Cybertron.${RESET}
"
sleep 1.5
echo -e "${Magenta}
*******************************************************************************************************************************************************
*******************************************************************************************************************************************************${RESET}
"
sleep 1


# 1st battle against Low Level Decepticon
echo -e "        Your battle against the decepticons starts. Please choose your autobot:
        a) ${Yellow}Bumblebee${RESET}
        b) ${Green}Ironhide${RESET}
        c) ${Red}Optimus${RESET} ${Blue}Prime${RESET}"
read autobot
echo ""
until [[ $autobot == a || $autobot == c || $autobot == b ]]
do
	echo "        For the sake of saving Cybertron, please select the appropriate autobot"
	read autobot
done
case $autobot in 
	a)	name="${Yellow}Bumblebee${RESET}"
		hp=35
		attack=40;;

	b)	name="${Green}Ironhide${RESET}"
		hp=70
		attack=68;;

	c)	name="${Red}Optimus${RESET} ${Blue}Prime${RESET}"
		hp=98
		attack=95;;
esac
sleep 1
echo -e "        You have selected the autobot $name who's HP is $hp and his attack power is $attack"
echo ""
sleep 1
echo -e "        $name will fight against the low level Decepticon"
echo ""
sleep 1


while [[ $autobot == b || $autobot == c ]]
do
	echo -e "        You know what, $name can defeat this low level Decepticon without loosing much of his HP. Hence, he can advance to the next battle."
	break
done
sleep 1


decepticon=$(( $RANDOM % 2 ))
while [[ $autobot == a ]]
do
	echo "        Prepare for battle. Choose your weapons(0/1)"
	read weapon

until [[ $weapon == 0 || $weapon == 1 || $weapon == "matrix" ]]
do
	echo "        In order to win in this battle, you need proper armoury. Choose your weapons appropriately"
	read weapon

done
if [[ $weapon == $decepticon || $weapon == "matrix" ]]; then
	echo -e " 
                   ${Cyan}The battle has started${RESET}"
sleep 1
	echo -e "
               $name ${Cyan}engaging with the enemy${RESET}"
sleep 1.5
	echo -e "
          ${Cyan}You've defeated this low level Decepticon.${RESET}"
sleep 1.5
	echo -e "        
          ${Cyan}But${RESET} $name ${Cyan}has lost most of his HP and will prove ineffective in the next battles or could loose his life in the battlefield. Hence, you should let${RESET} $name ${Cyan}rest.${RESET}"
else
	echo -e "
        ${Cyan}You tried your best but the effort was not sufficient. Cybertron is lost${RESET}"
exit 1
fi
break
done
sleep 2



# 2nd battle agaist Soundwave
echo "
"
echo -e "        You next Opponent is Soundwave. Please select your autobot:
        a) ${Green}Ironhide${RESET}
        b) ${Red}Optimus${RESET} ${Blue}Prime${RESET}"
read autobot1
until [[ $autobot1 == a || $autobot1 == b ]]
do
	echo "        For the sake of saving Cybertron, please select the appropriate autobot"
read autobot1
done
case $autobot1 in 
	a)		name="${Green}Ironhide${RESET}"
			hp=70
			attack=68;;
	b)
			name="${Red}Optimus${RESET} ${Blue}Prime${RESET}"
			hp=98
			attack=95;;
esac
echo " "
echo -e "
        You have selected the autobot $name who's HP is $hp and his attack power is $attack"
sleep 1
echo -e "
        $name will fight against Soundwave"
sleep 1.5

soundwave=$((( $RANDOM %  4 ) + 1 ))
while [[ $autobot1 ==  a ]]
do
	echo -e "
        ${Cyan}Prepare for battle. Soundwave may prove to be a tougher opponent.${RESET}"
	sleep 1
	echo "
        You need to carefully choose your weapons(1-4)"
	echo ""
	read weapon1

until [[ $weapon1 == 1 ||$weapon1 == 2 || $weapon1 == 3 || $weapon1 == 4 || $weapon1 == "matrix1" ]]
do
	echo "        In order to win in this battle, you need proper armoury. Choose your weapons appropriately"
	read weapon1
done

if [[ $weapon1 == $soundwave || $weapon1 == "matrix1" ]]; then
	echo -e " 
                            ${Cyan}The battle has started${RESET}"
	sleep 1
	echo -e "
               ${Cyan}Defeating Soundwave is difficult but not impossible${RESET}"
	sleep 1
	echo -e "
                        ${Cyan}Fighting using all your strength${RESET}"
	sleep 1.5
	echo -e "
          ${Cyan}You have defeated Soundwave. You can advance to the final battle${RESET}"
	sleep 1.5
	echo ""
else 
	echo "
        You tried your best but the effort was not sufficient to defeat Soundwave. Cybertron is lost."
	exit 1
fi
break
done


soundwave1=$((( $RANDOM % 2 ) + 1 ))
while [[ $autobot1 == b ]]
do
	echo "
        Prepare for battle. Choose your weapons(1/2)"
	read weapon2
until [[ $weapon2 == 1 ||$weapon2 == 2 || $weapon2 == "matrix1" ]]
do
        echo "        In order to defeat Soundwave, you need proper armoury. Choose your weapons appropriately"
        read weapon2
done

if [[ $weapon2 == $soundwave1 || $weapon2 == "matrix1" ]]; then
	echo -e "
                                                         ${Cyan}The battle has started${RESET}"
	sleep 1
	echo -e "
        ${Cyan}Being the ${Blue}Prime${RESET}, ${Red}Optimus${RESET} can battle against Soundwave and he has the power to defeat the Evil Decepticon without loosing much of his HP${RESET}"
	sleep 1.5
	echo -e "
                                     ${Cyan}You have defeated Soundwave. You can advance to the final battle${RESET}"
	sleep 1
else
	echo "
        You tried your best but the effort was not sufficient to defeat Soundwave. Cybertron is lost."
	exit 1
fi
break 
done



# Final Battle against Megatron
echo "
"
echo -e "        Your final opponent is Megatron. Please select your autobot:
        a) ${Green}Ironhide${RESET}
        b) ${Red}Optimus${RESET} ${Blue}Prime${RESET}"

read  autobot2
until [[ $autobot2 == a || $autobot2 == b ]]
do 
	echo "        For the sake of saving Cybertron, please select the appropriate autobot"
read autobot2
done
case $autobot2 in 
	a) 	name="${Green}Ironhide${RESET}"
		hp=70
		attack=68;;

	b)	name="${Red}Optimus${RESET} ${Blue}Prime${RESET}"
		hp=98
		attack=95;;
esac
echo -e "
        You have selected the autobot $name who's HP is $hp and his attack power is $attack"
sleep 1
megatron=$((( $RANDOM % 7 ) + 1 ))

while [[ $autobot2 == a ]]
do
	echo -e "
        ${Cyan}Megatron is the leader of Decepticons and one of the most powerful of the Transformers.${RESET}"
	sleep 1
	echo "
        Prepare for battle. Choose your weapons(1-7)"
read weapon3
sleep 1
echo ""
until [[ $weapon3 ==  1 || $weapon3 == 2 || $weapon3 == 3 || $weapon3 == 4 || $weapon3 == 5 || $weapon3 == 6 || $weapon3 == 7 || $weapon3 == "matrix2" ]]
do
	echo "        In order to defeat Megatron, you need the best artillery. Choose your weapons appropriately"
	read weapon3
done
sleep 1
if [[ $megatron == $weapon3 || $weapon3 == "matrix2" ]]; then
	echo -e "
                     ${Cyan}The final battle is about to get started.${RESET}"
	sleep 1
	echo -e "
             ${Cyan}Megatron, the leader of Decepticons is your next and final opponent.${RESET}"
	sleep 1
	echo -e "
        ${Cyan}It will be tough to beat Megatron is he is much more powerful than Soundwave.${RESET}"
	sleep 1
	echo -e "
                   ${Cyan}It looks like the battle is coming to an end${RESET}"
	sleep 1.5
	echo -e "
         ${Cyan}Atlast, you 've defeated Megatron and the fierce battle has come to an end.${RESET}"
	sleep 1
	echo -e "
                         ${Cyan}The Autobots conquered Cybertron.${RESET}"
	sleep 1
else
	echo "
        You tried your best but the effort was not sufficient to defeat the mighty Megatron. Cybertron is lost"
	exit 1
fi
break
done

megatron1=$((( $RANDOM % 3 ) + 1))
while [[ $autobot2 = b ]]
do
	echo -e "
        ${Cyan}Fighting Megatron is not an easy task.${RESET}"
	sleep 1
	echo "
        Prepare for battle. Choose your weapons(1-3)"
	read weapon4
sleep 1
	echo ""
until [[ $weapon4 == 1 || $weapon4 == 2 || $weapon4 == 3 || $weapon4 == "matrix2" ]]
do
	echo "        In order to defeat Megatron, you need the best artillery. Choose your weapons appropriately"
	read weapon4
done
sleep 1
if [[ $weapon4 == $megatron1 || $weapon4 == "matrix2" ]]; then
	echo -e "
                          ${Cyan}The final battle is about to get started.${Reset}"
	sleep 1
	echo -e "
        ${Cyan}It's the leader of Autobots Optimus Prime vs leader of the evil Decepticons Megatron${RESET}"
	sleep 1
	echo -e "
           ${Cyan}This battle could go in any way and the outcome could be the cost of Cybertron${RESET}"
	sleep 1
	echo -e "
        ${Cyan}It seems like Optimus is battling it all out against Megatron and could possibly win${RESET}"
	sleep 1
	echo -e "
            ${Cyan}At last, you've defeated Megatron and the fierce battle has come to an end.${RESET}"
	sleep 1
	echo -e "
                              ${Green}The Autobots conquered Cybertron.${RESET}"
else
	echo "        You tried your best but the effot was not sufficient to defeat the mighty Megatron. Cybertron is lost"
fi
break
done

echo -e "

${Magenta}******************************************************************************************************************************************************
******************************************************************************************************************************************************${RESET}
"
sleep 2
