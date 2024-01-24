#Tidyverse is already loaded in my environment, so skipping first steps.
bookings_df <- read_csv("hotel_bookings.csv")
print(bookings_df)
head(bookings_df)
str(bookings_df)
colnames(bookings_df)
new_df <- select(bookings_df, `adr`, adults)
print(new_df)
mutate(new_df, total = `adr` / adults)

# output:
#> bookings_df <- read_csv("hotel_bookings.csv")
#Rows: 119390 Columns: 32                                                                                                                      
#── Column specification ───────────────────────────────────────────────────────────────────────────────────
#Delimiter: ","
#chr  (13): hotel, arrival_date_month, meal, country, market_segment, distribution_channel, reserved_roo...
#dbl  (18): is_canceled, lead_time, arrival_date_year, arrival_date_week_number, arrival_date_day_of_mon...
#date  (1): reservation_status_date

#ℹ Use `spec()` to retrieve the full column specification for this data.
#ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> print(bookings_df)
## A tibble: 119,390 × 32
#hotel        is_canceled lead_time arrival_date_year arrival_date_month arrival_date_week_number
#<chr>              <dbl>     <dbl>             <dbl> <chr>                                 <dbl>
#  1 Resort Hotel           0       342              2015 July                                     27
#2 Resort Hotel           0       737              2015 July                                     27
#3 Resort Hotel           0         7              2015 July                                     27
#4 Resort Hotel           0        13              2015 July                                     27
#5 Resort Hotel           0        14              2015 July                                     27
#6 Resort Hotel           0        14              2015 July                                     27
#7 Resort Hotel           0         0              2015 July                                     27
#8 Resort Hotel           0         9              2015 July                                     27
#9 Resort Hotel           1        85              2015 July                                     27
#10 Resort Hotel           1        75              2015 July                                     27
## ℹ 119,380 more rows
## ℹ 26 more variables: arrival_date_day_of_month <dbl>, stays_in_weekend_nights <dbl>,
##   stays_in_week_nights <dbl>, adults <dbl>, children <dbl>, babies <dbl>, meal <chr>, country <chr>,
##   market_segment <chr>, distribution_channel <chr>, is_repeated_guest <dbl>,
##   previous_cancellations <dbl>, previous_bookings_not_canceled <dbl>, reserved_room_type <chr>,
##   assigned_room_type <chr>, booking_changes <dbl>, deposit_type <chr>, agent <chr>, company <chr>,
##   days_in_waiting_list <dbl>, customer_type <chr>, adr <dbl>, required_car_parking_spaces <dbl>, …
## ℹ Use `print(n = ...)` to see more rows
#> str(bookings_df)
#spc_tbl_ [119,390 × 32] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
#$ hotel                         : chr [1:119390] "Resort Hotel" "Resort Hotel" "Resort Hotel" "Resort Hotel" ...
#$ is_canceled                   : num [1:119390] 0 0 0 0 0 0 0 0 1 1 ...
#$ lead_time                     : num [1:119390] 342 737 7 13 14 14 0 9 85 75 ...
#$ arrival_date_year             : num [1:119390] 2015 2015 2015 2015 2015 ...
#$ arrival_date_month            : chr [1:119390] "July" "July" "July" "July" ...
#$ arrival_date_week_number      : num [1:119390] 27 27 27 27 27 27 27 27 27 27 ...
#$ arrival_date_day_of_month     : num [1:119390] 1 1 1 1 1 1 1 1 1 1 ...
#$ stays_in_weekend_nights       : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
#$ stays_in_week_nights          : num [1:119390] 0 0 1 1 2 2 2 2 3 3 ...
#$ adults                        : num [1:119390] 2 2 1 1 2 2 2 2 2 2 ...
#$ children                      : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
#$ babies                        : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
#$ meal                          : chr [1:119390] "BB" "BB" "BB" "BB" ...
#$ country                       : chr [1:119390] "PRT" "PRT" "GBR" "GBR" ...
#$ market_segment                : chr [1:119390] "Direct" "Direct" "Direct" "Corporate" ...
#$ distribution_channel          : chr [1:119390] "Direct" "Direct" "Direct" "Corporate" ...
#$ is_repeated_guest             : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
#$ previous_cancellations        : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
#$ previous_bookings_not_canceled: num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
#$ reserved_room_type            : chr [1:119390] "C" "C" "A" "A" ...
#$ assigned_room_type            : chr [1:119390] "C" "C" "C" "A" ...
#$ booking_changes               : num [1:119390] 3 4 0 0 0 0 0 0 0 0 ...
#$ deposit_type                  : chr [1:119390] "No Deposit" "No Deposit" "No Deposit" "No Deposit" ...
#$ agent                         : chr [1:119390] "NULL" "NULL" "NULL" "304" ...
#$ company                       : chr [1:119390] "NULL" "NULL" "NULL" "NULL" ...
#$ days_in_waiting_list          : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
#$ customer_type                 : chr [1:119390] "Transient" "Transient" "Transient" "Transient" ...
#$ adr                           : num [1:119390] 0 0 75 75 98 ...
#$ required_car_parking_spaces   : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
#$ total_of_special_requests     : num [1:119390] 0 0 0 0 1 1 0 1 1 0 ...
#$ reservation_status            : chr [1:119390] "Check-Out" "Check-Out" "Check-Out" "Check-Out" ...
#$ reservation_status_date       : Date[1:119390], format: "2015-07-01" "2015-07-01" "2015-07-02" ...
#- attr(*, "spec")=
#  .. cols(
#    ..   hotel = col_character(),
#    ..   is_canceled = col_double(),
#    ..   lead_time = col_double(),
#    ..   arrival_date_year = col_double(),
#    ..   arrival_date_month = col_character(),
#    ..   arrival_date_week_number = col_double(),
#    ..   arrival_date_day_of_month = col_double(),
#    ..   stays_in_weekend_nights = col_double(),
#    ..   stays_in_week_nights = col_double(),
#    ..   adults = col_double(),
#    ..   children = col_double(),
#    ..   babies = col_double(),
#    ..   meal = col_character(),
#    ..   country = col_character(),
#    ..   market_segment = col_character(),
#    ..   distribution_channel = col_character(),
#    ..   is_repeated_guest = col_double(),
#    ..   previous_cancellations = col_double(),
#    ..   previous_bookings_not_canceled = col_double(),
#    ..   reserved_room_type = col_character(),
#    ..   assigned_room_type = col_character(),
#    ..   booking_changes = col_double(),
#    ..   deposit_type = col_character(),
#    ..   agent = col_character(),
#    ..   company = col_character(),
#    ..   days_in_waiting_list = col_double(),
#    ..   customer_type = col_character(),
#    ..   adr = col_double(),
#    ..   required_car_parking_spaces = col_double(),
#    ..   total_of_special_requests = col_double(),
#    ..   reservation_status = col_character(),
#    ..   reservation_status_date = col_date(format = "")
#    .. )
#- attr(*, "problems")=<externalptr> 
#> colnames(bookings_df)
#[1] "hotel"                          "is_canceled"                    "lead_time"                     
#[4] "arrival_date_year"              "arrival_date_month"             "arrival_date_week_number"      
#[7] "arrival_date_day_of_month"      "stays_in_weekend_nights"        "stays_in_week_nights"          
#[10] "adults"                         "children"                       "babies"                        
#[13] "meal"                           "country"                        "market_segment"                
#[16] "distribution_channel"           "is_repeated_guest"              "previous_cancellations"        
#[19] "previous_bookings_not_canceled" "reserved_room_type"             "assigned_room_type"            
#[22] "booking_changes"                "deposit_type"                   "agent"                         
#[25] "company"                        "days_in_waiting_list"           "customer_type"                 
#[28] "adr"                            "required_car_parking_spaces"    "total_of_special_requests"     
#[31] "reservation_status"             "reservation_status_date"     
#> new_df <- select(bookings_df, `adr`, adults)
#> print(new_df)
# A tibble: 119,390 × 2
#adr adults
#<dbl>  <dbl>
#  1    0       2
#2    0       2
#3   75       1
#4   75       1
#5   98       2
#6   98       2
#7  107       2
#8  103       2
#9   82       2
#10  106.      2
## ℹ 119,380 more rows
## ℹ Use `print(n = ...)` to see more rows
#> mutate(new_df, total = `adr` / adults)
## A tibble: 119,390 × 3
#adr adults total
#<dbl>  <dbl> <dbl>
#  1    0       2   0  
#2    0       2   0  
#3   75       1  75  
#4   75       1  75  
#5   98       2  49  
#6   98       2  49  
#7  107       2  53.5
#8  103       2  51.5
#9   82       2  41  
#10  106.      2  52.8
## ℹ 119,380 more rows
## ℹ Use `print(n = ...)` to see more rows