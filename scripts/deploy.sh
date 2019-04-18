if [ $1 == 'production' ]; then
	echo "PRODUCTION"
	sfdx force:source:convert --outputdir mdapi_output_dir --packagename managed_pkg_name
	sfdx force:mdapi:deploy -d mdapi_output/ -u HubOrg -w 5
	exit 0
fi

if [ $1 == 'scratch' ]; then
   echo "SCRATCH ORG"
   sfdx force:org:create -v HubOrg -s -f config/project-scratch-def.json -a ciorg --wait 4
   sfdx force:org:display -u ciorg
   sfdx force:source:push -u ciorg
   sfdx force:user:display   
   exit 0
fi
