
create table saml_sp_metadata (
dc_id int4 not null,
acs_location varchar(255) not null,
certificateString oid,
dc_disabled boolean not null,
display_name varchar(255) not null,
entityId varchar(255) not null,
idp_settings varchar(4096),
logout_is_post boolean not null,
logout_location varchar(255),
dc_metadata oid,
name_id_format int4 not null,
requests_signed boolean not null,
primary key (dc_id)
);

alter table if exists saml_sp_metadata
add constraint UK_SP_METADATA_ENTITYID unique (entityId);

alter table if exists saml_sp_metadata
add constraint UK_SP_METADATA_DISPLAY_NAME unique (display_name);
