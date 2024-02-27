install.packages("DBI")
install.packages("odbc")
install.packages("RMariaDB")
connection <- dbConnect(RMariaDB::MariaDB(),
                        dsn="RMaria-connection",
                        Server = "localhost",
                        dbname = "sample_db",
                        user = "root"
)

#I import the csv file named Arxiv papers into an existing table in MYSQL and then I connect it to R, and get all of the databases instead. 
#THIS IS THE COMMAND I MADE IN MariaDB 
#first i made a table which name posts and create the table which contains id, title, author_id, description, content, date. 

#this is the command. LOAD DATA FILE "PATH FILE" INTO TABLE table_name FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

dbListTables(connection)

dbListFields(connection,"posts")   

posts_dta <- dbGetQuery(connection, "SELECT * FROM sample_db.posts ORDER BY ID") 
#and incase i wanna get 1-50 only i can add "ORDER BY ID LIMIT 50" SO I CAN ONLY GET 50.

glimpse(posts_dta)

tail(posts_dta)

posts_data <- dbGetQuery(connection, "SELECT title,description FROM sample_db.posts")
posts_data[c(1:2),]

SqlQuery <- "
  SELECT title,description 
  FROM sample_db.posts
  "


data_tibble <- as_tibble(dbGetQuery(connection,SqlQuery))
View(data_tibble)
View(posts_dta)

write.csv(posts_dta, file = "POSTS_DATA.csv", row.names = FALSE)

#disconnect from dbase
dbDisconnect(connection)

