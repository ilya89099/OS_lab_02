#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>
#include <string.h>
#include <sys/wait.h>
#include <fcntl.h>

int parse_string(char buf[], int size, bool* prev) {
    int temp_size = 0;
    char copy[size];
    bool space = *prev;
    for (int i = 0; i < size; ++i) {
        if (buf[i] != ' ' || !space) {
            if (buf[i] == ' ') {
                space = true;
            } else {
                space = false;
            }
            copy[temp_size] = buf[i];
            temp_size++;
        }
    }
    for (int i = 0; i < temp_size; ++i) {
        buf[i] = copy[i];
    }
    *prev = space;
    return temp_size;
}

int main(int argc, char** argv) {

    int fd[2];

    const char* arg_fail = "This program needs a name file as argument\n";
    const char* pipe_fail = "Pipe failure. Terminate\n";
    const char* fork_fail = "Fork failure. Terminate\n";

    if (argc < 2) {
        write(STDOUT_FILENO, arg_fail, strlen(arg_fail));
        exit(1);
    }

    if (pipe(fd) < 0) {
        write(STDOUT_FILENO, pipe_fail, strlen(pipe_fail));
        exit(1);
    }

    int pid = fork();

    if (pid == -1) {
        write(STDOUT_FILENO, fork_fail, strlen(fork_fail));
        exit(1);
    }

    if (pid == 0) { // child code
        // обработать ввод, вывести в stdout
        char buffer[100];
        read(fd[0], buffer, 100);
        int output_fd = open(buffer, O_RDWR | O_TRUNC);
        if (output_fd == -1) {
            close(output_fd);
            exit(1);
        }

        int read_count = read(fd[0], buffer, 100);
        bool space = false;
        while (read_count == 100) {
            int parsed_size = parse_string(buffer, read_count, &space);
            write(output_fd, buffer, parsed_size);
            read_count = read(fd[0], buffer, 100);
        }
        if (read_count != 0) {
            int parsed_size = parse_string(buffer, read_count, &space);
            write(output_fd, buffer, parsed_size);
        }
        close(output_fd);
        exit(0);

    } else { // parent code
        char buffer[100];
        write(fd[1], argv[1], 100);
        int read_count = read(STDIN_FILENO, buffer, 100);
        while (read_count == 100) {
            write(fd[1], buffer, 100);
            read_count = read(STDIN_FILENO, buffer, 100);
        }
        if (read_count != 0) {
            write(fd[1], buffer, read_count);
        }
        int statlock = 0;
        wait(&statlock);
        const char* success = "Process completed successfully\n";
        const char* fail = "Process failed\n";
        if (statlock == 0) {
            write(STDOUT_FILENO, success, strlen(success));
        } else {
            write(STDOUT_FILENO, fail, strlen(fail));
        }
    }

    return 0;
}