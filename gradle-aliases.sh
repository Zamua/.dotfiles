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

    for arg in $@; do
        command+=" -P=$arg"
    done

    eval command
}
