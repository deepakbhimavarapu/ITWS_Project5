xlsx2csv IndianCricketplayers.xlsx > Indianplayers.csv
{
read
while IFS=, read -r f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17
do
	# echo $f1
	VariableName='<!DOCTYPE html><html><head><style>table {  font-family: arial, sans-serif;  border-collapse: collapse;  width: 100%;}td, th {  border: 1px solid #dddddd;  text-align: left;  padding: 8px;}tr:nth-child(even) { background-color: #dddddd;}</style></head><body><table>  <tr><th>Attributes</th><th>Value</th></tr><tr><td>Name</td><td>'$f1'</td></tr><tr>    <td>Test Matches</td> <td>'$f2'</td></tr><tr><td>Test Runs</td><td>'$f3'</td> </tr> <tr><td>Test Wickets</td><td>'$f4'</td></tr><tr><td>Test Catches</td>    <td>'$f5'</td></tr><tr><td>ODI Matches</td><td>'$f6'</td></tr><tr><td>ODI Runs</td><td>'$f7'</td></tr><tr><td>ODI Wickets</td><td>'$f8'</td></tr><tr><td>ODI Catches</td><td>'$f9'</td></tr><tr><td>T20 Matches </td><td>'$f10'</td></tr><tr><td>T20 Runs</td> <td>'$f11'</td></tr><tr><td>T20 Wickets</td><td>'$f12'</td></tr><tr><td>ODI Catches</td><td>'$f13'</td> </tr> <tr> <td>Total Matches</td><td>'$f14'</td></tr><tr><td>Total Runs</td>    <td>'$f15'</td></tr><tr><td>Total Wickets</td><td>'$f16'</td>  </tr><tr><td>Total Catches</td><td>'$f17'</td></tr></table></body></html>'
	f="${f1}.html"
	# echo $f

    echo $VariableName>"$f"
    
done }< Indianplayers.csv



for i in *.html
do
	d=$(pwd)
	v='<a href="/ITWS_Project5/'$i'">'$i'</a><br>'
    echo $v>>"$d""/index.html"
     
done
