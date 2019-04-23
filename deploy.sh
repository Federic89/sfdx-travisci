echo $1

if [ $1 == 'SandBox_1' ]; then
    sfdx force:auth:jwt:grant --clientid $CONSUMERKEY --jwtkeyfile assets/server.key --username $USERNAME --setdefaultdevhubusername -a SandBox1_Hub
    exit 0
fi
if [ $1 == 'SandBox_1' ]; then
    sfdx force:auth:jwt:grant --clientid $CONSUMERKEY_ORG2 --jwtkeyfile assets/server.key --username $USERNAME_ORG2 --setdefaultdevhubusername -a SandBox2_Hub
    exit 0
fi

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

