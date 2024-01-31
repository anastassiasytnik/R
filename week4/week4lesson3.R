#check out values for which we gonna make bar chart
#the data and packages are already loaded in the previous exercises
unique(bookings$distribution_channel)
unique(bookings$market_segment)

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel))

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type))

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = market_segment))

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = market_segment, color = deposit_type))

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = market_segment)) +
  facet_wrap(~deposit_type)

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = market_segment)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

#take a glimpse of data used for axis
unique(bookings$hotel)

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

ggplot(data = bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

online_city_hotels <- filter(bookings, 
                             hotel == "City Hotel" & market_segment == "Online TA")
View(online_city_hotels)

alternative <- bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

ggplot(data = online_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))

## OUTPUT
#unique(bookings$distribution_channel)
#[1] "Direct"    "Corporate" "TA/TO"     "Undefined" "GDS"

#unique(bookings$market_segment)
#[1] "Direct"        "Corporate"     "Online TA"     "Offline TA/TO" "Complementary" "Groups"       
#[7] "Undefined"     "Aviation"     

#unique(bookings$hotel)
#[1] "Resort Hotel" "City Hotel"  