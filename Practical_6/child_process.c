#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    pid_t pid;
    // pid = fork();

    if (pid < 0)
    {
        printf("Child creation failed \n");
    }

    else if (pid == 0)
    {
        printf("Inside Child prouns\n");
        printf("Child pid %d\n", getpid());
        printf("Parent id %d\n", getpid());
    }

    else
    {
        printf("Inside Parent\n");
        printf("Parent id %d \n", getpid());
        printf("Child id %d \n", pid);
    }

    return 0;
}