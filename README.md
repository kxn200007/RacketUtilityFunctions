# RacketUtilityFunctions
This code provides a collection of utility functions implemented in Racket.
Each function serves a specific purpose and can be used to manipulate lists and perform various operations. Here's a brief description of each function:

divisible-by-x?: This function takes a number 'x' as input and returns a closure that checks whether a given number is divisible by 'x'.

function-9: This function takes an argument 'x' and tries to apply 'x' as a function to the number 9, which may result in an error.

my-map: This function takes a function 'funct' and a list 'x' as input and applies the function to each element of the list, returning a new list with the results.

pair-up: This function takes two lists 'y' and 'x' and pairs the corresponding elements together, returning a new list of pairs.

classify: This function takes a function 'funct' and a list 'myList' as input and classifies the elements of 'myList' into two separate lists based on whether they satisfy the given function or not.

is-member?: This function takes a function 'funct' and a list 'member' as input and checks if the function is present in the list.

my-sorted?: This function takes a function 'funct' and a sorted list as input and checks if the list is sorted in ascending order according to the given function.

my-flatten: This function takes a nested list 'x' as input and flattens it, returning a single-level list containing all the elements.

upper-threshold: This function takes a sorted list 'myList' and a threshold value 'x' as input and returns a new list containing elements from 'myList' that are greater than 'x'.

my-list-ref: This function takes a list 'myList' and an index 'x' as input and returns the element at the specified index. If the index is out of bounds, an error message is displayed.
