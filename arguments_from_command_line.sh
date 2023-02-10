#Here's an example of a shell script that takes command line arguments and displays them by name

#!/bin/bash

# Set default values for arguments
arg1="default1"
arg2="default2"
arg3="default3"

# Parse command line arguments
while [[ $# -gt 0 ]]
do
  key="$1"

  case $key in
    -a|--arg1)
    arg1="$2"
    shift # past argument
    shift # past value
    ;;
    -b|--arg2)
    arg2="$2"
    shift # past argument
    shift # past value
    ;;
    -c|--arg3)
    arg3="$2"
    shift # past argument
    shift # past value
    ;;
    *)
    # unknown option
    ;;
  esac
done

# Display arguments by name
echo "arg1: $arg1"
echo "arg2: $arg2"
echo "arg3: $arg3"


#To use this script, you would run it from the command line and pass in your arguments with the appropriate flags, like this

./script.sh -a value1 -b value2 -c value3

#Output:

arg1: value1
arg2: value2
arg3: value3
