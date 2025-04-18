# ASM
Here is my personal repository where I keep x86_64 assembly code.

## Goal
The goal of this repository is to implement in assembly the things I already know how to do in other languages, in order to learn assembly.

## Assemble the code
There is two ways to do it, with docker or without docker.

### With docker
It will install the needed tools into the docker.

1. Clone the repo.
```
git clone https://github.com/mug4z/ASM.git
```

2. Go to the repo folder.
```
cd ASM
```

3. Build the docker image.
```
docker build -t assembly .
```

4. Run the docker
```
docker run -it -v .:/assembly assembly
```

5. Go to assembly directory
```
cd assembly 
```

Now all the command will be executed in the docker with the file on you're computer.

### Without Docker
Just install the tools

- NASM (2.16.03) or higher
- gcc  (14.2.0) or higher
- gdb  (15.2) or higher


### Avengers assemble.

For linux
```
nasm -felf64 src/helloWorld.s && ld src/helloWorld.o -o helloWorld
```

```
./helloWorld
Salut
```
