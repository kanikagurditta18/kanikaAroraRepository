/**
 * @Name: FibonacciSeriesPrinter
 * @Description: Takes a limit integer and prints the fibonacci series up to that number.
 * @Author: Kanika Gurditta
 **/

public with sharing class FibonacciSeriesPrinter {

    @TestVisible private Integer ZERO = 0;
    @TestVisible private Integer ONE = 1;

    /**
     * @Description: Prints fibonacci series up to the limit provided.
     * @Author: Kanika Gurditta
     * @Date: date here
     * @Param: 1. pLimitInteger : Signifies upper limit of fibonacci series to be printed.
     * @Return: void
     **/
    public void printFibonacciSeries( Integer pLimitInteger ) {

        System.debug(ZERO);

        Integer third_num;

        // Iteration for going up to limit and printing fibonacci series numbers one by one.
        for( Integer iterator = 2 ; iterator < pLimitInteger; iterator++ ) {

            third_num = ZERO + ONE;
            ONE = ZERO;
            ZERO = third_num;
            System.debug(third_num);
        } // End for
    } // End printFibonacciSeries
} // End FibonacciSeriesPrinter