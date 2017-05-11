'Program RANDWIRE.BAS calculates the quarter-wave lengths for random wire antennas
'avoid even multiples of half wavelength in any of the HF amateur radio bands
'(c) J. C. Sprott (http://sprott.physics.wisc.edu/)
'Compile with the PowerBASIC console compiler 6.03

DEFEXT a-z

FUNCTION PBMAIN () AS LONG
    CLS
    fmax=30                         'Maximum frequency to consider (MHz)
    xmax&=1e5*fmax                  'Number of frequencies to consider (every 10 Hz)
    FOR i&=1 TO xmax&
        f=i&*fmax/xmax&             'This is the quarter wavelength frequency
        hmax&=fmax/f                'This is the highest harmonic allowed
        bad&=0
        FOR h&=2 TO hmax& STEP 2    'Consider only even harmonics of a quarter wave
            fh=h&*f                 'This is the harmonic fequency of a quarter wave
            IF fh>=1.8 AND fh<=2 THEN bad&=1
            IF fh>=3.5 AND fh<=4 THEN bad&=1
            IF fh>=7 AND fh<=7.3 THEN bad&=1
            IF fh>=10.1 AND fh<=10.15 THEN bad&=1
            IF fh>=14 AND fh<=14.35 THEN bad&=1
            IF fh>=18.068 AND fh<=18.168 THEN bad&=1
            IF fh>=21 AND fh<=21.45 THEN bad&=1
            IF fh>=24.89 AND fh<=24.99 THEN bad&=1
            IF fh>=28 AND fh<=29.7 THEN bad&=1
        NEXT h&
        IF bad&=0 THEN INCR gap&    'This frequency is in an acceptable gap
        IF bad&=1 AND gap&>0 THEN   'This is the end of that gap
            fm=f-0.5##*gap&*fmax/xmax& 'This is the midpoint of the gap
            khz&=2000*(f-fm)        'This is the width of the gap
            feet&=0.25*983.571056/fm
            meters&=0.25*300/fm
            PRINT"Gap =";khz&;"kHz at";CSNG(fm);"MHz (";LTRIM$(STR$(feet&));" feet -";LTRIM$(STR$(meters&));" meters)"
            gap&=0                  'Start looking for a new gap
        END IF
    NEXT i&
    WAITKEY$
END FUNCTION
