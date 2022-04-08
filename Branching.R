setwd("~/Документы/Фосфор")
data <- read.csv("Anig2.csv")
data <- as.matrix(data)

Anig <- as.data.frame(rbind(data [,1:3], data [,c(1,2,4)], data [,c(1,2,5)]))

Anig1 <- Anig [Anig$P4 == 1,]
Anig01 <- Anig [Anig$P4 == 0.1,]
Anig0 <- Anig [Anig$P4 == 0,]

cl = c("olivedrab","gold", "cyan3","hotpink", "tomato")

ggplot () +
  geom_point (data = Anig1, mapping = aes (x = Generation, y = Branching_amount), color = cl[1], cex = 4) +
  stat_smooth(data = Anig1, mapping = aes (x = Generation, y = Branching_amount), color = cl[1], fill = cl[1], cex = 4) +
  geom_point (data = Anig01, mapping = aes (x = Generation, y = Branching_amount), color = cl[2], cex = 4) +
  stat_smooth(data = Anig01, mapping = aes (x = Generation, y = Branching_amount), color = cl[2], fill = cl[2], cex = 4) +
  geom_point (data = Anig0, mapping = aes (x = Generation, y = Branching_amount), color = cl[3], cex = 4) +
  stat_smooth(data = Anig0, mapping = aes (x = Generation, y = Branching_amount), color = cl[3], fill = cl[3], cex = 4) +
  theme_light()