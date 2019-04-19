echo $1

sfdx force:org:list

#sfdx force:source:convert --outputdir mdapi_output_dir --packagename managed_pkg_name
#sfdx force:mdapi:deploy -d mdapi_output/ -u HubOrg -w 5

#if [ $1 == 'SandBox_1' ]; then
#	sfdx force:source:convert --outputdir mdapi_output_dir --packagename managed_pkg_name
#	sfdx force:mdapi:deploy -d mdapi_output/ -u HubOrg -w 5
#	exit 0
#fi

#if [ $1 == 'SandBox_2' ]; then
#    sfdx force:source:convert --outputdir mdapi_output_dir --packagename managed_pkg_name
#    sfdx force:mdapi:deploy -d mdapi_output/ -u HubOrg -w 5   
#   exit 0
#fi

