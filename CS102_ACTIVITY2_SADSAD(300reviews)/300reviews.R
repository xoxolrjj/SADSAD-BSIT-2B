library(rvest)
library(dplyr)
library(writexl)
library(polite)

session <- bow(url = 'https://www.imdb.com/title/tt5776858/reviews?ref_=tt_urv',
               user_agent = "Student's Demo Educational")
session

session_scrape <- scrape(session)

scrape_reviews <- function(page_url) {
  page <- read_html(page_url)
  
  names <- page %>% html_nodes(".display-name-link") %>% html_text()
  dates <- page %>% html_nodes("span.review-date") %>% html_text()
  ratings <- page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  content_reviews <- page %>% html_nodes("a.title") %>% html_text()
  reviews <- page %>% html_nodes(".text.show-more__control") %>% html_text()
  
  phantom_thread_df = data.frame(
    Name = names[1:25],
    Date = dates[1:25],
    User_Rating = ratings[1:25],
    Content_Review = content_reviews[1:25],
    Reviews = reviews[1:25]
  )
}

phantom_thread_urls <- c(
  'https://www.imdb.com/title/tt5776858/reviews?ref_=tt_urv',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbzr3smmarz3untz77ja7e76ul5pjt6uck3oy2flmbkb4drqe7eauirauwzu6tuj5e66m7w4',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbqr3t4ycjt3qntr67oa3cpswt5pjt6uck3oqyvzpzmb4dv45p2bxrmnmi7cck7irr2f6g7a',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjzqpsmscb23uodz77mahe7yud5pjt6uck3ouzvvmrmb4drw6hpzzfztpbb4iikbixebuuee',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjvrtrmmbr43qmtd4pna3cp6wtgoq366ss7oazflmzndz4k5epqjcoyl7vktfdwv2nu33yen3a',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjtrdumsab53qkdx7xka3ap4u3hoq366ss7oq3fjmrndb4k4nfwahglutgs7qashqqmk4lo5gi',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmryqlrmscj52mkdd4pkapb7uv35pjt6uck3ou3f5mrkb4dtpvhsngxfge7gellu7f2exsvvi',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrwqlrmsaj43aktx4peb3dpeutcoq366ss5oqyfxnjpdb4k5p5gerkiyfmxpierahjkb7wvnea',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmruqpsmoaby2indz77jb3dpsulfoq366ss6oe3frnbcdv4k4vh4rilnktlx4nqyxqrtxc2y5jy',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrvrdu44az73upd367katbp6wt5pjt6uck3om3fvmbkb4dzdbxuphe3kofhxbq4byufobvvw',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrtrdumsab53qkdx7xka3ap4ud5pjt6uck6o4yf7mzpb4dzucrujymlaha7bzj4gyc7ukaas',
  'https://www.imdb.com/title/tt5776858/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrrqlqm6cby3imdr6xiatapetttfjrksdc7ou2fjnjyobsrabk2zuop4qoyow2bxy7txfja'
)


all_reviews <- lapply(phantom_thread_urls, scrape_reviews)

final_all_reviews <- do.call(rbind, all_reviews)

View(final_all_reviews)

write_xlsx(final_all_reviews, "scrape300reviews.xlsx")
