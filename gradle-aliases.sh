#Gradle
alias g="gradle"
alias gb="gradle build"
alias gt="gradle test"

#if already bound, remove alias
if type gr > /dev/null; then
    unalias gr
fi

gr() {
    command="gradle run"

    if [ $# -gt 0 ]; then
        command+=" -Ptestfile=$1"
    fi

    eval $command
}

