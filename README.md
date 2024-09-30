# Pseudocode_assignment

## SUM OF THREE NUMBERS
<ol>
<li>This program will return the sum of three numbers inputted by the user
</li>
<li>Get first number from the user and store it in variable FIRST_NUM
</li>
<li>Similarly, SECOND_NUM for second number and THIRD_NUM for third number</li>
<li>Add FIRST_NUM, SECOND_NUM, THIRD_NUM and store it in a new variable SUM
</li>
<ul><li>SUM = FIRST_NUM + SECOND_NUM + THIRD_NUM
</li></ul>
<li>Display result</li>
<ul><li>Print SUM</li></ul>
</ol> 

## SUM OF SQUARES OF TWO NUMBERS
<ol>
<li>This program will return the sum of squares of two numbers inputted by the user </li>
<li>Get first number from the user and store it in variable FIRST_NUM</li>
<li>Update the value of FIRST_NUM by multiplying FIRST_NUM with itself</li>
<ul><li>FIRST_NUM = FIRST_NUM * FIRST_NUM</li></ul>
<li>Similarly, SECOND_NUM for second number </li>
<ul><li>SECOND_NUM = SECOND_NUM * SECOND_NUM</li></ul>
<li>Add first and second numbers square and store it in variable SUM</li>
<ul><li>SUM = FIRST_NUM + SECOND_NUM</li></ul>
<li>Display result</li>
<ul><li>Print SUM</li></ul>
</ol>

## REVERSE OF A NUMBER 
<ol>
<li>This program will return reverse of a number inputted by the user</li>
<li>Get number to be reversed from the user and store it in variable NUMBER</li>
<li>INITIALIZE a variable REV=0 for storing reversed number</li>
<li>Repeat while NUMBER is greater than 0</li>
<ul>
<li>Store Reminder of NUMBER divided by 10 is a variable REMINDER, [REMINDER = NUMBER % 10]
<li>Update REV value by REV multipled with 10 and add REMINDER, [REV = REV*10 + REMINDER]
<li>Update value of NUMBER by NUMBER divided by 10, [NUMBER / 10]
</ul>
<li>Display result
<ul>
<li>Print REV
</ul>
</ol>


## LINEAR SEARCH
<ol>
<li>This program will return the position of search item provided by user if it is present in the given array
<li>Get the array in which we have to perform linear search and store it in variable SEARCH_ARRAY
<li>Get the search item from user and store it in variable SEARCH_ITEM
<li>Find the length of the given array and store it in LENGTH
<li>DECLARE a variable LOC to save the location of current element in the SEARCH_ARRAY
<li>Repeat until last element of the SEARCH_ARRAY
<ul>
<li>Check IF current element is equal to SEARCH_ITEM
<ul>
<li>Print SEARCH_ITEM found
<li>Print index value of current element in loop
<li>BREAK
</ul>
<!-- <li>ELSE
<ul>
<li>Continue the loop
</ul> -->
</ul>
<li>Print SEARCH_ITEM not found
</ol>

## BINARY SEARCH 
<ol>
<li>This program will return the position of search item provided by user if it is present in the given array
<li>Get the array in which we have to perform linear search and store it in variable SEARCH_ARRAY
<li>Get the search item from user and store it in variable SEARCH_ITEM
<li>Find the length of the given array and store it in LENGTH
<li>SORT the given array
<li>INITIALIZE variables LOW=0 and HIGH=LEN
<li>Repeat until LOW is less than HIGH
<ul>
<li>INITIALIZE a variable MID IF not present ELSE UPDATE value of MID with MID = (LOW + HIGH) / 2
<li>Check IF SEARCH_ITEM == MID 
<ul>
<li>Print Found SEARCH_ITEM
<li>Print position of current element in the loop
<li>BREAK
</ul>
<li>Check IF element at index position MID is less than SEARCH_ITEM
<ul>
<li>UPDATE value of LOW by MID + 1
</ul>
<li>ELSE
<ul>
<li>UPDATE value of HIGH by MID - 1
</ul>
</ul>
<li>Print SEARCH_ITEM not found 
</ol>


## REVERSE_STRING
This program will return reverse of the input string
GET input string from user and store it in variable ORIGINAL_STRING
INITIALIZE variable REVERSED_STRING as an empty string
SET LENGTH to the length of ORIGINAL_STRING
FOR i from LENGTH-1 down to 0
APPEND ORIGINAL_STRING[i] to REVERSED_STRING
PRINT REVERSED_STRING

FIND_CHARACTER
This program will search for a character in input string and return true if found
GET input string from user and store it in variable INPUT_STRING
GET character to search from user and store it in variable SEARCH_CHAR
INITIALIZE variable FOUND as false
SET LENGTH to the length of INPUT_STRING
FOR i from 0 to LENGTH-1
IF INPUT_STRING[i] == SEARCH_CHAR THEN
SET FOUND to true
BREAK
PRINT FOUND


COUNT_OCCURRENCES
This program will return occurrences of a character in input string 
GET input string from user and store it in variable INPUT_STRING
GET character to count from user and store it in variable TARGET_CHAR
INITIALIZE variable COUNT to 0
SET LENGTH to the length of INPUT_STRING
FOR i from 0 to LENGTH-1
IF INPUT_STRING[i] == TARGET_CHAR THEN
INCREMENT COUNT by 1
PRINT COUNT


FIBONACCI_SERIES
This program prints fibonacci series 
GET number of terms from user and store it in variable N
INITIALIZE FIRST_TERM to 0
INITIALIZE SECOND_TERM to 1
PRINT FIRST_TERM
PRINT SECOND_TERM
FOR i from 2 to N-1
INITIALIZE NEXT_TERM to FIRST_TERM + SECOND_TERM
PRINT NEXT_TERM
UPDATE FIRST_TERM to SECOND_TERM
UPDATE SECOND_TERM to NEXT_TERM


PROGRAM BUBBLE_SORT
This program will sort the given array using bubble sort
GET array of numbers from user and store it in variable NUM_ARRAY
SET LENGTH to the length of NUM_ARRAY
FOR i from 0 to LENGTH-1
FOR j from 0 to LENGTH-i-2
IF NUM_ARRAY[j] > NUM_ARRAY[j+1] THEN
SWAP NUM_ARRAY[j] with NUM_ARRAY[j+1]
PRINT NUM_ARRAY
PROGRAM TOWER_OF_HANOI

FUNCTION MOVE_DISK(N, FROM_ROD, TO_ROD, AUX_ROD)
IF N == 1 THEN
PRINT "Move disk from " + FROM_ROD + " to " + TO_ROD
ELSE
MOVE_DISK(N-1, FROM_ROD, AUX_ROD, TO_ROD)
PRINT "Move disk from " + FROM_ROD + " to " + TO_ROD
MOVE_DISK(N-1, AUX_ROD, TO_ROD, FROM_ROD)
GET number of disks from user and store it in variable DISK_COUNT
CALL MOVE_DISK(DISK_COUNT, 'A', 'C', 'B')
