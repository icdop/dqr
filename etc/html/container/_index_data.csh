
echo "<table id=report>"
echo "<tr class=header>"
echo "<td colspan=3><h2>"
echo "<h2>[$project]</h2>"
echo "<a href=../index.htm>"
echo `dirname $dvc_path`
echo "</a>"
echo "</td></tr>"

echo "<tr class=title>"
echo "<td>CURRENT</td>"
echo "<td>README</td>"
echo "<td>STATUS</td>"
echo "</tr>"

echo "<tr class=data>"
echo "<td class=col1>"
echo "<h3>$dvc_name</h3>"
echo "</td>" 

echo "<td class=col2>" 
echo "<object name=readme type=text/html data=.dvc/README width=300></object>"
echo "<img  src=index.jpg alt=$dvc_name></img>"
echo "</td>"
 
echo "<td class=col3>"
echo "<pre>"
dvc_get_dqi --root $dvc_data --html --all
echo "</pre>"
echo "</td>" 
echo "</tr>" 

echo "</table>"

