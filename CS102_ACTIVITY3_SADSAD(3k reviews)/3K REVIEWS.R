library(rvest) 
library(dplyr) 
library(writexl) 
library(polite) 


#1. Phantom Thread

session <- bow(url = 'https://www.imdb.com/title/tt5776858/reviews?ref_=tt_urv', 
               user_agent = "Student's Demo Educational") 

session

session_scrape <- scrape(session) 

scrape_reviews <- function(page_url) { 
  
  reviews_page <- read_html(page_url) 
  names <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  phantom_thread_df = data.frame( Movie_name = c('Phantom Thread'),
                                  User_Name = names[1:25], 
                                  Date = dates[1:25], 
                                  User_Rating = ratings[1:25], 
                                  Content_Review = content_reviews[1:25],
                                  Reviews = reviews[1:25] 
  )} 

phantom_thread_urls <- c( 'https://www.imdb.com/title/tt5776858/reviews?ref_=tt_urv',
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


########################################################################################################################################################################################################################################################################################
#2. Alien (1979)




session2<- bow(url = 'https://www.imdb.com/title/tt0078748/reviews/?ref_=tt_ov_rt', 
               user_agent = "Student's Demo Educational") 

session2

session_scrape2 <- scrape(session2) 

scrape_reviews2 <- function(page_url) { 
  
  reviews_page <- read_html(page_url)
  names2 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates2 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings2 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews2 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews2 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  AlienMOVIE_df = data.frame(  Movie_name = c('Alien (1979)'),
                               User_Name = names2[1:25], 
                               Date = dates2[1:25], 
                               User_Rating = ratings2[1:25], 
                               Content_Review = content_reviews2[1:25],
                               Reviews = reviews2[1:25] 
  )} 

Alien_MOVIE_urls <- c( 'https://www.imdb.com/title/tt0078748/reviews/?ref_=tt_ov_rt',
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnzzr7rm6brz2iot77hmb3b7evl5pjt6udk2oy2f7mblb4d7ruziime5bpdky52xugphykozq', 
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnztqlr42bj32ind577napcpgul5pjt6uckyouyvrmbob4ds543m2wkbrqfavojdaj2nntxgq',
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbzrpu42bz42mot36xja3d7sv35pjt6udcyoa3fzmbob4dz57jzun7q4yjdebtmj7xb6mdvi', 
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbur7rmuar23qpdr6ppahd7eu35pjt6udc3ouyvtmzkb4d6lt25kse6dnwhbzvppgylfijjw', 
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbsrlq4wbj63ept56hkahbpywt5pjt6uds5pa3v5pzob4d2tlopzb54o6lefedzgggr2dh3m',
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbrr7rmwar73yotb77jape7uv35pjt6udcyoizvzmbmb4drnj3l4zb4gdowc3cvqqkbjnlqw', 
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjzqlu4ubb53entt6pfa7dpsvd5pjt6ubk7omyf3prpb4dxwsjlc2xobmkdndtlasxhe7s3m',
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjwrdrm2bby3imtz7xfalcp2uthoq366ss2pe4fvmbmcv4k5avjeun2jbjqog4tswffgktfscq',
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjur3tmmajy3upd36xob7e7evteoq366sstoyyvjnbncv4k43uvqzsaccriqek27cv6zw2nnea',
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjsrxq4ubb53ykdr4headb72vt5pjt6uck5payvtprjb4dvyiyx6iqsketvabj6oaivusiew',
                       'https://www.imdb.com/title/tt0078748/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjtr3r42ar53qkdr7pjapc7gv3coq366ss4pa3frnbddn4k46lkqqu6asxjvgcvt2xatz3wupa'
) 

all_reviews2 <- lapply(Alien_MOVIE_urls, scrape_reviews2) 

final_all_reviews2 <- do.call(rbind, all_reviews2) 

View(final_all_reviews2) 


########################################################################################################################################################################################################################################################################################
#3. Salt Burn


session3<- bow(url = 'https://www.imdb.com/title/tt17351924/reviews?ref_=tt_urv', 
               user_agent = "Student's Demo Educational") 

session3

session_scrape3 <- scrape(session3) 

scrape_reviews3 <- function(page_url) { 
  
  reviews_page <- read_html(page_url)
  names3 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates3 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings3 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews3 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews3 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  Saltburn_MOVIE_df = data.frame( Movie_name = c('Salt Burn'),
                                  User_Name = names3[1:25],
                                  Date = dates3[1:25], 
                                  User_Rating = ratings3[1:25], 
                                  Content_Review = content_reviews3[1:25],
                                  Reviews = reviews3[1:25] 
  )} 

Saltburn_MOVIE_urls <- c( 'https://www.imdb.com/title/tt17351924/reviews?ref_=tt_urv',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnrvrxq4oab62motb77faxcpuul5pjt6ubc7ouzfjnrcb4d23i275p2px3kvhogku35tid4c4',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnztrdr4uajz3mpdx77la7dpww35pjt6ubc6pe4vvprlb4dztfta4ew64mpjq5d4zkld4tvao',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbwrlq46ajt3mpdr7hja7c7yul5pjt6ubc6oq2v7prnb4dzgei3zia4ibcxsk3ycjgo5fvco',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbqrhqmqcb434nd37hia7b76w35pjt6ubc6oeyvtnjob4dtxb2zl77wgkbj2twtwx2dkoeow',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjyqps4yab33upd377fa3cp2v3hoq366sssou2vtpzmcr4k52m4krzo4hmop55lb2cyr6qez6y',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjzqlumybr52mmd36xpale7sutfoq366sssoq2v5mjncv4k425zel3hpn2ny2eadmyfgwmw55y',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjwrlum2bjy3aptb7xpatc72ul5pjt6ubc6om3fxmjcb4dv3t7z3svojobkx6uhnp2dmajlq',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjvrds4wazt2iodr4platd7wud5pjt6ubc6ou2f3nrlb4dywe5aag3a3vlqczb5ppkmb7cng',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjqqps46az63iotz6hjahdpeul5pjt6ubc6oi3fvnblb4dzuxef22zunrtef6ljhyqbd3tyk',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmryqpqmmajy3andt7hlapep4udgoq366sssouyfxmrnd54k4x5mkj7xdxka5qrc2odjv6sfhni',
                          'https://www.imdb.com/title/tt17351924/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrzrhq42bbs3mpt36hfb3a7ev35pjt6ubc6oq2flnblb4d4kr34jmkf2c23spfcrkgzbgly4'
) 

all_reviews3 <- lapply(Saltburn_MOVIE_urls, scrape_reviews3) 

final_all_reviews3 <- do.call(rbind, all_reviews3) 

View(final_all_reviews3) 


########################################################################################################################################################################################################################################################################################
#4.Puss in Boots: The Last Wish

session4<- bow(url = 'https://www.imdb.com/title/tt3915174/reviews?ref_=tt_urv', 
               user_agent = "Student's Demo Educational") 

session4

session_scrape4 <- scrape(session4) 

scrape_reviews4 <- function(page_url) { 
  
  reviews_page <- read_html(page_url)
  names4 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates4 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings4 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews4 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews4 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  Puss_in_Boots_MOVIE_df = data.frame( Movie_name = c('Puss in Boots: The Last Wish'),
                                       User_Name = names4[1:25],
                                       Date = dates4[1:25], 
                                       User_Rating = ratings4[1:25], 
                                       Content_Review = content_reviews4[1:25],
                                       Reviews = reviews4[1:25] 
  )} 

Puss_in_Boots_MOVIE_urls <- c('https://www.imdb.com/title/tt3915174/reviews?ref_=tt_urv',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnzvqltmyars3ikd57xjb7c7yv35pjt6ubktou4vvnjdb4dqjgyyo7ci5i5gce2ur66cibz36',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbqr3rmscj53yndv6hiapdp2wt5pjt6ubksom2fvprcb4d6rdxh3ndafvnhsotfpxb456ijq',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjsr3t46ar73akdb6ppa3dpsv35pjt6ubkspayfjmbmb4d7lh2m6yp7xlgo32h6ve56tp7e6',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrzr3umuar33yodb7pmb3bpgud5pjt6ubksoe4flmbnb4dsbofscyhfgewd5fyx3hajzwizm',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrvrxt44cby2imtr7pfaxcpuvd5pjt6ubk4pe2v7njpb4d4j2f7khfgpb7s4cgobbcgaeh32',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrtqlu4wbry2ikdb67jahe76ud5pjt6ubktoyzvtnbjb4d6nuwtg22yxgeg3ad5o3jdkhqbe',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrqrps4qbz32imdz4hlb7cpgu35pjt6ubczom2vrmzdb4dsv7h5tai24wqjhu6c3o254ux2a',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrrrlum4ab33aodd6hfb3bpyudeoq366ssto43vznjcdr4k4axsgle44esrgjvnvcywpucik2y',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzzqpsmybzz3upd767mb7ep4vtfoq366ssto44f5nrpdf4k4554up46pyet4ck3ge3n5nr466y',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzwqpq42aj73amd54hoaha7evl5pjt6ubc3oq2vvnrjb4dxf3udoz6camgz2jq55ru7fs5xw',
                              'https://www.imdb.com/title/tt3915174/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzxrxr4mcb63amdb6xiapd72vd5pjt6ubktouzfvmrkb4dslvlvsd5cdrnskibgdjdzq5nqy'
) 

all_reviews4 <- lapply(Puss_in_Boots_MOVIE_urls, scrape_reviews4) 

final_all_reviews4 <- do.call(rbind, all_reviews4) 

View(final_all_reviews4) 


########################################################################################################################################################################################################################################################################################
#5.Howl's Moving Castle 


session5<- bow(url = 'https://www.imdb.com/title/tt0347149/reviews/?ref_=tt_ov_rt', 
               user_agent = "Student's Demo Educational") 

session5

session_scrape5 <- scrape(session5) 

scrape_reviews5 <- function(page_url) { 
  
  reviews_page <- read_html(page_url)
  names5 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates5 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings5 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews5 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews5 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text()  
  
  Howls_Moving_Castle_MOVIE_df = data.frame( Movie_name = c('Howls Moving Castle'),
                                             User_Name = names5[1:25],
                                             Date = dates5[1:25], 
                                             User_Rating = ratings5[1:25], 
                                             Content_Review = content_reviews5[1:25],
                                             Reviews = reviews5[1:25] 
  )} 

Howls_Moving_Castle_MOVIE_urls <- c( 'https://www.imdb.com/title/tt0347149/reviews/?ref_=tt_ov_rt',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnzrrlqmobbz2imtr6xfb3b76v35pjt6udc2oa3flprdb4dzcilfnpsn2xpqn2vvbs2vtztkm',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjyrtt4obbz3akdr6xlahepev3eoq366ss3peyf3mbndz4k5afbalher4c3gdmxu4xn3th67xi',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjvrtt46ab43umtd7hoape7wwt5pjt6udcyoa3f5mzdb4duwm32k2wtiob6bl7o2x7hvc3gm',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjqqlt4mbz23aktr4hpa7a7wud5pjt6uck3oe2vrnzcb4dz4yuf6p4w34vk4uov434msuuek',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmryrdr4qcjs2imtt4hpahcp4vtgoq366ss2oeyvznzodz4k4yccrn7texe2pq273n56dmbtrna',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrxrdrm6cjz34otv6pib7apuudcoq366ss2oeyv3njodv4k5a6fxkfrpsfdpltwf2kt7sfyvri',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrvrlr4obj23qktv4hia7a7yul5pjt6ubk6oe3v5mjkb4dyy2ovvqqfdhijctsbjsejhl36a',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrqrtt4mbby2ipd56hkapdpgvlhoq366sszoizfrmzidn4k4iweaw2hcpethpfuhvkkgkz2e4q',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzyrlsmwazz3uotv6hkalbpqvl5pjt6ud22oayvlmblb4dya36qfcxe2zxxpenkjaqwenuys',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzwrtqmsaz63qotv7hpb7a76ul5pjt6uds4ouzv3nzpb4dvtwderzu33g7kwe727qqz77a5g',
                                     'https://www.imdb.com/title/tt0347149/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzxrhum6cb32imt377late7yw35pjt6ubczomzfjnbnb4dzvkldg2qgberswwfomm2j52xmo'
) 

all_reviews5 <- lapply(Howls_Moving_Castle_MOVIE_urls, scrape_reviews5) 

final_all_reviews5 <- do.call(rbind, all_reviews5) 

View(final_all_reviews5) 


########################################################################################################################################################################################################################################################################################
#6.Black Widow


session6<- bow(url = 'https://www.imdb.com/title/tt3480822/reviews/?ref_=tt_ov_rt', 
               user_agent = "Student's Demo Educational") 

session6

session_scrape6 <- scrape(session6) 

scrape_reviews6 <- function(page_url) { 
  
  reviews_page <- read_html(page_url)
  names6 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates6 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings6 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews6 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews6 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  Black_Widow_MOVIE_df = data.frame( Movie_name = c('Black Widow'),
                                     User_Name = names6[1:25],
                                     Date = dates6[1:25], 
                                     User_Rating = ratings6[1:25], 
                                     Content_Review = content_reviews6[1:25],
                                     Reviews = reviews6[1:25] 
  )} 

Black_Widow_MOVIE_urls <- c( 'https://www.imdb.com/title/tt3480822/reviews/?ref_=tt_ov_rt',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnzwrdqmsaz73ekd777jahcpsud5pjt6ucs2oiyftpznb4d4uc6xeszqwgzkoiefbd5llnh46',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnztr3q4yabz3aot76xoata7yvt5pjt6ucs2oqzvjmrob4dz67yo36fmnuuzrpg5hacrvekwq',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbyrhqmsbz63mpdv4ppadcpgvt5pjt6ucs5oazvtnjdb4drefuhexaayayphvp2nqaia7nv4',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbxr3tmyab43ant377kb3e74ul5pjt6ucszpa3ftpzjb4d2uh7yfdnumeqtydvnockcxnpac',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbvrtr44bz63uot56xnatdpgvd5pjt6ucszoa3f3mbob4d35qtczcu74soxjybenavvgubhq',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbsr7umybby34kdd6hna3c7qul5pjt6ubk3oa2fxmjlb4dz3flr2pwzbma4tmye7h5hxwlgk',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbtrprmoaj32motd6xkb7cpwtttfjrkuckzom2v5pzyobtgrs5p2qwje5jx5i3nvnqnh3yq',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbrrtr44bz42mpt74hia7c72u35pjt6ucs2pa3f3njib4d3jah2hhtvilyh434fr6niykhum',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjyrxq4obz22mptz6hpb3cpewt5pjt6ucs2oayv3mrob4d4zmwdlo26pem2oyi5st766yfis',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjyrlrmobz63aot77xnb7e7yulhoq366ss4oezvtpzicv4k43yzbux4lf5vzhtqrhc6s2zikjq',
                             'https://www.imdb.com/title/tt3480822/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjzrdqmocj43mpt74plata7wvlcoq366ss4oeyvznzddj4k5kzyy4g6xi4alv6ru7ev2d6okdi'
) 

all_reviews6 <- lapply(Black_Widow_MOVIE_urls, scrape_reviews6) 

final_all_reviews6 <- do.call(rbind, all_reviews6) 

View(final_all_reviews6) 

########################################################################################################################################################################################################################################################################################
#7. First Blood

session7<- bow(url = 'https://www.imdb.com/title/tt0083944/reviews/?ref_=tt_ov_rt', 
               user_agent = "Student's Demo Educational") 

session7

session_scrape7 <- scrape(session7) 

scrape_reviews7 <- function(page_url) { 
  
  reviews_page <- read_html(page_url)
  names7 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates7 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings7 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews7 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews7 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  First_Blood_MOVIE_df = data.frame( Movie_name = c('First Blood'),
                                     User_Name = names7[1:25],
                                     Date = dates7[1:25], 
                                     User_Rating = ratings7[1:25], 
                                     Content_Review = content_reviews7[1:25],
                                     Reviews = reviews7[1:25] 
  )} 

First_Blood_MOVIE_urls <- c( 'https://www.imdb.com/title/tt0083944/reviews/?ref_=tt_ov_rt',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnzsrprmmaz23umt76ppaxc7uv35pjt6uds6oyyflpzjb4dwoe7wg4lvocpbdbfaomfgx6a6y',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbtrtum6abs3qptt77napbpwvd5pjt6ucsype3vrnzdb4dryxkrn5zozlsb3gejanznn5hkk',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjxrdqmmab22mndx7xmaxb72vdeoq366ss6oezf3mzldz4k47fik6xcd4lgqiz37hoxjexm5hy',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjtqlq42bjy3eodr7hfadb7gwteoq366ss3oe4f5mbodv4k45dunhbdyihaoon5a7krth4wq6y',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmryrtumocbz3qpd36xoalcpqv35pjt6udk2pezfvnzob4d7ic6ofhb6namkqiil5erikapjo',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmruqlt4mcj63eotr4pnate7uwt5pjt6ubk2oa4v3mbmb4duru4tkisrerpytltwzeuhgbvp6',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrsr7q4uaj73uod77hla3apuw35pjt6ud2ypezf3mzlb4dsr3xybsdeqqyiolxylshzzjbhy',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrrr3qmwbr43amdz77nb7e7qwtfoq366ss5pe4fzmjicv4k4cig7vs42vh2u25obqxbdwls7sy',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzzr7s4qbr33iodv6hfaxdpeulfoq366ss7omzftmjcdn4k4xgy5ul467qibal74wrszbzpoma',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzxr7r4obrs34od57plapc7gw35pjt6ud27ou2frmzcb4d47mri4enuoxa4un233afac66ny',
                             'https://www.imdb.com/title/tt0083944/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmzvqpsmmbj63andt4hoapdp4udcoq366sssomzvxmbddj4k5gck232qiluruhqom7d3bkpoa6a'
) 

all_reviews7 <- lapply(First_Blood_MOVIE_urls, scrape_reviews7) 

final_all_reviews7 <- do.call(rbind, all_reviews7) 

View(final_all_reviews7) 


########################################################################################################################################################################################################################################################################################
#8. The Meg

session8<- bow(url = 'https://www.imdb.com/title/tt4779682/reviews/?ref_=tt_ov_rt', 
               user_agent = "Student's Demo Educational") 

session8

session_scrape8 <- scrape(session8) 

scrape_reviews8 <- function(page_url) { 
  
  reviews_page <- read_html(page_url)
  names8 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates8 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings8 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews8 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews8 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  The_Meg_MOVIE_df = data.frame( Movie_name = c('The Meg'),
                                 User_Name = names8[1:25],
                                 Date = dates8[1:25], 
                                 User_Rating = ratings8[1:25], 
                                 Content_Review = content_reviews8[1:25],
                                 Reviews = reviews8[1:25] 
  )} 

The_Meg_MOVIE_urls <- c( 'https://www.imdb.com/title/tt4779682/reviews?ref_=tt_urv',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnzurtumwar42mpdx77eate7sul5pjt6uckzo43fzmbkb4dxvaffk4igv5k64rhh7kqjtj7ac',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbxrlqmycbt3uotb6hla3cpqvt5pjt6uckzpa4fxmzlb4d5fd57ksqqaczntizg2w2fn5qg2',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbrr7s4sbrz3aptt7pfa7cpqw35pjt6uckzo43vvnrib4d72g224tswfi5pizl5ucrugal74',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjwrxumqaj73and56xmapc74vl5pjt6uckyoi2fjmzjb4dvkm7ed6caww6idfdmy2qluyu7u',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjxr3umobzy3iod577pb3c7wulcoq366ss7oi4v3mbjdj4k56rs42o7cs7g5laj2xebr3kuy3y',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjurxr46az52mnt377lahapev3eoq366ss7oi4v3mzcd54k4lreoo6ugxkclb6shorfpl3x6ba',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmrwqlrmsaj43aktx4peb3dpeutcoq366ss5oqyfxnjpdb4k5p5gerkiyfmxpierahjkb7wvnea',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjvr7smuaj73iktb7hkatcpetttfjrksd24oy3vjmryobyawq4qoqfk3t6crhrwxw2nibeq',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjqqpt46cb63ypdr67maxdpyvlcoq366ss4o42vxmrkcr4k4f64zvd4gw6xokshrho2pugff2a',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjrrtq44ab73iot367papb7evl5pjt6uckzpayvxnjob4dqjt44dvczck7k4f6l2y64esdsi',
                         'https://www.imdb.com/title/tt4779682/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmryrhsm6ar43qmdb6hkb7c7yu3eoq366ss5oayfzpzkdz4k4efwyzqrwf42u2hhlaueaj7m37y'
) 

all_reviews8 <- lapply(The_Meg_MOVIE_urls, scrape_reviews8) 

final_all_reviews8 <- do.call(rbind, all_reviews8) 

View(final_all_reviews8) 


########################################################################################################################################################################################################################################################################################
#9. Avengers: Infinity War 

session9<- bow(url = 'https://www.imdb.com/title/tt4154756/reviews/?ref_=tt_ov_rt', 
               user_agent = "Student's Demo Educational") 

session9

session_scrape9 <- scrape(session9) 

scrape_reviews9 <- function(page_url) { 
  
  reviews_page <- read_html(page_url)
  names9 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates9 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings9 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews9 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews9 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  Infinity_War_MOVIE_df = data.frame( Movie_name = c('Avengers: Infinity War'),
                                      User_Name = names9[1:25],
                                      Date = dates9[1:25], 
                                      User_Rating = ratings9[1:25], 
                                      Content_Review = content_reviews9[1:25],
                                      Reviews = reviews9[1:25] 
  )} 

Infinity_War_MOVIE_urls <- c( 'https://www.imdb.com/title/tt4154756/reviews/?ref_=tt_ov_rt',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnzqrts4oajt34kdb7pja3c7sul5pjt6uck2oqyfjnbjb4dqkgnahbpmez37m7wxtokaksmjg',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbwrhq4mbz32mmdb77fape7uvd5pjt6uc24ou4fvmrnb4d53au3srbq4v6fsmboaczdpfne4',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbur3t46bbt3ekt57xjahd7evd5pjt6uck2ou2vlnjkb4dyk7ohtjuglk75727ratvgeeyvg',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbvr3u4mazy3amt57headepgvd5pjt6ucsyoeyflnbdb4dx4dn4cgbejxsc4nzzu4rsk5ahg',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbsrtqmsaz53uodb6pjapep2u35pjt6uck2ouyf3nbcb4dxifyd5xt3uwmnzmeci6pnu356e',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbtr7smyab534mdb6ppa3dpgud5pjt6ucs6oq2v5mzlb4d7nxhr7vkc7towxqj3b54e2rd5i',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbqrdtmwbb52mnt37xkatdpuvd5pjt6ucs6oi4vxpzob4d3fpnr7zosporwzsmzq2riutzhy',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbrr3t4maz72imd77xjahcpytttfjrkud2soa2f7pzyobcijfwsgozovygvsi5jq5bguikq',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjyrtr42brz2mnt74hfapapqtttfjrksdc6oiyfzmjyocrpqkfmi22ktqt4uaqfgcu5n34a',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjzrdt44cb23epdd4pnb3d7ww35pjt6uckzoyyvvmbnb4dzwnmde5feyljyw7wgyl7ysb3pi',
                              'https://www.imdb.com/title/tt4154756/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjwrpr4war53ypdv67lb3c7sudfoq366ss6pa2vlnbmcv4k53d57yrdwzlpaudm7h3hchvwbky'
) 

all_reviews9 <- lapply(Infinity_War_MOVIE_urls, scrape_reviews9 ) 

final_all_reviews9  <- do.call(rbind, all_reviews9 ) 

View(final_all_reviews9) 




########################################################################################################################################################################################################################################################################################
#10. WALL-E 

session10<- bow(url = 'https://www.imdb.com/title/tt0910970/reviews/?ref_=ttcrv_ql_2', 
                user_agent = "Student's Demo Educational") 

session10

session_scrape10 <- scrape(session10) 

scrape_reviews10 <- function(page_url) { 
  
  reviews_page <- read_html(page_url) 
  names10 <- reviews_page %>%
    html_nodes(".display-name-link") %>%
    html_text() 
  
  dates10 <- reviews_page %>%
    html_nodes("span.review-date")%>% 
    html_text() 
  
  ratings10 <- reviews_page %>%
    html_nodes("span.rating-other-user-rating") %>% 
    html_text() 
  
  content_reviews10 <- reviews_page %>%
    html_nodes("a.title") %>% 
    html_text() 
  
  reviews10 <- reviews_page %>% 
    html_nodes(".text.show-more__control") %>%
    html_text() 
  
  WALL_E_MOVIE_df = data.frame( Movie_name = c('WALL-E'),
                                User_Name = names10[1:25],
                                Date = dates10[1:25], 
                                User_Rating = ratings10[1:25], 
                                Content_Review = content_reviews10[1:25],
                                Reviews = reviews10[1:25] 
  )} 

WALL_E_MOVIE_urls <- c( 'https://www.imdb.com/title/tt0910970/reviews/?ref_=ttcrv_ql_2',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnzqr7tmuazy3andb4plb3bpstttfjrkybctoy2fjpzyodk4xmm4rizbayl4ljql3ip362ua',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbvqpq42bjy3imdv77nadbpqud5pjt6udcsoa2f3nzkb4d3agnmrzgnkd7epfngkluipam52',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbqrdt46azs2mkd34pkatc7sul5pjt6udcsoi3fxnbib4d4wlpcdpw7yy7dnkblnepg4hi72',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjwrhs4ubb73ipdb4plald7qvl5pjt6uds2ou3v5prib4d3mccvfif7nznhwl7kowkbbc2aq',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjurdtmoajz3ypdd67pb7dpsw35pjt6uck2oy3fvmrnb4d6kioi5fgyfuxkdfukhs3bo3tum',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnbtr7smyab534mdb6ppa3dpgud5pjt6ucs6oq2v5mzlb4d7nxhr7vkc7towxqj3b54e2rd5i',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjvrps4ucb33qnt54hnb3d7ww35pjt6ud22pa2f3mzob4dupoh7v3kkdzxwudzanitlqwiig',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjtqpsmqabs3mndv77la3e7uw3hoq366sszoqzvtprncv4k5fqgzwnfgyl7jdn6zdaikehemfi',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjqrtu4maz73amdz4pnb3cpyu3hoq366sszouzfjnzddv4k4mjidruupzrxnbwv6ymkdibw7za',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjnjrr7tmqbb33ykdv77eadc7gwt5pjt6udcsoa2fvprdb4dtlf3opdlj7bjb33yxukhs4g3ua',
                        'https://www.imdb.com/title/tt0910970/reviews/_ajax?&paginationKey=g4w6ddbmqyzdo6ic4oxwjmryrpsmqcb42modv4pob3b7gtttfjrkscc7om2fzpzyoatobtql3qrfbxl4hilu3c53t7ba'
) 

all_reviews10 <- lapply(WALL_E_MOVIE_urls, scrape_reviews10 ) 

final_all_reviews10  <- do.call(rbind, all_reviews10) 

View(final_all_reviews10) 

 

all_reviews <- rbind(final_all_reviews,
                     final_all_reviews2,
                     final_all_reviews3,
                     final_all_reviews4,
                     final_all_reviews5,
                     final_all_reviews6,
                     final_all_reviews7,
                     final_all_reviews8,
                     final_all_reviews9,
                     final_all_reviews10)

View(all_reviews)



write_xlsx(all_reviews, "scrape3000reviews.xlsx")