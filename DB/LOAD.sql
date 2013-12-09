# Load for GRP data
LOAD DATA LOCAL INFILE 'C:/Users/Bobby Row/Documents/Google Drive/Grammin/Conns/R/data/grp.data.csv'
INTO TABLE total_grp
FIELDS terminated by ','
enclosed by '"'
lines terminated by '\n'
IGNORE 2 LINES
(campaign, market, vendor, media, commercial, grp, date, time, length, day);

# Load data for Sales & Traffic (need application data)
LOAD DATA LOCAL INFILE 'C:/Users/Bobby Row/Documents/Google Drive/Grammin/Conns/R/data/st.all.csv'
INTO TABLE total_st
FIELDS terminated by ','
enclosed by '"'
lines terminated by '\n'
IGNORE 1 LINES
(store,sales,traffic,market,date);
