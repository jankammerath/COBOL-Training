       IDENTIFICATION DIVISION.
       PROGRAM-ID.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DATE1.
           02 YY    PIC 99.
           02 MM    PIC 99.
           02 DD    PIC 99.
       01 BIRDATE.
           02 BYY  PIC 9999.
           02 BMM  PIC 99.
           02 BDD  PIC 99.
           77 TYY PIC 9999.

       PROCEDURE DIVISION.
       ACCEPT-PARA.
           ACCEPT DATE1 FROM DATE.
           COMPUTE TYY = YY + 1906.
           DISPLAY \"-----------------------------------------------\".
           DISPLAY \" CURRENT DATE:- \" DD \"/\" MM \"/\" TYY.
           DISPLAY \"-----------------------------------------------\".

       MAIN-PARA.
           DISPLAY \" ENTER THE BIRTH-DATE(YYYYMMDD):- \".
           ACCEPT BIRDATE.
           IF BYY > TYY
               DISPLAY \" YEAR IS INVALID \"
               DISPLAY \" RE-ENTER THE DATE \"
               GO TO MAIN-PARA
           ELSE IF BMM > 12
               DISPLAY \" MONTH IS INVALID \"
               DISPLAY \" RE-ENTER THE DATE \"
               GO TO MAIN-PARA
           ELSE IF BDD > 30
               DISPLAY \" DATE IS INVALID \"
               DISPLAY \" RE-ENTER THE DATE \"
               GO TO MAIN-PARA
           ELSE
               DISPLAY \" ENTERED DATE IS \" BDD \"/\" BMM \"/\" BYY.



       COMPUTE-PARA.
           COMPUTE BYY = TYY - BYY.
           IF MM < BMM
                COMPUTE BMM = 12 - BMM
                COMPUTE BMM = MM + BMM
                COMPUTE BYY = BYY - 1
           ELSE IF MM = BMM AND DD < BDD
                COMPUTE BYY = BYY - 1
                COMPUTE BMM = MM - BMM

           ELSE
                COMPUTE BMM = MM - BMM.

           IF DD < BDD
                COMPUTE BDD = 30 - BDD
                COMPUTE BDD = DD + BDD 
                COMPUTE BMM = MM - 1
           ELSE
                COMPUTE BDD = DD - BDD.

           DISPLAY ( 15 , 30 )  \" AGE IS \".
           DISPLAY ( 17 , 30 )BYY \" YEARS \" BMM \" MONTHS \" BDD \" DAYS \".
           STOP RUN.