*** Variables ***
${REMOTE_URL}      http://127.0.0.1:4723/wd/hub
&{CAPS}
...    platformName=Android
...    automationName=UiAutomator2
...    deviceName=Android_Emulator
...    udid=emulator-5554
...    noReset=true
...    newCommandTimeout=120
...    appPackage=com.whatsapp
...    appActivity=com.whatsapp.Main
...    appWaitActivity=com.whatsapp.*
