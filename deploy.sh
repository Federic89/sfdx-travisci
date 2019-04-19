echo $1
sfdx force:source:convert --outputdir mdapi_output_dir --packagename managed_pkg_name
sfdx force:mdapi:deploy -d mdapi_output/ -u HubOrg -w 5

