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