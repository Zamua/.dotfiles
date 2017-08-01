#Unbind
unalias gr 2>/dev/null
unalias gc 2>/dev/null

#Bind
alias g="gradle"
alias gb="gradle build"
alias gc="gradle clean"
alias gt="gradle test"

gr() {
    command="gradle run"

    if [ $# -gt 0 ]; then
        command+=" -Ptestfile=$1"
    fi

    eval $command
}

