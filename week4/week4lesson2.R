#load hotel bookings dataset
bookings <- read.csv("hotel_bookings.csv")
head(bookings)

# check if people with children book in advance more often
ggplot(data=bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

# look for some info
str(bookings)
max(bookings$stays_in_weekend_nights)
# notice without dropping na max is "NA"
test <- drop_na(bookings)
max(test$children)
unique(test$stays_in_weekend_nights)
unique(bookings$children)

test <- bookings %>%
  select(arrival_date_day_of_month, arrival_date_month, arrival_date_year, 
         stays_in_weekend_nights, stays_in_week_nights, children) %>%
  drop_na()

test2 <- bookings[bookings$stays_in_weekend_nights > 10,]
View(test2)
test2 <- bookings[bookings$children > 5,]
View(test2)



# check if people without children are more frequent weekend stayers
experiment <- bookings %>%
  select (children, stays_in_weekend_nights) %>%
  group_by(children) %>%
  summarize(weekend_nights = max(stays_in_weekend_nights))
View(experiment)

ggplot(data=experiment) +
  geom_bar(mapping = aes(x=children, y=weekend_nights), stat="identity")
           
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = , y = ))

ggplot(data = bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))

##OUTPUT
#head(bookings)
#hotel is_canceled lead_time arrival_date_year arrival_date_month arrival_date_week_number
#1 Resort Hotel           0       342              2015               July                       27
#2 Resort Hotel           0       737              2015               July                       27
#3 Resort Hotel           0         7              2015               July                       27
#4 Resort Hotel           0        13              2015               July                       27
#5 Resort Hotel           0        14              2015               July                       27
#6 Resort Hotel           0        14              2015               July                       27
#arrival_date_day_of_month stays_in_weekend_nights stays_in_week_nights adults children babies meal
#1                         1                       0                    0      2        0      0   BB
#2                         1                       0                    0      2        0      0   BB
#3                         1                       0                    1      1        0      0   BB
#4                         1                       0                    1      1        0      0   BB
#5                         1                       0                    2      2        0      0   BB
#6                         1                       0                    2      2        0      0   BB
#country market_segment distribution_channel is_repeated_guest previous_cancellations
#1     PRT         Direct               Direct                 0                      0
#2     PRT         Direct               Direct                 0                      0
#3     GBR         Direct               Direct                 0                      0
#4     GBR      Corporate            Corporate                 0                      0
#5     GBR      Online TA                TA/TO                 0                      0
#6     GBR      Online TA                TA/TO                 0                      0
#previous_bookings_not_canceled reserved_room_type assigned_room_type booking_changes deposit_type
#1                              0                  C                  C               3   No Deposit
#2                              0                  C                  C               4   No Deposit
#3                              0                  A                  C               0   No Deposit
#4                              0                  A                  A               0   No Deposit
#5                              0                  A                  A               0   No Deposit
#6                              0                  A                  A               0   No Deposit
#agent company days_in_waiting_list customer_type adr required_car_parking_spaces
#1  NULL    NULL                    0     Transient   0                           0
#2  NULL    NULL                    0     Transient   0                           0
#3  NULL    NULL                    0     Transient  75                           0
#4   304    NULL                    0     Transient  75                           0
#5   240    NULL                    0     Transient  98                           0
#6   240    NULL                    0     Transient  98                           0
#total_of_special_requests reservation_status reservation_status_date
#1                         0          Check-Out              2015-07-01
#2                         0          Check-Out              2015-07-01
#3                         0          Check-Out              2015-07-02
#4                         0          Check-Out              2015-07-02
#5                         1          Check-Out              2015-07-03
#6                         1          Check-Out              2015-07-03

#max(bookings$stays_in_weekend_nights)
#[1] 19

#test <- drop_na(bookings)
#max(test$children)
#[1] 10

#unique(test$stays_in_weekend_nights)
#[1]  0  1  2  4  3  6 13  8  5  7 12  9 16 18 19 10 14

#unique(bookings$children)
#[1]  0  1  2 10  3 NA