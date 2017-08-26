# Earl Docker
Part of my experiments – and stuborness – not to install any programming language locally but run everything in Docker.

## Installation

1. Build the container using docker-compose
```shell
$ docker-compose build
...
Successfully built 81a36b983585
Successfully tagged erlangdocker_erlang:latest
```

2. Source erlang
```shell
$ erl # To confirm it's not locally installed
zsh: command not found: erl
$ source .profile
$ which erl
erl () {
    docker run -it --rm --init --volume `pwd`:/opt/app erlangdocker_erlang erl $@
}
$
$ erl
Erlang/OTP 20 [erts-9.0.3] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V9.0.3  (abort with ^G)
1>
```

(Or something a bit more pendantic):
```shell
$ erl -eval '{ok, Version} = file:read_file(filename:join([code:root_dir(), "releases", erlang:system_info(otp_release), "OTP_VERSION"])), io:fwrite(Version), halt().' -noshell
20.0.3
```

You can also add the function to your bashrc/profile/zshrc/whatnot:
```shell
cat .profile >> ~/.zshrc # for example
```

## Usage
```shell
$ erl
Erlang/OTP 20 [erts-9.0.3] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V9.0.3  (abort with ^G)
1>
```

That is it really. Compile and execute your stuff.
```erlang
>1 $A.
97
2>^C
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
^C
```

## Author
- Mario Álvarez <ahoy@m4grio.me>
