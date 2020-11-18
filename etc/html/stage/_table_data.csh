echo "<tr class=data>"
echo "<td class=col1>"
echo "<a href=$item_name/index.htm>"
echo "$item_name"
echo "</a>"
echo "</td>"

#echo "<td class=col2>"
#echo "<pre>"
#tree -L 1 $item_data
#echo "</pre>"
#echo "</td>"

#echo "<td class=col3>"
#dvc_get_dqi --root $item_data --html --all
#echo "</td>
foreach dqi ($version_dqi)
  echo "<td class=col2 width=10>"
  dvc_get_dqi --root $item_data $dqi
  echo "</td>"
end
echo "</tr>"
