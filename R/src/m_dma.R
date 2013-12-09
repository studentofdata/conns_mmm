d.1 <- A.B.county.dma
d.2 <- C.E.county.dma
d.3 <- F.I.county.dma
d.4 <- J.M.county.dma
d.5 <- N.R.county.dma
d.6 <- S.Z.county.dma


d.t <- rbind(d.1,d.2,d.3,d.4,d.5,d.6)

d.t.1 <- d.t[!(duplicated(d.t$Area.Name)),]
