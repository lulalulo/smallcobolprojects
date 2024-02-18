IDENTIFICATION DIVISION.
PROGRAM-ID. InventoryManagement.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT INVENTORY-FILE ASSIGN TO 'INVENTORY.DAT' ORGANIZATION IS LINE SEQUENTIAL.
    SELECT UPDATED-INVENTORY-FILE ASSIGN TO 'UPDATED_INVENTORY.DAT' ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD INVENTORY-FILE.
01 INVENTORY-RECORD.
   05 ITEM-ID PIC 9(5).
   05 ITEM-NAME PIC X(15).
   05 ITEM-QUANTITY PIC 9(4).

FD UPDATED-INVENTORY-FILE.
01 UPDATED-INVENTORY-RECORD PIC X(24).

WORKING-STORAGE SECTION.
01 EOF-FLAG PIC X VALUE 'N'.
   88 EOF VALUE 'Y'.
   88 NOT-EOF VALUE 'N'.
01 TEMP-RECORD PIC X(24).
01 SALES-UPDATE PIC 9(4).
01 UPDATED-QUANTITY PIC 9(4).

PROCEDURE DIVISION.
000-MAIN.
    OPEN INPUT INVENTORY-FILE
         OUTPUT UPDATED-INVENTORY-FILE
    PERFORM UNTIL EOF
        READ INVENTORY-FILE INTO TEMP-RECORD
            AT END
                SET EOF TO TRUE
            NOT AT END
                UNSTRING TEMP-RECORD DELIMITED BY SPACES INTO ITEM-ID, ITEM-NAME, ITEM-QUANTITY
                DISPLAY "Item: " ITEM-NAME ", Quantity: " ITEM-QUANTITY
                DISPLAY "Enter sales (-) or new stock (+) for " ITEM-NAME ": "
                ACCEPT SALES-UPDATE
                COMPUTE UPDATED-QUANTITY = ITEM-QUANTITY + SALES-UPDATE
                IF UPDATED-QUANTITY < 0 THEN
                    MOVE 0 TO UPDATED-QUANTITY
                END-IF
                STRING ITEM-ID " " ITEM-NAME " " UPDATED-QUANTITY DELIMITED BY SIZE INTO UPDATED-INVENTORY-RECORD
                WRITE UPDATED-INVENTORY-RECORD
        END-READ
    END-PERFORM
    CLOSE INVENTORY-FILE
          UPDATED-INVENTORY-FILE
    STOP RUN.
