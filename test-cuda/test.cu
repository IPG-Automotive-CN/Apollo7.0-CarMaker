#include <stdio.h>
#include <pthread.h>
#include <cuda.h>

#define N_THREAD 2

void *thread_run(void *pp)
{
    int *p=(int*)pp;
    
    int tid=p[0];
    int id;
		
char data[]={'c'}; 
    cudaGetDevice(&id);
    printf("%d idev=%d\n",tid,id);
    unsigned char* m = ( unsigned char*)malloc(sizeof(char)*3);
    
    cudaMemcpy(m, data, 1, cudaMemcpyDefault);
    
    pthread_exit(NULL);
}

int main(int argc,char *argv[])
{
    pthread_t tid[2];
    int i;
    int ii[2];
    
    int a = cudaSetDevice(0);
    if(a == cudaSuccess){
    	printf("cuda success 1\n");
	}    
    for (i=0;i<N_THREAD;++i)
    {
        ii[i]=i;
        pthread_create(&tid[i],NULL,thread_run,&ii[i]);
    }
    
    for (i=0;i<N_THREAD;++i)
    {
        pthread_join(tid[i],NULL);
    }
    int b = cudaSetDevice(0);
    if(b == cudaSuccess){
    	printf("cuda success 2\n");
	}    
}
