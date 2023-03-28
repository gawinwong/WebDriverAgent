#! /bin/sh
for i in $(tidevice list -1);
do
    # nohup xcodebuild -project WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -configuration Release -allowProvisioningUpdates -allowProvisioningDeviceRegistration -destination 'platform=iOS,id='${i} test &
    nohup xcodebuild -project WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -configuration Release -destination 'platform=iOS,id='${i} test &
done