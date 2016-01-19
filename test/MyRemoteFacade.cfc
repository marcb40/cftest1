component extends="mxunit.framework.remoteFacade"  wsversion="1"   {
/**
Used to setup the application for mxunit running through the eclipse plugin.  If the unit tests are run through on the 
server (see runner.cfm), then this is not used and instead the Application.cfc in the test pacakge is used

on the MXUnit Properties tab of the projects, set the following
Test Runner URL: http://localhost:8600/test1/test/MyRemoteFacade.cfc?wsdl
cfc path: .
username/password: {leave blank}
**/
	  applicationSetup = Createobject("component","ApplicationTestSetup");
      applicationSetup.setup();
}

