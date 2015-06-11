CONNECT 'I:\Docs\MyProg\CDDB\db\cddb.gdb' USER "admin" PASSWORD "1";
DROP DATABASE;

CREATE DATABASE 'I:\Docs\MyProg\CDDB\db\cddb.gdb' USER "admin" PASSWORD "1";

CREATE DOMAIN D_P_KEY AS
	INTEGER NOT NULL;


CREATE TABLE cd_names (
		ID D_P_KEY,
		name varchar(155) not null unique,
		comments varchar(255),
		primary key(id)
		
);

CREATE TABLE cd_db (
		ID D_P_KEY,
		filename varchar(255) not null,
		path varchar(255),
		thedate timestamp,
		comments varchar(255),
		cd_id integer not null,
		primary key(id),
		FOREIGN KEY (cd_id) REFERENCES cd_names (ID)
		
);


CREATE GENERATOR cd_db_ID_GEN;
CREATE GENERATOR cd_names_ID_GEN;



SET TERM ^;


CREATE TRIGGER SET_cd_db_ID FOR cd_db
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(cd_db_ID_GEN,1);
	END
^

CREATE TRIGGER SET_cd_names_ID FOR cd_names
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(cd_names_ID_GEN,1);
	END
^


SET TERM ;^
/*--------------------- procedure Begin------------------*/



/************_______end_______****************************/

grant all on cd_names  to "admin" WITH GRANT OPTION;
grant all on cd_db  to "admin" WITH GRANT OPTION;


revoke all on cd_db from public;
revoke all on cd_names from public;


commit;
