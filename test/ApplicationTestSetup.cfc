component {
	/**
	 3 ways to run the tests and they all need setup with these properties
	 	1.  eclipse (MyRemoateFacade)
	 	2.  application (runner.cfm)
	 	3.  ANT by way of jenkins (HttpAntRunner)
	**/
	function setup() {
	   application.beanFactory = new test1.ioc(folders=["/test1/service", "/test1/dao"]);
       application.beanFactory.declareBean("ClientDao", "test1.test.dao.MockClientDao");
	}	
}

