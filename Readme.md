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


### List of Tables
- [THEATRES](#entity-theatres) <br>
- [SHOWS](#entity-shows) <br>
- [TICKETS](#entity-tickets) <br>
- [TICKETS_SEATS](#entity-tickets-seats) <br>
- [THEATRES_SHOWS](#entity-theatres-shows) <br>
- [SCREENS](#entity-screens) <br>
    
### THEATRES <a id="entity-theatres"></a>

#### Description:
The THEATRES table stores the list of all the theatres and their details.

#### Attributes:
 A THEATRE table has the following attributes:
- THEATRE_ID (PK)
- NAME
- ADDRESS
- CITY
- PINCODE
- CONTACT_NO
- EMAIL_ID
    

### SHOWS <a id="entity-shows"></a>

#### Description:
The SHOWS table stores the details of all the shows.

#### Attributes:
- SHOW_ID
- NAME
- RELEASE_DATE
- SHOW_TYPE
- SHOW_DURATION_IN_MINUTES
- SHOW_PRICE
- AGE_LIMIT

### TICKETS <a id="entity-tickets"></a>

#### Description:
The Tickets table stores the details of the tickets that a user books.

#### Attributes:
- TICKET_BOOKING_ID (PK)
- TICKET_QUANTITY
- TICKET_UNIT_PRICE
- TICKET_DISCOUNT
- TICKET_TOTAL_PRICE
- SHOW_ID (FK)
- THEATRE_ID (FK)
- THEATRE_SCREEN_ID (FK)
- SEAT_ID (FK)
- USER_ID (FK)

### TICKETS_SEATS <a id="entity-tickets-seats"></a>

#### Description:
The TICKETS_SEATS table stores the details of the seats in a theatre screen that user has booked.

#### Attributes:
- TICKET_ID
- SEAT_NAME

### THEATRES_SHOWS <a id="entity-theatres-shows"></a>

#### Description:
The THEATRES_SHOWS table stores the list of all the theatres and their details.

#### Attributes: 
- THEATRE_SHOWS_ID (PK)
- THEATRE_ID (FK)
- SHOW_ID (FK)
- SHOW_START_TIME
- SHOW_END_TIME
- SCREEN_ID (FK)

### SCREENS <a id="entity-screens"></a>

#### Description:
The SCREENS table stores the list of all the screens and their details in a theatre.

#### Attributes: 
- SCREEN_ID (PK)
- SCREEN_NAME (FK)
- SCREEN_CAPACITY (FK)
- THEATRE_ID (FK)







    
    