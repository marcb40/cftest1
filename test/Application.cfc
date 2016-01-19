component {
	this.name = "test1-test";
	this.sessionManagement = false;
	
	
	 function onApplicationStart(){
       application.beanFactory = new test1.ioc(folders=expandPath("/test1/service"));
       application.beanFactory.declareBean("ClientService", "test1.service.ClientService");
       application.beanFactory.declareBean("ClientDao", "test1.test.dao.MockClientDao");
     
    }
}