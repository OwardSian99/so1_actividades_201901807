#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *thread_function(void *arg) {
  printf("Hilo creado!\n");
  return NULL;
}

int main() {
  pid_t pid;

  pid = fork();
  if (pid == 0) { /* proceso hijo */
    
    pthread_t thread;
    pthread_create(&thread, NULL, thread_function, NULL);
    pthread_join(thread, NULL);

    pid = fork();
    if (pid == 0) {
      printf("Segundo proceso hijo!\n");
    } else {
      wait(NULL);
    }
  } else {
    wait(NULL);
  }

  return 0;
}