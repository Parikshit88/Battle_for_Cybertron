#!/bin/bash


sleep 1
echo "

******************************************************************************************************************************************************
******************************************************************************************************************************************************
"
sleep 1

echo "        The Decepticons have betrayed the Autobots and the planet on which both the races co-existed is in grave danger.
"
sleep 1.5
echo "                            There is a war erupted between both the Transformer race.
"
sleep 1.5
echo "               The winner of a ferocious battle will decide who will conquer and rule over Cybertron.
"
sleep 1.5
echo "
*******************************************************************************************************************************************************
*******************************************************************************************************************************************************
"
sleep 1




# 1st battle against Low Level Decepticon
echo "        Your battle against the decepticons starts. Please choose your autobot:
        a) Bumblebee
        b) Ironhide
        c) Optimus Prime"
read autobot
echo ""
until [[ $autobot == a || $autobot == c || $autobot == b ]]
do
	echo "        For the sake of saving Cybertron, please select the appropriate autobot"
	read autobot
done
case $autobot in 
	a)	name="Bumblebee"
		hp=35
		attack=40;;

	b)	name="Ironhide"
		hp=70
		attack=68;;

	c)	name="Optimus Prime"
		hp=98
		attack=95;;
esac
sleep 1
echo "        You have selected the autobot $name who's HP is $hp and his attack power is $attack"
echo ""
sleep 1
echo "        $name will fight against the low level Decepticon"
echo ""
sleep 1


while [[ $autobot == b || $autobot == c ]]
do
	echo "        You know what, $name can defeat this low level Decepticon without loosing much of his HP. Hence, he can advance to the next battle."
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
	echo " 
                   The battle has started"
sleep 1
	echo "
               $name engaging with the enemy"
sleep 1.5
	echo "
          You've defeated this low level Decepticon."
sleep 1.5
	echo "        
          But $name has lost most of his HP and will prove ineffective in the next battles or could loose his life in the battlefield. Hence, you should let $name rest."
else
	echo "
        You tried your best but the effort was not sufficient. Cybertron is lost"
exit 1
fi
break
done
sleep 2



# 2nd battle agaist Soundwave
echo "
"
echo "        You next Opponent is Soundwave. Please select your autobot:
        a) Ironhide
        b) Optimus Prime"
read autobot1
until [[ $autobot1 == a || $autobot1 == b ]]
do
	echo "        For the sake of saving Cybertron, please select the appropriate autobot"
read autobot1
done
case $autobot1 in 
	a)		name="Ironhide"
			hp=70
			attack=68;;
	b)
			name="Optimus Prime"
			hp=98
			attack=95;;
esac
echo " "
echo "
        You have selected the autobot $name who's HP is $hp and his attack power is $attack"
sleep 1
echo "
        $name will fight against Soundwave"
sleep 1.5

soundwave=$((( $RANDOM %  4 ) + 1 ))
while [[ $autobot1 ==  a ]]
do
	echo "
        Prepare for battle. Soundwave may prove to be a tougher opponent."
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
	echo " 
                            The battle has started"
	sleep 1
	echo "
               Defeating Soundwave is difficult but not impossible"
	sleep 1
	echo "
                        Fighting using all your strength"
	sleep 1.5
	echo "
          You have defeated Soundwave. You can advance to the final battle"
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
	echo "
                                                         The battle has started"
	sleep 1
	echo "
        Being the Prime, Optimus can battle against Soundwave and he has the power to defeat the Evil Decepticon without loosing much of his HP"
	sleep 1.5
	echo "
                                     You have defeated Soundwave. You can advance to the final battle"
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
echo "        Your final opponent is Megatron. Please select your autobot:
        a) Ironhide
        b) Optimus"

read  autobot2
until [[ $autobot2 == a || $autobot2 == b ]]
do 
	echo "        For the sake of saving Cybertron, please select the appropriate autobot"
read autobot2
done
case $autobot2 in 
	a) 	name="Ironhide"
		hp=70
		attack=68;;

	b)	name="Optimus Prime"
		hp=98
		attack=95;;
esac
echo "
        You have selected the autobot $name who's HP is $hp and his attack power is $attack"
sleep 1
megatron=$((( $RANDOM % 7 ) + 1 ))

while [[ $autobot2 == a ]]
do
	echo "
        Megatron is the leader of Decepticons and one of the most powerful of the Transformers."
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
	echo "
                     The final battle is about to get started."
	sleep 1
	echo "
             Megatron, the leader of Decepticons is your next and final opponent."
	sleep 1
	echo "
        It will be tough to beat Megatron is he is much more powerful than Soundwave."
	sleep 1
	echo "
                   It looks like the battle is coming to an end"
	sleep 1.5
	echo "
         Atlast, you 've defeated Megatron and the fierce battle has come to an end."
	sleep 1
	echo "
                         The Autobots conquered Cybertron."
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
	echo "
        Fighting Megatron is not an easy task."
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
	echo "
                          The final battle is about to get started."
	sleep 1
	echo"
        It's the leader of Autobots Optimus Prime vs leader of the evil Decepticons Megatron"
	sleep 1
	echo "
           This battle could go in any way and the outcome could be the cost of Cybertron"
	sleep 1
	echo "
        It seems like Optimus is battling it all out against Megatron and could possibly win"
	sleep 1
	echo "
            At last, you've defeated Megatron and the fierce battle has come to an end."
	sleep 1
	echo "
                              The Autobots conquered Cybertron."
else
	echo "        You tried your best but the effot was not sufficient to defeat the mighty Megatron. Cybertron is lost"
fi
break
done

echo "

******************************************************************************************************************************************************
******************************************************************************************************************************************************
"
sleep 2
