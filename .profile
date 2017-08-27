erl() {
    docker run -it --rm --init --volume `pwd`:/opt/app erlangdocker_erlang erl $@
}

rebar3() {
    docker run -it --rm --init --volume `pwd`:/opt/app erlangdocker_rebar3 rebar3 $@
}
