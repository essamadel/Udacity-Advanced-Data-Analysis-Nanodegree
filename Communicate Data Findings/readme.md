# Data Analysis for Ford GoBike System


## Dataset 

Ford GoBike dataset includes information about individual rides made in a bike-sharing system covering the greater San Francisco Bay area. Data contains information about:
* Trip (duration, start & end time)
* Station (start & end station id, name, geographic coordinates)
* Bike id
* User (Customer or subscriber, gender, birth year)

## Main Findings

* Duration data distribution is skewed to the right with very long-tail. Accordingly, Log transformation is used to get better visualzation
* The average trip duration is approximately 11 min (the most trips took 5 to 15 min)
* There are some trips took from 55 min to more than 18 hours, whch might or might not be outliers.
* Age feature contains some outliers. Accordingly,  trips took place by members under 70 only kept for the analysis.
* Most Trips took place by members of Age between 27 and 39, the Range of ages from 18 to 67, and the Average age is 34.
* Trips by Males are around 75%, 24% by Females and 2% by Other.
* Trips by Subscriber are around 90% and 10% by Customer.
* Trips at Daytime is ~ 84% vs ~ 16% for Night trips.
* Trips from Monday to Friday are nearly similar
* Trips on Sunday and Saturday, are less than other days. This suggest that bikes are being used to commute in working days.
* Trips Star hour are approximately between 7:00 - 9:00 am and 4:00 - 6:00 pm, Which also suggest the commuting to work suggestion.

## Key Insights for Presentation

In the presentation i have focused on trip duration and trip counts with respect to the the other feature. Firstly, i have introduced trip duration distribution, member ages distribution and User Gender and Type percentage to gives a good understanding about the data. Then I have introduced the trip counts for gender and user type for each day of the week. Followed further dive into age groups together with gender and user Type every day of the week to get better insights about the trips count. 


## Main Resources 

* Stackoverflow website (https://stackoverflow.com/)
* Documentation of visualizarion libs (https://seaborn.pydata.org/api.html)
