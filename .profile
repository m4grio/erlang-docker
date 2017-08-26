erl() {
    docker run -it --rm --init --volume `pwd`:/opt/app erlangdocker_erlang erl $@
}
