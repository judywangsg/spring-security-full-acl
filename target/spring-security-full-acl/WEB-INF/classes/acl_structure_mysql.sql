CREATE TABLE acl_class (
id BIGINT NOT NULL,
class VARCHAR(255) NOT NULL,
CONSTRAINT acl_class_pk PRIMARY KEY (id)
);


CREATE TABLE acl_entry (
id BIGINT NOT NULL,
acl_object_identity BIGINT NOT NULL,
ace_order INTEGER NOT NULL,
sid BIGINT NOT NULL,
mask INTEGER NOT NULL,
granting BIT NOT NULL,
audit_success BIT NOT NULL,
audit_failure BIT NOT NULL,
CONSTRAINT acl_entry_pk PRIMARY KEY (id)
);


CREATE TABLE acl_object_identity (
id BIGINT NOT NULL,
object_id_class BIGINT NOT NULL,
object_id_identity BIGINT NOT NULL,
parent_object BIGINT,
owner_sid BIGINT NOT NULL,
entries_inheriting BIT NOT NULL,
CONSTRAINT acl_object_identity_pk PRIMARY KEY (id)
);


CREATE TABLE acl_sid (
id BIGINT NOT NULL,
principal BIT NOT NULL,
sid VARCHAR(100) NOT NULL,
CONSTRAINT acl_sid_pk PRIMARY KEY (id)
);


ALTER TABLE acl_object_identity ADD CONSTRAINT foreign_fk_2
FOREIGN KEY (object_id_class)
REFERENCES acl_class (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
--NOT DEFERRABLE;

ALTER TABLE acl_entry ADD CONSTRAINT foreign_fk_4
FOREIGN KEY (acl_object_identity)
REFERENCES acl_object_identity (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
--NOT DEFERRABLE;

ALTER TABLE acl_entry ADD CONSTRAINT foreign_fk_5
FOREIGN KEY (sid)
REFERENCES acl_sid (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
--NOT DEFERRABLE;

ALTER TABLE acl_object_identity ADD CONSTRAINT foreign_fk_3
FOREIGN KEY (owner_sid)
REFERENCES acl_sid (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
--NOT DEFERRABLE;
