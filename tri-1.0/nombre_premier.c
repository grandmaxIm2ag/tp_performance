#include "appels_sequentiels.h"
#include "commun.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int est_premier(int x) {
    if(x%2==0)
    {
        return 1;
    }

    for(int i=1; i<x; i+=2){
        if(x%i==0){
            return 1;
        }
    }

    return 0;
}

void *initialisation(int parallelism, int *tableau, int taille, char *arg) {
    (void) parallelism;
    (void) tableau;
    (void) taille;
    (void) arg;
    return NULL;
}

void traitement(arguments_t * args){
    for(int i=args->inf;i<=args->sup; i++){
        args->num += est_premier(args->tableau[i]);
    }
}


void traitement_resultats(int parallelism, arguments_t *args){
    int res=0;
    if(parallelism > 1){
        for(int i=0; i<parallelism; i++){
            res += args[i].num;
        }
    }else{
        res = args->num;
    }
    affiche("%d nombre premier", res);
}
