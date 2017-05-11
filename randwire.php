<?php

$fmax = 30;                          //   'Maximum frequency to consider (MHz)
$xmax = 100000 * $fmax;                //  'Number of frequencies to consider (every 10 Hz)
$gap = 0;
for ( $i = 1 ; $i <= $xmax ; $i++ )  {
	$f = $i * $fmax / $xmax ;       //      'This is the quarter wavelength frequency
	$hmax = $fmax / $f ;           //     'This is the highest harmonic allowed
	$bad = 0;
	for ( $h = 2 ; $h <= $hmax ; $h += 2 ) { //    'Consider only even harmonics of a quarter wave
		$fh = $h * $f ;                //  'This is the harmonic fequency of a quarter wave
		IF ($fh >= 1.8 AND $fh <= 2) $bad = 1 ;
		IF ($fh >= 3.5 AND $fh <= 4) $bad = 1 ;
		IF ($fh >= 7 AND $fh <= 7.3) $bad = 1 ;
		IF ($fh >= 10.1 AND $fh <= 10.15) $bad = 1 ;
		IF ($fh >= 14 AND $fh <= 14.35) $bad = 1 ;
		IF ($fh >= 18.068 AND $fh <= 18.168) $bad = 1 ;
		IF ($fh >= 21 AND $fh <= 21.45) $bad = 1 ;
		IF ($fh >= 24.89 AND $fh <= 24.99) $bad = 1 ;
		IF ($fh >= 28 AND $fh <= 29.7) $bad = 1 ;
	}
	if ($bad == 0) $gap++ ;    //   'This frequency is in an acceptable gap
	if ($bad == 1 AND $gap > 0) {   //  'This is the end of that gap
		$fm = $f - 0.5 * $gap * $fmax / $xmax ;    // 'This is the midpoint of the gap
		$khz = 2000 * ( $f - $fm ) ;           // 'This is the width of the gap
		$feet = 0.25 * 983.571056 / $fm ;
		$meters = 0.25 * 300 / $fm ;
		echo "Gap = ".round($khz,0)."kHz at ".$fm." MHz (".round($feet,0)." feet - ".round($meters,2)." meters)\n" ;
		$gap = 0 ;              //    'Start looking for a new gap
	}
}
