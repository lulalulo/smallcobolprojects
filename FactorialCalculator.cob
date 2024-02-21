IDENTIFICATION DIVISION.
PROGRAM-ID. FactorialCalculator.
AUTHOR. YourName.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Num PIC 9(5) VALUE 5.  -- Change the initial value as needed
01 Factorial PIC 9(18) VALUE 1.

PROCEDURE DIVISION.
MAIN-LOGIC.
    DISPLAY "Enter a number to calculate its factorial:" WITH NO ADVANCING.
    ACCEPT Num.

    IF Num < 0 THEN
        DISPLAY "Factorial is not defined for negative numbers."
        STOP RUN
    END-IF.

    COMPUTE Factorial = FUNCTION FACTORIAL(Num).
    DISPLAY "Factorial of " Num " is " Factorial.

    STOP RUN.

FUNCTION FACTORIAL
    SECTION.
    01 N PIC 9(5).
    01 Result PIC 9(18) VALUE 1.

    IF N = 0 THEN
        RETURN Result
    ELSE
        COMPUTE Result = N * FUNCTION FACTORIAL(N - 1)
        RETURN Result
    END-IF.
