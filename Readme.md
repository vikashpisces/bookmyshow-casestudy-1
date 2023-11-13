# Requirement
Bookmyshow is a ticketing platform where you can book tickets for a movie show. The image attached represents that for a given theatre we can see the next 7 dates. As one chooses the date, we get list of all shows running in that theatre along with the show timings.

P1 - As part of this assignment, we need to list down all the entities, their attributes and the table structures for the scenario mentioned in the previous slide. You also need to write the SQL queries required to create these tables along with few sample entries. Ensure the tables follow 1NF, 2NF, 3NF and BCNF rules.

P2 - Write a query to list down all the shows on a given date at a given theatre along with their respective show timings. 


## Solution - P1

### List of Entities
- THEATRES <br>
- SHOWS <br>
- TICKETS <br>
- SCREENS <br>
- USERS (Who will book the tickets)


### List Of Tables <a id="list-of-tables"></a>
- [THEATRES](#entity-theatres) <br>
- [SHOWS](#entity-shows) <br>
- [TICKETS](#entity-tickets) <br>
- [TICKETS_SEATS](#entity-tickets-seats) <br>
- [THEATRES_SHOWS](#entity-theatres-shows) <br>
- [SCREENS](#entity-screens) <br>
- [USERS](#entity-users) <br>
    
#### THEATRES <a id="entity-theatres"></a>

##### Description:
The THEATRES table stores the list of all the theatres and their details.

##### Attributes:
 A THEATRE table has the following attributes:
- THEATRE_ID
- NAME
- ADDRESS
- CITY
- PINCODE
- CONTACT_NO
- EMAIL_ID

#####Table Structure & Sample Data:

| THEATRE_ID | NAME | ADDRESS | CITY | PINCODE | CONTACT_NO  | EMAIL_ID |
| ---------- | ---- | ------- | ---- | ------- | ----------- | -------- |
| 1          | PVR Gold  | Orion Uptown Mall     | Bangalore  | 560049  | 1234567890  | pvr@uptown


#### SHOWS <a id="entity-shows"></a>

##### Description:
The SHOWS table stores the details of all the shows.

##### Attributes:
- SHOW_ID
- NAME
- RELEASE_DATE
- SHOW_TYPE
- SHOW_DURATION_IN_MINUTES
- SHOW_PRICE
- AGE_LIMIT_IN_YEARS

##### Table Structure & Sample Data:

| SHOW_ID | NAME | RELEASE_DATE | SHOW_TYPE | SHOW_DURATION_IN_MINUTES | SHOW_PRICE | AGE_LIMIT_IN_YEARS |
| ------- | ---- | ----------- | -------- | ------------------------ | --------- | --------- |
| 1       | Jumanji | 2022-01-01 | Movie | 120 | 100 | 12


#### TICKETS <a id="entity-tickets"></a>

##### Description:
The Tickets table stores the details of the tickets that a user books.

##### Attributes:
- TICKET_ID (PK)
- TICKET_BOOKING_ID 
- SHOW_ID (FK)
- THEATRE_ID (FK)
- SCREEN_ID (FK)
- TICKET_QUANTITY
- TICKET_DISCOUNT
- BOOKING_AMOUNT
- USER_ID (FK)

##### Table Structure & Sample Data:

| TICKET_BOOKING_ID | TICKET_QUANTITY | TICKET_DISCOUNT | BOOKING_AMOUNT | SHOW_ID | THEATRE_ID | SCREEN_ID | USER_ID |
| ----------------- | --------------- | --------------- | -------------  | ------- | ---------- | --------- | ------- |
| 1                 | 4               | 0            | 400              | 1               | 1       | 1         | 1                 

#### TICKETS_SEATS <a id="entity-tickets-seats"></a>

##### Description:
The TICKETS_SEATS table stores the details of the seats in a theatre screen that user has booked.

##### Attributes:
- TICKET_ID
- SEAT_NO

##### Table Structure & Sample Data:

| TICKET_ID | SEAT_NO |
| --------- | --------- |
| 1         | A1        |
| 1         | A2        |
| 1         | A3        |
| 1         | A8        |
| 2         | A4        |

#### THEATRES_SHOWS <a id="entity-theatres-shows"></a>

##### Description:
The THEATRES_SHOWS table stores the list of all the theatres and their details.

##### Attributes: 
- THEATRE_SHOW_ID (PK)
- THEATRE_ID (FK)
- SHOW_ID (FK)
- SHOW_START_TIME
- SHOW_END_TIME
- SCREEN_ID (FK)

##### Table Structure & Sample Data:

| THEATRE_SHOW_ID | THEATRE_ID | SHOW_ID | SHOW_START_TIME | SHOW_END_TIME | SCREEN_ID | 
| --------------- | ---------- | ------- | --------------- | ------------- | ----------|
| 1                | 1          | 1       | 10:00           | 12:00         | 1        |


#### SCREENS <a id="entity-screens"></a>

##### Description:
The SCREENS table stores the list of all the screens and their details in a theatre.

##### Attributes: 
- SCREEN_ID (PK)
- SCREEN_NAME
- SCREEN_CAPACITY
- THEATRE_ID (FK)

##### Table Structure & Sample Data:

| SCREEN_ID | SCREEN_NAME | SCREEN_CAPACITY | THEATRE_ID |
| --------- | ----------- | --------------- | ---------- |
| 1         | Screen 1    | 100             | 1          |


#### USERS <a id="entity-users"></a>

##### Description:
The USERS table stores the list of all the registered users.

##### Attributes:
- user_id
- name
- email_id
- contact_no

##### Table Structure & Sample Data:

| user_id | name | email_id | contact_no |
| ------- | -----| -------- | ---------- |
| 1   | John Doe  | john.doe@abc.com | 9876543210 |


### SQL Files and their usage:
All the below sql files are present in the same folder as this readme file. Following files should be executed in your favourite sql editor in the same order as listed below.

**NOTE**: Ensure that you have a active connection before executing these SQL files.

- [dbCreation.sql](dbCreation.sql)
This file is used to create the database. The database name is BOOK_MY_SHOW_1.

- [TableSchema.sql](TableSchema.sql)
This file is used to create the required tables mentioned in .

- [dataInsertion.sql](dataInsertion.sql)
This file is used to insert sample data into the tables mentioned in [List of Tables](#list-of-tables).