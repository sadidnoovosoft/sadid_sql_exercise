# JOINS and Subquery

1. How can you produce a list of the start times for bookings by members named 'David Farrell'?

![img_15.png](images/img_15.png)

2. How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time.

![img_16.png](images/img_16.png)

3. How can you output a list of all members who have recommended another member? Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname).

![img_17.png](images/img_17.png)

4. How can you output a list of all members, including the individual who recommended them (if any)? Ensure that results are ordered by (surname, firstname).

![img_18.png](images/img_18.png)

5. How can you produce a list of all members who have used a tennis court? Include in your output the name of the court, and the name of the member formatted as a single column. Ensure no duplicate data, and order by the member name followed by the facility name.

![img_19.png](images/img_19.png)

6. How can you produce a list of bookings on the day of 2012-09-14 which will cost the member (or guest) more than $30? Remember that guests have different costs to members (the listed costs are per half-hour 'slot'), and the guest user is always ID 0. Include in your output the name of the facility, the name of the member formatted as a single column, and the cost. Order by descending cost, and do not use any subqueries.

![img_20.png](images/img_20.png)

7. How can you output a list of all members, including the individual who recommended them (if any), without using any joins? Ensure that there are no duplicates in the list, and that each firstname + surname pairing is formatted as a column and ordered.

![img_21.png](images/img_21.png)

8. The Produce a list of costly bookings exercise contained some messy logic: we had to calculate the booking cost in both the WHERE clause and the CASE statement. Try to simplify this calculation using subqueries. For reference, the question was:

![img_42.png](images/img_42.png)


# Aggregates

1. For our first foray into aggregates, we're going to stick to something simple. We want to know how many facilities exist - simply produce a total count.

![img_22.png](images/img_22.png)

2. Produce a count of the number of facilities that have a cost to guests of 10 or more.

![img_23.png](images/img_23.png)

3. Produce a count of the number of recommendations each member has made. Order by member ID.

![img_24.png](images/img_24.png)

4. Produce a list of the total number of slots booked per facility. For now, just produce an output table consisting of facility id and slots, sorted by facility id.

![img_25.png](images/img_25.png)

5. Produce a list of the total number of slots booked per facility in the month of September 2012. Produce an output table consisting of facility id and slots, sorted by the number of slots.

![img_26.png](images/img_26.png)

6. Produce a list of the total number of slots booked per facility per month in the year of 2012. Produce an output table consisting of facility id and slots, sorted by the id and month.

![img_27.png](images/img_27.png)

7. Find the total number of members (including guests) who have made at least one booking.

![img_28.png](images/img_28.png)

8. Produce a list of facilities with more than 1000 slots booked. Produce an output table consisting of facility id and slots, sorted by facility id.

![img_29.png](images/img_29.png)

9. Produce a list of facilities along with their total revenue. The output table should consist of facility name and revenue, sorted by revenue. Remember that there's a different cost for guests and members!

![img_30.png](images/img_30.png)

10. Produce a list of facilities with a total revenue less than 1000. Produce an output table consisting of facility name and revenue, sorted by revenue. Remember that there's a different cost for guests and members!

![img_31.png](images/img_31.png)

11. Output the facility id that has the highest number of slots booked. For bonus points, try a version without a LIMIT clause. This version will probably look messy!

![img_32.png](images/img_32.png)

12. Produce a list of the total number of slots booked per facility per month in the year of 2012. In this version, include output rows containing totals for all months per facility, and a total for all months for all facilities. The output table should consist of facility id, month and slots, sorted by the id and month. When calculating the aggregated values for all months and all facids, return null values in the month and facid columns.

![img_33.png](images/img_33.png)

13. Produce a list of the total number of hours booked per facility, remembering that a slot lasts half an hour. The output table should consist of the facility id, name, and hours booked, sorted by facility id. Try formatting the hours to two decimal places.

![img_34.png](images/img_34.png)

14. Produce a list of each member name, id, and their first booking after September 1st 2012. Order by member ID.

![img_35.png](images/img_35.png)

15. Produce a list of member names, with each row containing the total member count. Order by join date, and include guest members.

![img_36.png](images/img_36.png)

16. Produce a monotonically increasing numbered list of members (including guests), ordered by their date of joining. Remember that member IDs are not guaranteed to be sequential.

![img_37.png](images/img_37.png)

17. Output the facility id that has the highest number of slots booked. Ensure that in the event of a tie, all tieing results get output.

![img_38.png](images/img_38.png)

18. Produce a list of members (including guests), along with the number of hours they've booked in facilities, rounded to the nearest ten hours. Rank them by this rounded figure, producing output of first name, surname, rounded hours, rank. Sort by rank, surname, and first name.

![img_39.png](images/img_39.png)

19. Produce a list of the top three revenue generating facilities (including ties). Output facility name and rank, sorted by rank and facility name.

![img_40.png](images/img_40.png)

20. Classify facilities into equally sized groups of high, average, and low based on their revenue. Order by classification and facility name.

![img_41.png](images/img_41.png)

21. Based on the 3 complete months of data so far, calculate the amount of time each facility will take to repay its cost of ownership. Remember to take into account ongoing monthly maintenance. Output facility name and payback time in months, order by facility name. Don't worry about differences in month lengths, we're only looking for a rough value here!

![img_43.png](images/img_43.png)