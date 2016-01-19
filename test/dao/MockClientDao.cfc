component implements="test1.dao.api.IClientDao"  {
	
	function init() {
		return this;
	}
	
	function getAllClientsLike(String name) {
		return "";
	}
	
	function getClientById(numeric id) {
		codeObj = Createobject("component","test1.model.Client");
		codeObj.setclientName("My Test");
		codeObj.setid(id);
		codeObj.setClientNumber("abc123");
		return codeObj;
	}
	
	void function addClient(String name, String number, numeric aId) {
		
	}
	
}