component  extends="mxunit.runner.HttpAntRunner" {
	 application.beanFactory = new test1.ioc(folders=["/test1/service", "/test1/dao"]);
     application.beanFactory.declareBean("ClientDao", "test1.test.dao.MockClientDao");
}

