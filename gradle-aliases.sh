#Gradle
alias g="gradle"
alias gb="gradle build"
alias gt="gradle test"

#remove git-remote alias
unalias gr

gr() {
    command="gradle run"

    for arg in $@; do
        command+=" -P=$arg"
    done

    eval command
}
