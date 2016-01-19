component {
	
/**
	Used to setup the application for mxunit running through the application (see runner.cfm). 
	If the unit tests are run through eclipse, then the MyRemoveFacade is required which sets up the application
**/
	this.name = "test1-test";
	this.sessionManagement = false;
	
	//ORM is not setup for unit testing
	
	
	 function onApplicationStart(){
       applicationSetup = Createobject("component","ApplicationTestSetup");
       applicationSetup.setup();
    }
}