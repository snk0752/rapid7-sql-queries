select das.asset_id, ds.software_id, ds.vendor, ds.name, ds.version, ds.cpe
from dim_software ds, dim_asset_software das
where das.software_id = ds.software_id
order by das.asset_id,ds.name

