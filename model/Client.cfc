component persistent="true" {

	property name="id" fieldtype="id" generator="increment";
	property name="clientName" column="client_name" ormtype="string";     
	property name="clientNumber" column="CLIENT_NUMBER" ormtype="string";

	property name="agency" fieldtype="many-to-one" cfc="agency";   
	property name="deleted" column="is_deleted" default="false" ormtype="boolean"; 

}