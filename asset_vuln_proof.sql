SELECT da.ip_address AS "IP Address", 
      da.host_name AS "Host Name", 
      dv.title AS " Vulnerability Title", 
      dv.description AS "Vulnerability Description", 
      fa.proof AS "Proof", 
      fa.key AS "Proof Key", 
      da.sites AS Sites, 
      dv.nexpose_id AS "NexposeID"
FROM fact_asset_vulnerability_instance fa 
JOIN dim_asset da USING(asset_id) 
JOIN dim_vulnerability dv USING(vulnerability_id)
ORDER BY da.ip_address

