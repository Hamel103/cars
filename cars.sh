#! /bin/bash
# cars.sh
# Alex Hamel

CHOICE=""
i=0
while [ $i=0 ]
do
	echo "If you would like to add a car, enter 1,"
	echo "If you would like to list the cars, enter 2,"
	echo "If you would like to exit, enter 3: "
	read CHOICE

	case "$CHOICE" in
		"1")
			year=""
			echo "Enter the year: "
			read year

			make=""
			echo "Enter the make: "
			read make

			model=""
			echo "Enter the model: "
			read model

			echo "$year:$make:$model" >> "My_old_cars.txt"
			;;
		"2")
			sort "My_old_cars.txt"
			;;
		"3")
			echo "Goodbye."
			break
			;;
		*)
			echo "You did not enter a valid option, please try again. "
			;;
	esac
done
