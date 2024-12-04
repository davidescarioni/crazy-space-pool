milliseconds += delta_time / 1000

if milliseconds > 999 {
	seconds+=1;
	 milliseconds = milliseconds % 1000;
}

if (seconds > 59) {
    minutes+=1;
    seconds = 0;
}

if (seconds<10) {
    seconds_label = "0"+string(seconds)
} else {
    seconds_label = seconds
}

if (milliseconds<10) {
    milliseconds_label = "00"+string(floor(milliseconds))
} else if (milliseconds < 100) {
    milliseconds_label = "0"+string(floor(milliseconds))
} 
else if (milliseconds < 1000) {
	milliseconds_label = string(floor(milliseconds))
}

if (minutes < 10) {
    minutes_label = "0"+string(minutes)
} else {
    minutes_label = minutes
}
