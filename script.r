library(ggplot2)
library(plyr)
library(reshape2)



nbt <- c(2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
eff <<- c()

data_seq <- data.frame(read.csv2(file="tri_seq.csv", sep=';', dec='.', header=TRUE))


stat_naif<-ddply(data_seq,c("taille"),summarise,Temps_Machine=mean(tempsMachine), Temps_User=mean(TempsUser))


accelTM <- function(tab, sortie, sortie2)
{
a2 <- merge(stat_naif, tab, by = 'taille')
print(a2)
print(stat_naif)
print(tab)
a2$acceleration=a2$Temps_Machine.x/a2$Temps_Machine.y
a2$efficacite=a2$acceleration/4
eff <<- c(eff, mean(a2$efficacite))
print(eff)
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


analyse <- function(data_thread, sortie1, sortie2, sortie3, sortie4)
{

stat_naif2<-ddply(data_thread,c("taille"),summarise,Temps_Machine=mean(tempsMachine), Temps_User=mean(TempsUser))
print(stat_naif2)
accelTM(stat_naif2, sortie1, sortie2)
accelTU(stat_naif2, sortie3, sortie4)
}


script <- function(fichier,s1,s2,s3,s4)
{
data_thread2 <- data.frame(read.csv2(file=fichier, sep=';', dec='.', header=TRUE))
analyse(data_thread2,s1,s2,s3,s4)
}

print(data_seq)

script("tris2.csv"
	,"graphes/global_temps_machine_accel2.png", "graphes/global_temps_machine_eff2.png"
	,"graphes/temps_user_accel2.png", "graphes/temps_user_eff2.png")

script("tris3.csv"
	,"graphes/global_temps_machine_accel3.png", "graphes/global_temps_machine_eff3.png"
	,"graphes/temps_user_accel3.png", "graphes/temps_user_eff3.png")
script("tris4.csv"
	,"graphes/global_temps_machine_accel4.png", "graphes/global_temps_machine_eff4.png"
	,"graphes/temps_user_accel4.png", "graphes/temps_user_eff4.png")
script("tris5.csv"
	,"graphes/global_temps_machine_accel5.png", "graphes/global_temps_machine_eff5.png"
	,"graphes/temps_user_accel5.png", "graphes/temps_user_eff5.png")
script("tris6.csv"
	,"graphes/global_temps_machine_accel6.png", "graphes/global_temps_machine_eff6.png"
	,"graphes/temps_user_accel6.png", "graphes/temps_user_eff6.png")
script("tris7.csv"
	,"graphes/global_temps_machine_accel7.png", "graphes/global_temps_machine_eff7.png"
	,"graphes/temps_user_accel7.png", "graphes/temps_user_eff7.png")
script("tris8.csv"
	,"graphes/global_temps_machine_accel8.png", "graphes/global_temps_machine_eff8.png"
	,"graphes/temps_user_accel8.png", "graphes/temps_user_eff8.png")
script("tris9.csv"
	,"graphes/global_temps_machine_accel9.png", "graphes/global_temps_machine_eff9.png"
	,"graphes/temps_user_accel9.png", "graphes/temps_user_eff9.png")
script("tris10.csv"
	,"graphes/global_temps_machine_accel10.png", "graphes/global_temps_machine_eff10.png"
	,"graphes/temps_user_accel10.png", "graphes/temps_user_eff10.png")
script("tris11.csv"
	,"graphes/global_temps_machine_accel11.png", "graphes/global_temps_machine_eff11.png"
	,"graphes/temps_user_accel11.png", "graphes/temps_user_eff11.png")
script("tris12.csv"
	,"graphes/global_temps_machine_accel12.png", "graphes/global_temps_machine_eff12.png"
	,"graphes/temps_user_accel12.png", "graphes/temps_user_eff12.png")
script("tris13.csv"
	,"graphes/global_temps_machine_accel13.png", "graphes/global_temps_machine_eff13.png"
	,"graphes/temps_user_accel13.png", "graphes/temps_user_eff13.png")
script("tris14.csv"
	,"graphes/global_temps_machine_accel14.png", "graphes/global_temps_machine_eff14.png"
	,"graphes/temps_user_accel14.png", "graphes/temps_user_eff14.png")
script("tris15.csv"
	,"graphes/global_temps_machine_accel15.png", "graphes/global_temps_machine_eff15.png"
	,"graphes/temps_user_accel15.png", "graphes/temps_user_eff15.png")
script("tris16.csv"
	,"graphes/global_temps_machine_accel16.png", "graphes/global_temps_machine_eff16.png"
	,"graphes/temps_user_accel16.png", "graphes/temps_user_eff16.png")

print(nbt)
print(eff)
l <- list(nbt, eff)
d <- data.frame(l)
colnames(d) <- c("Nombre_de_Threads", "Efficacité_moyenne")
pa2<-ggplot()
pa2<-pa2+geom_point(data=d, aes(x=Nombre_de_Threads, y=Efficacité_moyenne)) + geom_line(data=d, aes(x=Nombre_de_Threads, y=Efficacité_moyenne))
q
ggsave(file="graphes/compEff.png", plot = pa2)
