echo $1

#if [ $1 == 'SandBox_1' ]; then
    echo 'sono stronzo'
    sfdx force:auth:jwt:grant --clientid $CONSUMERKEY --jwtkeyfile assets/server.key --username $USERNAME --setdefaultdevhubusername -a SandBox1_Hub
    sfdx force:org:list
    #deploy TODO
    sfdx force:source:convert --outputdir mdapi_output_dir --packagename managed_pkg_name
    sfdx force:mdapi:deploy -d /home/travis/build/Federic89/sfdx-travisci/mdapi_output_dir/ -u SandBox1_Hub -w 5
    exit 0
#fi
if [ $1 == 'SandBox_2' ]; then
    sfdx force:auth:jwt:grant --clientid $CONSUMERKEY_ORG2 --jwtkeyfile assets/server.key --username $USERNAME_ORG2 --setdefaultdevhubusername -a SandBox2_Hub
    sfdx force:org:list
    #deploy TODO
    sfdx force:source:convert --outputdir mdapi_output_dir --packagename managed_pkg_name
    sfdx force:mdapi:deploy -d /home/travis/build/Federic89/sfdx-travisci/mdapi_output_dir/ -u SandBox2_Hub -w 5
    exit 0
fi
