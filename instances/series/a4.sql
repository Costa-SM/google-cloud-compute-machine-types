/* A4 Accelerator-optimized machine family */
/* https://cloud.google.com/compute/docs/accelerator-optimized-machines#a4-vms */
UPDATE instances SET
series      = 'a4',
family      = 'Accelerator-optimized',
cpuPlatform = 'Emerald Rapids',
localSsd    = '1',
bandwidth   = '3600',
spot        = '1'
WHERE name LIKE 'a4-%-8g';

UPDATE instances SET localSsd = '6000' WHERE name LIKE 'a3-%-8g';

UPDATE instances SET bandwidth = '1000'  WHERE name LIKE 'a3-highgpu-8g';
UPDATE instances SET bandwidth = '1800' WHERE name LIKE 'a3-megagpu-8g';
UPDATE instances SET bandwidth = '3600' WHERE name LIKE 'a3-ultragpu-8g';
