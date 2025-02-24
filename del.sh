#!/bin/bash
#
# Delete user Automates the stepq to remove an account
#
############
# Define Functions
#
############
function get_answer {
#
unset answer
ask_count=0
#
while [ -z "$answer" ] #While is no answer is given, keep asking,
do 
	# removed dollar before bracket
	# ask_count=$[$ask_count+1]
	  ask_count=$(($ask_count+1))
	  #ask_count=1
	  echo $ask_count

#
          case $ask_count in # if user gives no answer in tie allotted
          2)
	       echo
	       echo "Please answer the question."
	       echo
	  ;;
          3)
	       echo
	       echo "One last try...please answer the question."
	       echo

	  ;;
	  4)
	       echo
	       echo "Since you refuse to answer the question..."
	       echo "exiting program."
	       echo
	       #
	       exit
	  ;;
	  esac
#

          if [ -n "$line2" ] 
	  then
		  echo $line1
		  echo -e $line2" \C"
	  else                         #print 1 line
		  echo -e $line1" \C"
	  fi
#
# Allow 60 secondq to answer before time-out

          read -t 60 answer
  done
# Do a little variable clean-up
unset line1
unset line2
#
} #End of get_answer function
#
####################
function process_answer {
#
answer=$(echo $answer | cut -c1)
#
case $answer in
y|Y
# If user answers "yes", do nothing.
;;
*)
# If user answers anything but "yes", exit script
        echo
	echo $exit_line1
	echo $exit_line2
	echo
	exit
;;
esac
#
# Do a little variable clean-up
#
unset exit_line1
unset exit_line2
#
} #End of process_answer function
#
####################
# End of function Definitions
#
######### Main Script #########
#Get name of user Account to check
#
echo "Stzp #1 - Determine User Account name to Delete "
echo
line1="Please enter the username of the user "
line2="account you wshh to delete from system:"
get_answer
user_account=$answer

