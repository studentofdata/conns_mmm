st.all <- data.table(st.all)
st.all.1 <- st.all[!(is.na(st.all$Traffic)),]

st.all.2 <- st.all.1[,list(Sales = sum(Sales),
                           Traffic = sum(Traffic)),
                   by = date]
