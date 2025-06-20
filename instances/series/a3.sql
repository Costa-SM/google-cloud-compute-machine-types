/* A3 Accelerator-optimized machine family */
/* https://cloud.google.com/compute/docs/accelerator-optimized-machines#a3-vms */
UPDATE instances SET
series      = 'a3',
family      = 'Accelerator-optimized',
cpuPlatform = 'Sapphire Rapids',
localSsd    = '1',
bandwidth   = '200',
spot        = '1'
WHERE name LIKE 'a3-%';

UPDATE instances SET localSsd = '6000' WHERE name LIKE 'a3-%-8g';

UPDATE instances SET bandwidth = '1000'  WHERE name LIKE 'a3-highgpu-8g';
UPDATE instances SET bandwidth = '1800' WHERE name LIKE 'a3-megagpu-8g';

UPDATE instances SET 
  cpuPlatform = 'Emerald Rapids', 
  bandwidth = '3600',
  localSsd = '12000'
  WHERE name LIKE 'a3-ultragpu-8g';
