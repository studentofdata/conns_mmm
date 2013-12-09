# Total Amount of GRPs 
DROP TABLE IF EXISTS total_grp;
CREATE TABLE IF NOT EXISTS total_grp 
(
`campaign` VARCHAR(300),
`market` VARCHAR(300),
`vendor` VARCHAR(300),
`media` VARCHAR(300),
`commercial` VARCHAR(300),
`grp` VARCHAR(300),
`date` VARCHAR(300),
`time` VARCHAR(300),
`length` VARCHAR(300),
`day` VARCHAR(300)
);

#Table for Sales & Traffic (need Application data)
DROP TABLE IF EXISTS total_st;
CREATE TABLE IF NOT EXISTS total_st
(
`store` VARCHAR(300),
`sales` VARCHAR(300),
`traffic` VARCHAR(300),
`market` VARCHAR(300),
`date` VARCHAR(300)
);



