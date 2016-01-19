component {
	this.name = "test1";
	
	this.datasource = "pa";
	this.ormEnabled = true;
	this.ormSettings = { logsql : true };
	this.invokeImplicitAccessor = true;
	
	  
       this.ormsettings= {
	    cfclocation = ["model"],
	    autogenmap = true,
	    eventhandling="true"                            
		};
	 

    function onApplicationStart(){
       application.beanFactory = new ioc(folders=expandPath("/test1/service"));
       application.beanFactory.declareBean("ClientService", "test1.service.ClientService");
       application.beanFactory.declareBean("ClientDao", "test1.dao.ClientDao");
     
    }
    

}