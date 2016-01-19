component persistent="true" table="SIC_CODE"  {

	property name="code" fieldtype="id" generator="assigned" ;
	property name="description"  ormtype="string";     
	property name="display"  ormtype="string";
	
	
	function addCode(String code, String description, String display) {
		transaction {
			sic = entityNew("Siccode", {code: code, description: description, display:display});
			entitySave( sic );
		}
	}

}