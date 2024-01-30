#have this dataframe from previous lesson part
View(bookings_df)
# sort by lead time(booked in advanced) - most advance first
test_df <- arrange(bookings_df, desc(lead_time))
View(test_df)
head(test_df)

#find min and max and mean
max(bookings_df$lead_time)
min(bookings_df$lead_time)
mean(bookings_df$lead_time)

## OUTPUT
#head(test_df)
## A tibble: 6 × 32
#hotel        is_canceled lead_time arrival_date_year arrival_date_month arrival_date_week_number
#<chr>              <dbl>     <dbl>             <dbl> <chr>                                 <dbl>
#  1 Resort Hotel           0       737              2015 July                                     27
#2 Resort Hotel           0       709              2016 February                                  9
#3 City Hotel             1       629              2017 March                                    13
#4 City Hotel             1       629              2017 March                                    13
#5 City Hotel             1       629              2017 March                                    13
#6 City Hotel             1       629              2017 March                                    13
## ℹ 26 more variables: arrival_date_day_of_month <dbl>, stays_in_weekend_nights <dbl>,
##   stays_in_week_nights <dbl>, adults <dbl>, children <dbl>, babies <dbl>, meal <chr>, country <chr>,
##   market_segment <chr>, distribution_channel <chr>, is_repeated_guest <dbl>,
##   previous_cancellations <dbl>, previous_bookings_not_canceled <dbl>, reserved_room_type <chr>,
##   assigned_room_type <chr>, booking_changes <dbl>, deposit_type <chr>, agent <chr>, company <chr>,
##   days_in_waiting_list <dbl>, customer_type <chr>, adr <dbl>, required_car_parking_spaces <dbl>,
##   total_of_special_requests <dbl>, reservation_status <chr>, reservation_status_date <date>

#max(bookings_df$lead_time)
#[1] 737

#min(bookings_df$lead_time)
#[1] 0

#mean(bookings_df$lead_time)
#[1] 104.0114