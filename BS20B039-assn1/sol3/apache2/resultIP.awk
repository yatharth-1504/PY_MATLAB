BEGIN {
	FS = " - - ";
}
{
	d = $2;
	if(d ~ /01\/Jul\/2021/) arr1[$1]++;
	if(d ~ /27\/Jun\/2021/) arr2[$1]++;
	if(d ~ /28\/Jun\/2021/) arr3[$1]++;
	if(d ~ /29\/Jun\/2021/) arr4[$1]++;
	if(d ~ /30\/Jun\/2021/) arr5[$1]++;
}
END{
	print "no of unique IP Addresses on 01/Jul/2001:    " length(arr1);
	print "no of unique IP Addresses on 30/Jun/2021:    " length(arr5);
	print "no of unique IP Addresses on 29/Jun/2021:    " length(arr4);
	print "no of unique IP Addresses on 28/Jun/2021:    " length(arr3);
	print "no of unique IP Addresses on 27/Jun/2021:    " length(arr2);
}
