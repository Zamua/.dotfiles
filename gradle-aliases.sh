#Gradle
alias g="gradle"
alias gb="gradle build"
alias gt="gradle test"

#if already bound, remove alias
unalias gr 2>/dev/null

gr() {
    command="gradle run"

    if [ $# -gt 0 ]; then
        command+=" -Ptestfile=$1"
    fi

    eval $command
}

