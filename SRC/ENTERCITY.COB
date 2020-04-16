       IDENTIFICATION DIVISION.
       PROGRAM-ID. EnterCity.
       AUTHOR. Jan Kammerath.
       *> enter a city and display it as text
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Location.
          02 CityName      PIC X(64)       VALUE SPACES.
          02 StateCode     PIC XX          VALUE SPACES.
          02 CountryCode   PIC XX          VALUE SPACES.

       PROCEDURE DIVISION.
       Begin.
           DISPLAY "Enter city name:" WITH NO ADVANCING
           ACCEPT CityName
           DISPLAY "Enter two-letter state code:" WITH NO ADVANCING
           ACCEPT StateCode
           DISPLAY "Enter two-letter country code:" WITH NO ADVANCING
           ACCEPT CountryCode
           DISPLAY "Your city: " FUNCTION TRIM(CityName) ", " StateCode ", " CountryCode
           STOP RUN.

       