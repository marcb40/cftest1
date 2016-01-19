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
       application.beanFactory = new ioc(folders=["/test1/service", "/test1/dao"]);
        restInitApplication(expandPath("/test1/restapi"), "api");
    }
    

}