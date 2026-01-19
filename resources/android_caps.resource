*** Variables ***
${REMOTE_URL}     http://127.0.0.1:4723/wd/hub

&{CAPS_WA}
...  platformName=Android
...  automationName=UiAutomator2
...  deviceName=Android_Emulator
...  noReset=true
...  newCommandTimeout=120
...  appPackage=com.whatsapp
...  appActivity=com.whatsapp.Main
...  appWaitActivity=com.whatsapp.*
...  autoGrantPermissions=true

&{CAPS_CALC}
...  platformName=Android
...  automationName=UiAutomator2
...  deviceName=Android_Emulator
...  noReset=true
...  newCommandTimeout=120
...  appPackage=com.google.android.calculator
...  appActivity=com.android.calculator2.Calculator
...  appWaitActivity=*
...  autoGrantPermissions=true
