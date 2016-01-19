component {
	this.name = "test1-test";
	this.sessionManagement = false;
	
	
	 function onApplicationStart(){
       application.beanFactory = new test1.ioc(folders=["/test1/service", "/test1/dao"]);
       application.beanFactory.declareBean("ClientDao", "test1.test.dao.MockClientDao");
    }
}