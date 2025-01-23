
  create or replace   view development.AZURE_MASTER.vw_azure_snapshot
  
   as (
    with CTE_AZURE_SNAPSHOT AS (
    select * from AZURE_MASTER.AZURE_SNAPSHOT
    where TS_DATE = DATE(current_timestamp)-1
)

SELECT * FROM CTE_AZURE_SNAPSHOT
  );

