require 'appium_lib'

def caps
  {
      caps:{
          deviceName:"Simulator",
          platformName:"Android",
          app:(File.join(File.dirname(__FILE__ ),"TrianguloApp.apk")),
          appPackage:"com.eliasnogueira.trianguloapp",
          appActivity:"MainActivity",
          newCommandTimeout:"360"
      }
  }
end


Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object
