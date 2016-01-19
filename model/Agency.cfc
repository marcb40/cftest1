component persistent="true" {

	property name="id" fieldtype="id" generator="increment";
	property name="name" column="organization_name" ormtype="string";     
	property name="number" column="agency_number" ormtype="string";

	property name="clients" fieldtype="one-to-many" cfc="client" fkcolumn="agency_id" ;   
	property name="deleted" column="is_deleted" default="false" ormtype="boolean";     

}