letters = [65, 65, 65, 65, 65, 65];
index = 0;
typing = true;

function get_name() {
	var _one = chr(letters[0])
	var _two = chr(letters[1])
	var _three = chr(letters[2])
	var _four = chr(letters[3])
	var _five = chr(letters[4])
	var _six = chr(letters[5])
	return string(_one+_two+_three+_four+_five)
}