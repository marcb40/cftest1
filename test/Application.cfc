component {
	
/**
	Used to setup the application for mxunit running through the application (see runner.cfm). 
	If the unit tests are run through eclipse, then the MyRemoveFacade is required which sets up the application
**/
	this.name = "test1-test";
	this.sessionManagement = false;
	
	//ORM is not setup for unit testing
	
	
	 function onApplicationStart(){
       application.beanFactory = new test1.ioc(folders=["/test1/service", "/test1/dao"]);
       application.beanFactory.declareBean("ClientDao", "test1.test.dao.MockClientDao");
    }
}