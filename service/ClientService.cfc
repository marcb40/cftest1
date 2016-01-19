component implements="test1.service.api.IClientService"   {
	
	property type="IClientDao" name="clientDao"; 
	
	function init() {
		clientDao = application.beanFactory.getBean("ClientDao");
		return this;
	}
	
	function getAllClientsLike(String name) {
		return clientDao.getAllClientsLike(name);
	}
	
	function getClientById(numeric id) {
		return clientDao.getClientById(id);
	}
	
	void function addClient(String name, String number, numeric aId) {
		clientDao.addClient(name, number, id);
	}
	
	String function getClientName() {
		return "just testing";
	}
	

}