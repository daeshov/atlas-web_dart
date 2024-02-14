String longestUniqueSubstring(String str) {
	String longest = "";
	String current = "";
	String unique = "";
	for (int x = 0; x < str.length; ++x){
		for (int y = x; y < str.length; ++y) {
			current = str.substring(x, y + 1);
			unique = current.split('').toSet().join('');
			if ((current.length > longest.length) && current == unique) {
				longest = current;
			}
		}
	}
	return longest;
}