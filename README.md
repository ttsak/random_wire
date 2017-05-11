# Optimal Length of Random Wire Antenna

This repo provides code to calculate optimal lengths for "random" wire antennas used mainly for HF.

The original PowerBasic code was written by **J. C. Sprott**.
Description and technical details can be found on his [page](http://sprott.physics.wisc.edu/technote/randwire.htm "Optimal Length of Random Wire Antenna").
I have requested and received permission from him to clone and modify his software.

I wanted to have wire lengths in meters instead of feet so I added some code to the powerbasic program to show lengths also in meters.
But then I could not find a free compiler for PowerBasic so I converted the code to php! :smile: Of course it takes longer to run and has somewhat less precision but the final numbers are the same (take or give some KHz).

The basic code provides wire antenna lengths that are suitable for operation on radio amateur bands from 160m to 10m as described [here](https://en.wikipedia.org/wiki/Amateur_radio_frequency_allocations "Amateur radio frequency allocations").
You can freely modify the code to suit your needs for HF operation.

This repo contains:

* The powerbasic program modified by me to shows both meters and feet. (I have not tested if it works because I don't have a powerbasic compiler!)
* The equivalent PHP code I wrote
* A copy of the original author's webpage with all technical details (just in case it goes down for any reason)
* The usual readme and license files

The output of my PHP script is this:

    Gap = 1kHz at 0.874265 MHz (281 feet - 85.79 meters)
    Gap = 4kHz at 1.07472 MHz (229 feet - 69.79 meters)
    Gap = 24kHz at 1.15449 MHz (213 feet - 64.96 meters)
    Gap = 7kHz at 1.241 MHz (198 feet - 60.44 meters)
    Gap = 13kHz at 1.256 MHz (196 feet - 59.71 meters)
    Gap = 4kHz at 1.270745 MHz (194 feet - 59.02 meters)
    Gap = 33kHz at 1.36639 MHz (180 feet - 54.89 meters)
    Gap = 12kHz at 1.39417 MHz (176 feet - 53.8 meters)
    Gap = 15kHz at 1.4925 MHz (165 feet - 50.25 meters)
    Gap = 23kHz at 1.543855 MHz (159 feet - 48.58 meters)
    Gap = 33kHz at 1.666675 MHz (148 feet - 45 meters)
    Gap = 58kHz at 1.720835 MHz (143 feet - 43.58 meters)
    Gap = 113kHz at 2.201755 MHz (112 feet - 34.06 meters)
    Gap = 62kHz at 2.302175 MHz (107 feet - 32.58 meters)
    Gap = 14kHz at 2.482 MHz (99 feet - 30.22 meters)
    Gap = 26kHz at 2.512 MHz (98 feet - 29.86 meters)
    Gap = 87kHz at 2.581255 MHz (95 feet - 29.06 meters)
    Gap = 119kHz at 2.74063 MHz (90 feet - 27.37 meters)
    Gap = 41kHz at 2.99067 MHz (82 feet - 25.08 meters)
    Gap = 83kHz at 3.06963 MHz (80 feet - 24.43 meters)
    Gap = 376kHz at 3.31188 MHz (74 feet - 22.65 meters)
    Gap = 436kHz at 3.930425 MHz (63 feet - 19.08 meters)
    Gap = 352kHz at 4.341 MHz (57 feet - 17.28 meters)
    Gap = 125kHz at 4.60434 MHz (53 feet - 16.29 meters)
    Gap = 100kHz at 5 MHz (49 feet - 15 meters)
    Gap = 175kHz at 5.162505 MHz (48 feet - 14.53 meters)
    Gap = 860kHz at 5.792505 MHz (42 feet - 12.95 meters)
    Gap = 752kHz at 6.623755 MHz (37 feet - 11.32 meters)
    Gap = 1609kHz at 8.229505 MHz (30 feet - 9.11 meters)
    Gap = 1416kHz at 9.792005 MHz (25 feet - 7.66 meters)
    Gap = 1720kHz at 11.585005 MHz (21 feet - 6.47 meters)
    Gap = 1505kHz at 13.247505 MHz (19 feet - 5.66 meters)
