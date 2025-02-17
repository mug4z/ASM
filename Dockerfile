FROM alpine:3
RUN  apk add --no-cache nasm
RUN  apk add --no-cache git
RUN  apk add --no-cache zsh
RUN  apk add --no-cache curl
RUN  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN  apk add --no-cache valgrind
RUN  apk add --no-cache gcc
RUN  apk add --no-cache gdb
RUN  apk add --no-cache make
ENTRYPOINT ["/bin/zsh"]

