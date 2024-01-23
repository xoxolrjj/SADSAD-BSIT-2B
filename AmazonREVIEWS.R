library(rvest)
library(polite)
library(rvest)
library("writexl")


 
url <- "https://www.amazon.com/s?i=specialty-aps&bbn=16225007011&rh=n%3A16225007011%2Cn%3A172584&ref=nav_em__nav_desktop_sa_intl_scanners_0_2_6_12"

session <- bow(url,
               user_agent = "Student's Demo Educational")
session

session_scrape <- scrape(session)

div_elements <- html_nodes(session_scrape,'div.sg-col-4-of-24.sg-col-4-of-12.s-result-item.s-asin.sg-col-4-of-16.sg-col.s-widget-spacing-small.sg-col-4-of-20')
Categories <- character()
brandy_descriptions <- character()
price <- character()
num_of_rev <- character()
rev_stars <- character()

for(div_element in div_elements) {
  
  brandydescr_elements <- html_node(div_element, 'span.a-size-base-plus.a-color-base.a-text-normal')
  brandydescr <- ifelse(!is.na(brandydescr_elements), html_text(brandydescr_elements), '')
  
  price_element <- html_node(div_element, 'span.a-price-whole')
  prices <- ifelse(!is.na(price_element), html_text(price_element), '')
  
  
  numberRev_element <-  html_node(div_element, 'div.s-csa-instrumentation-wrapper.alf-search-csa-instrumentation-wrapper')
  numberReviews<- ifelse(!is.na(numberRev_element), html_text(numberRev_element), '')
   
 
  revstars_element <-  html_node(div_element, 'span.a-icon-alt')
  revSTARS<- ifelse(!is.na(revstars_element), html_text(revstars_element), '')
  
    brandy_descriptions <- c(brandy_descriptions, brandydescr)
   price <- c(price, prices)
   num_of_rev <- c(num_of_rev, numberReviews)
   rev_stars <- c(rev_stars, revSTARS)
   
}
Scanner_df <- data.frame(  
                    Categories= c('Scanner') , 
                         Brand = brandy_descriptions,
                         Price = price, 
                         NumberOfReviews = num_of_rev, 
                         ReviewStars = rev_stars)
Scanner_df


url <- "https://www.amazon.com/s?i=specialty-aps&bbn=16225007011&rh=n%3A16225007011%2Cn%3A172635&ref=nav_em__nav_desktop_sa_intl_printers_0_2_6_11"

session <- bow(url,
               user_agent = "Student's Demo Educational")
session

session_scrape <- scrape(session)

div_elements <- html_nodes(session_scrape,'div.sg-col-4-of-24.sg-col-4-of-12.s-result-item.s-asin.sg-col-4-of-16.sg-col.s-widget-spacing-small.sg-col-4-of-20')
Categories <- character()
brandy_descriptions <- character()
price <- character()
num_of_rev <- character()
rev_stars <- character()

for(div_element in div_elements) {
  
  brandydescr_elements <- html_node(div_element, 'span.a-size-base-plus.a-color-base.a-text-normal')
  brandydescr <- ifelse(!is.na(brandydescr_elements), html_text(brandydescr_elements), '')
  
  price_element <- html_node(div_element, 'span.a-price-whole')
  prices <- ifelse(!is.na(price_element), html_text(price_element), '')
  
  
  numberRev_element <-  html_node(div_element, 'div.s-csa-instrumentation-wrapper.alf-search-csa-instrumentation-wrapper')
  numberReviews<- ifelse(!is.na(numberRev_element), html_text(numberRev_element), '')
  
  
  revstars_element <-  html_node(div_element, 'span.a-icon-alt')
  revSTARS<- ifelse(!is.na(revstars_element), html_text(revstars_element), '')
  
   brandy_descriptions <- c(brandy_descriptions, brandydescr)
  price <- c(price, prices)
  num_of_rev <- c(num_of_rev, numberReviews)
  rev_stars <- c(rev_stars, revSTARS)
  
}
printer_df <- data.frame(  
  Categories= c('Printer') , 
  Brand = brandy_descriptions,
  Price = price, 
  NumberOfReviews = num_of_rev, 
  ReviewStars = rev_stars)
printer_df


final_df<-rbind(Scanner_df,printer_df)
final_df

 
write_xlsx(final_df,"C:/Users/missy/OneDrive/Documents/githubcodes/SADSAD-BSIT-2B/AmazonScrape.xlsx")

