library(rvest)
library(polite)
library(dplyr)

phanthomthread_url<-'https://www.imdb.com/title/tt5776858/reviews?ref_=tt_urv' 

session <- bow(phanthomthread_url,
               user_agent = "Educational")
session

for(url in phanthomthread_url){
  page <- read_html(url)
  
  phanthomthread_names<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthred_df<-data.frame(
    Name=phanthomthread_names[1:25],
    Date=phanthomthread_dates[1:25],
    User_Rating=phanthomthread_ratings[1:25],
    Content_Review=phanthomthread_contentReviews[1:25],
    Review = phanthomthread_reviews[1:25]
  )
}

phanthomthread_url2<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbzr3smmarz3untz77ja7e76ul5pjt6uck3oy2flmbkb4drqe7eauirauwzu6tuj5e66m7w4'
session2 <- bow(phanthomthread_url2,
                user_agent = "Educational")
session2

for(url in phanthomthread_url2){
  page <- read_html(url)
  
  phanthomthread_names2<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates2<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings2<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews2<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews2<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df2<-data.frame(
    Name=phanthomthread_names2[1:25],
    Date=phanthomthread_dates2[1:25],
    User_Rating=phanthomthread_ratings2[1:25],
    Content_Review=phanthomthread_contentReviews2[1:25],
    Reviews=phanthomthread_reviews2[1:25]
  )
}

phanthomthread_url3<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbqr3t4ycjt3qntr67oa3cpswt5pjt6uck3oqyvzpzmb4dv45p2bxrmnmi7cck7irr2f6g7a'
session3 <- bow(phanthomthread_url3,
                user_agent = "Educational")
session3

for(url in phanthomthread_url3){
  page <- read_html(url)
  
  phanthomthread_names3<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates3<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings3<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews3<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews3<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df3<-data.frame(
    Name=phanthomthread_names3[1:25],
    Date=phanthomthread_dates3[1:25],
    User_Rating=phanthomthread_ratings3[1:25],
    Content_Review=phanthomthread_contentReviews3[1:25],
    Reviews=phanthomthread_reviews3[1:25]
  )
}

phanthomthread_url4<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjzqpsmscb23uodz77mahe7yud5pjt6uck3ouzvvmrmb4drw6hpzzfztpbb4iikbixebuuee'
session4 <- bow(phanthomthread_url4,
                user_agent = "Educational")
session4

for(url in phanthomthread_url4){
  page <- read_html(url)
  
  phanthomthread_names4<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates4<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings4<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews4<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews4<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df4<-data.frame(
    Name=phanthomthread_names4[1:25],
    Date=phanthomthread_dates4[1:25],
    User_Rating=phanthomthread_ratings4[1:25],
    Content_Review=phanthomthread_contentReviews4[1:25],
    Reviews=phanthomthread_reviews4[1:25]
  )
}
phanthomthread_url5<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjvrtrmmbr43qmtd4pna3cp6wtgoq366ss7oazflmzndz4k5epqjcoyl7vktfdwv2nu33yen3a'
session5 <- bow(phanthomthread_url5,
                user_agent = "Educational")
session5

for(url in phanthomthread_url5){
  page <- read_html(url)
  
  phanthomthread_names5<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates5<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings5<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews5<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews5<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df5<-data.frame(
    Name=phanthomthread_names5[1:25],
    Date=phanthomthread_dates5[1:25],
    User_Rating=phanthomthread_ratings5[1:25],
    Content_Review=phanthomthread_contentReviews5[1:25],
    Reviews=phanthomthread_reviews5[1:25]
  )
}
phanthomthread_url6<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjtrdumsab53qkdx7xka3ap4u3hoq366ss7oq3fjmrndb4k4nfwahglutgs7qashqqmk4lo5gi'
session6 <- bow(phanthomthread_url6,
                user_agent = "Educational")
session6

for(url in phanthomthread_url6){
  page <- read_html(url)
  
  phanthomthread_names6<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates6<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings6<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews6<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews6<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df6<-data.frame(
    Name=phanthomthread_names6[1:25],
    Date=phanthomthread_dates6[1:25],
    User_Rating=phanthomthread_ratings6[1:25],
    Content_Review=phanthomthread_contentReviews6[1:25],
    Reviews=phanthomthread_reviews6[1:25]
  )
}
phanthomthread_url7<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmryqlrmscj52mkdd4pkapb7uv35pjt6uck3ou3f5mrkb4dtpvhsngxfge7gellu7f2exsvvi'
session7 <- bow(phanthomthread_url7,
                user_agent = "Educational")
session7

for(url in phanthomthread_url7){
  page <- read_html(url)
  
  phanthomthread_names7<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates7<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings7<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews7<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews7<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df7<-data.frame(
    Name=phanthomthread_names7[1:25],
    Date=phanthomthread_dates7[1:25],
    User_Rating=phanthomthread_ratings7[1:25],
    Content_Review=phanthomthread_contentReviews7[1:25],
    Reviews=phanthomthread_review7[1:25]
  )
}
phanthomthread_url8<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrwqlrmsaj43aktx4peb3dpeutcoq366ss5oqyfxnjpdb4k5p5gerkiyfmxpierahjkb7wvnea'
session8 <- bow(phanthomthread_url8,
                user_agent = "Educational")
session8

for(url in phanthomthread_url8){
  page <- read_html(url)
  
  phanthomthread_names8<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates8<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings8<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews8<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews8<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df8<-data.frame(
    Name=phanthomthread_names8[1:25],
    Date=phanthomthread_dates8[1:25],
    User_Rating=phanthomthread_ratings8[1:25],
    Content_Review=phanthomthread_contentReviews8[1:25],
    Reviews=phanthomthread_reviews8[1:25]
  )
}
phanthomthread_url9<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=data-key="g4w6ddbmqyzdo6ic4oxwjmruqpsmoaby2indz77jb3dpsulfoq366ss6oe3frnbcdv4k4vh4rilnktlx4nqyxqrtxc2y5jy"'
session9 <- bow(phanthomthread_url9,
                user_agent = "Educational")
session9

for(url in phanthomthread_url9){
  page <- read_html(url)
  
  phanthomthread_names9<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates9<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings9<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews9<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews9<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df9<-data.frame(
    Name=phanthomthread_names9[1:25],
    Date=phanthomthread_dates9[1:25],
    User_Rating=phanthomthread_ratings9[1:25],
    Content_Review=phanthomthread_contentReviews9[1:25],
    Reviews=phanthomthread_reviews9[1:25]
    
  )
}
phanthomthread_url10<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrvrdu44az73upd367katbp6wt5pjt6uck3om3fvmbkb4dzdbxuphe3kofhxbq4byufobvvw'
session10 <- bow(phanthomthread_url10,
                user_agent = "Educational")
session10

for(url in phanthomthread_url10){
  page <- read_html(url)
  
  phanthomthread_names10<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates10<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings10<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews10<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews10<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df10<-data.frame(
    Name=phanthomthread_names10[1:25],
    Date=phanthomthread_dates10[1:25],
    User=phanthomthread_ratings10[1:25],
    Content_Review=phanthomthread_contentReviews10[1:25],
    Reviews=phanthomthread_reviews10[1:25]
  )
}
phanthomthread_url11<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrtrdumsab53qkdx7xka3ap4ud5pjt6uck6o4yf7mzpb4dzucrujymlaha7bzj4gyc7ukaas'
session11 <- bow(phanthomthread_url11,
                user_agent = "Educational")
session11

for(url in phanthomthread_url11){
  page <- read_html(url)
  
  phanthomthread_names11<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates11<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings11<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews11<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews11<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df11<-data.frame(
    Name=phanthomthread_names11[1:25],
    Date=phanthomthread_dates11[1:25],
    User=phanthomthread_ratings11[1:25],
    Content_Review=phanthomthread_contentReviews11[1:25],
    Reviews=phanthomthread_reviews11[1:25]
  )
}
phanthomthread_url12<-'https://www.imdb.com/title/tt5776858/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrtrdumsab53qkdx7xka3ap4ud5pjt6uck6o4yf7mzpb4dzucrujymlaha7bzj4gyc7ukaas'
session12 <- bow(phanthomthread_url12,
                user_agent = "Educational")
session12

for(url in phanthomthread_url12){
  page <- read_html(url)
  
  phanthomthread_names12<-page %>% html_nodes(".display-name-link") %>% html_text()
  phanthomthread_dates12<-page %>% html_nodes("span.review-date") %>% html_text()
  phanthomthread_ratings12<-page %>% html_nodes("span.rating-other-user-rating") %>% html_text()
  phanthomthread_contentReviews12<-page%>% html_nodes("a.title")%>%html_text()
  phanthomthread_reviews12<-page%>% html_nodes(".text.show-more__control")%>%html_text()
  
  phanthomthread_df12<-data.frame(
    Name=phanthomthread_names12[1:25],
    Date=phanthomthread_dates12[1:25],
    User_Rating=phanthomthread_ratings12[1:25],
    Reviews=phanthomthread_reviews12[1:25]
  )
}

finalAll_Reviews <- rbind(phanthomthread_url1,phanthomthread_url2,phanthomthread_url3,phanthomthread_url4,phanthomthread_url5,phanthomthread_url6,phanthomthread_url7,phanthomthread_url8,phanthomthread_url9,phanthomthread_url10,phanthomthread_url11,phanthomthread_url12)
