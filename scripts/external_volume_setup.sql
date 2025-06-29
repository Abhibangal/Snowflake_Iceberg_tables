
/*
Here we are creating below:
 --> Snowflake Managed Iceberg table having external volume in ADLS Gen2.
 --> MS fabric can access this ICEBERG table using SHORTCUTS in NON SCHEMA ENABLED LAKEHOUSE and u cannot have it in DATA-WARHOUSE ( as it SCHEMA enabled).
*/

create or replace external volume azure_external_volume
storage_locations= (
(
name='azure_pune'
storage_provider = 'AZURE'
storage_base_url = 'azure://<Storage_account>.blob.core.windows.net/icebergtables'
azure_tenant_id = '<tenant_ID>'
)
);

--STEP 2: Get the AZURE Consent URL from below query and provide consent from AZURE ADMIN for creation of Service Principle

desc external volume azure_external_volume;

