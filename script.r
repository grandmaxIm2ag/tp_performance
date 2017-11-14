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
print(a2)
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
print(a2)
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
script("~/Documents/tp_performance/tris3.csv"
	,"graphes/global_temps_machine_accel3.png", "graphes/global_temps_machine_eff3.png"
	,"graphes/temps_user_accel3.png", "graphes/temps_user_eff3.png"
	,"graphes/temps_systeme_accel3.png", "graphes/global_temps_systeme_eff3.png"
)
script("~/Documents/tp_performance/tris4.csv"
	,"graphes/global_temps_machine_accel4.png", "graphes/global_temps_machine_eff4.png"
	,"graphes/temps_user_accel4.png", "graphes/temps_user_eff4.png"
	,"graphes/temps_systeme_accel4.png", "graphes/global_temps_systeme_eff4.png"
	)
script("~/Documents/tp_performance/tris5.csv"
	,"graphes/global_temps_machine_accel5.png", "graphes/global_temps_machine_eff5.png"
	,"graphes/temps_user_accel5.png", "graphes/temps_user_eff5.png"
	,"graphes/temps_systeme_accel5.png", "graphes/global_temps_systeme_eff5.png")
script("~/Documents/tp_performance/tris6.csv"
	,"graphes/global_temps_machine_accel6.png", "graphes/global_temps_machine_eff6.png"
	,"graphes/temps_user_accel6.png", "graphes/temps_user_eff6.png"
	,"graphes/temps_systeme_accel6.png", "graphes/global_temps_systeme_eff6.png")
script("~/Documents/tp_performance/tris7.csv"
	,"graphes/global_temps_machine_accel7.png", "graphes/global_temps_machine_eff7.png"
	,"graphes/temps_user_accel7.png", "graphes/temps_user_eff7.png"
	,"graphes/temps_systeme_accel7.png", "graphes/global_temps_systeme_eff7.png")
script("~/Documents/tp_performance/tris8.csv"
	,"graphes/global_temps_machine_accel8.png", "graphes/global_temps_machine_eff8.png"
	,"graphes/temps_user_accel8.png", "graphes/temps_user_eff8.png"
	,"graphes/temps_systeme_accel8.png", "graphes/global_temps_systeme_eff8.png")
script("~/Documents/tp_performance/tris9.csv"
	,"graphes/global_temps_machine_accel9.png", "graphes/global_temps_machine_eff9.png"
	,"graphes/temps_user_accel9.png", "graphes/temps_user_eff9.png"
	,"graphes/temps_systeme_accel9.png", "graphes/global_temps_systeme_eff9.png")
script("~/Documents/tp_performance/tris10.csv"
	,"graphes/global_temps_machine_accel10.png", "graphes/global_temps_machine_eff10.png"
	,"graphes/temps_user_accel10.png", "graphes/temps_user_eff10.png"
	,"graphes/temps_systeme_accel10.png", "graphes/global_temps_systeme_eff10.png")
script("~/Documents/tp_performance/tris11.csv"
	,"graphes/global_temps_machine_accel11.png", "graphes/global_temps_machine_eff11.png"
	,"graphes/temps_user_accel11.png", "graphes/temps_user_eff11.png"
	,"graphes/temps_systeme_accel11.png", "graphes/global_temps_systeme_eff11.png")
script("~/Documents/tp_performance/tris12.csv"
	,"graphes/global_temps_machine_accel12.png", "graphes/global_temps_machine_eff12.png"
	,"graphes/temps_user_accel12.png", "graphes/temps_user_eff12.png"
	,"graphes/temps_systeme_accel12.png", "graphes/global_temps_systeme_eff12.png")
script("~/Documents/tp_performance/tris13.csv"
	,"graphes/global_temps_machine_accel13.png", "graphes/global_temps_machine_eff13.png"
	,"graphes/temps_user_accel13.png", "graphes/temps_user_eff13.png"
	,"graphes/temps_systeme_accel13.png", "graphes/global_temps_systeme_eff13.png")
script("~/Documents/tp_performance/tris14.csv"
	,"graphes/global_temps_machine_accel14.png", "graphes/global_temps_machine_eff14.png"
	,"graphes/temps_user_accel14.png", "graphes/temps_user_eff14.png"
	,"graphes/temps_systeme_accel14.png", "graphes/global_temps_systeme_eff14.png")
script("~/Documents/tp_performance/tris15.csv"
	,"graphes/global_temps_machine_accel15.png", "graphes/global_temps_machine_eff15.png"
	,"graphes/temps_user_accel15.png", "graphes/temps_user_eff15.png"
	,"graphes/temps_systeme_accel15.png", "graphes/global_temps_systeme_eff15.png")
script("~/Documents/tp_performance/tris16.csv"
	,"graphes/global_temps_machine_accel16.png", "graphes/global_temps_machine_eff16.png"
	,"graphes/temps_user_accel16.png", "graphes/temps_user_eff16.png"
	,"graphes/temps_systeme_accel16.png", "graphes/global_temps_systeme_eff16.png")