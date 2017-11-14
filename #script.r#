library(ggplot2)
library(plyr)
library(reshape2)



#Préparation données + temps global machine
data_seq <- data.frame(read.csv2(file="tri_seq.csv", sep=';', dec='.', header=TRUE))


stat_naif<-ddply(data_seq,c("taille"),summarise,Temps_Machine=mean(tempsMachine), Temps_User=mean(TempsUser), Temps_Systeme=mean(TempSys))


accelTM <- function(tab, sortie, sortie2)
{
a2 <- merge(stat_naif, tab, by = 'taille')
print(a2)
a2$acceleration=a2$Temps_Machine.x/a2$Temps_Machine.y
a2$efficacite=a2$acceleration/16
pa2<-ggplot()
pa2<-pa2+geom_point(data=a2, aes(x=taille, y=acceleration)) + geom_line(data=a2, aes(x=taille, y=acceleration))
ggsave(filename=sortie, plot=pa2, width=8, height=8)
pa2<-ggplot()
pa2<-pa2+geom_point(data=a2, aes(x=taille, y=efficacite)) + geom_line(data=a2, aes(x=taille, y=efficacite))
ggsave(filename=sortie2, plot=pa2, width=8, height=8)
}

accelTU <- function(tab, sortie, sortie2)
{
a2 <- merge(stat_naif, tab, by = 'taille')
a2$acceleration=a2$Temps_User.x/a2$Temps_User.y
a2$efficacite=a2$acceleration/16
pa2<-ggplot()
pa2<-pa2+geom_point(data=a2, aes(x=taille, y=acceleration)) + geom_line(data=a2, aes(x=taille, y=acceleration))
ggsave(filename=sortie, plot=pa2, width=8, height=8)
pa2<-ggplot()
pa2<-pa2+geom_point(data=a2, aes(x=taille, y=efficacite)) + geom_line(data=a2, aes(x=taille, y=efficacite))
ggsave(filename=sortie2, plot=pa2, width=8, height=8)
}

accelTS <- function(tab, sortie, sortie2)
{
a2 <- merge(stat_naif, tab, by = 'taille')
a2$acceleration=a2$Temps_Systeme.x/a2$Temps_Systeme.y
a2$efficacite=a2$acceleration/16
pa2<-ggplot()
pa2<-pa2+geom_point(data=a2, aes(x=taille, y=acceleration)) + geom_line(data=a2, aes(x=taille, y=acceleration))
ggsave(filename=sortie, plot=pa2, width=8, height=8)
pa2<-ggplot()
pa2<-pa2+geom_point(data=a2, aes(x=taille, y=efficacite)) + geom_line(data=a2, aes(x=taille, y=efficacite))
ggsave(filename=sortie2, plot=pa2, width=8, height=8)
}

analyse <- function(data_thread, sortie1, sortie2, sortie3, sortie4, sortie5, sortie6)
{

stat_naif2<-ddply(data_thread,c("taille"),summarise,Temps_Machine=mean(tempsMachine), Temps_User=mean(TempsUser), Temps_Systeme=mean(TempSys))
accelTM(stat_naif2, sortie1, sortie2)
accelTU(stat_naif2, sortie3, sortie4)
accelTS(stat_naif2, sortie5, sortie6)
}


script <- function(fichier,s1,s2,s3,s4,s5,s6)
{
data_thread2 <- data.frame(read.csv2(file=fichier, sep=';', dec='.', header=TRUE))
analyse(data_thread2,s1,s2,s3,s4,s5,s6)
}


script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png"
)
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png"
	)
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")
script("~/Documents/tp_performance/tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png"
	,"graphes/temps_systeme_accel2.png", "graphes/global_temps_systeme_eff2.png")