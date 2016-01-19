component implements="test1.dao.api.IClientDao"  {
	
	function init() {
		return this;
	}
	
	function getAllClientsLike(String name) {
		return ormexecuteQuery("From Client where clientName like :clientName", {clientName: name & "%"});
	}
	
	function getClientById(numeric id) {
		return ormexecuteQuery("From Client where id = :id", {id: id}, true);
	}
	
	void function addClient(String name, String number, numeric aId) {
		transaction {
			a = entityload("Agency",{id:aId}, true);
			c = entityNew("Client", {clientName: name, clientNumber: number, deleted:false, agency:a});
			entitySave( c );
		}
	}
	
}