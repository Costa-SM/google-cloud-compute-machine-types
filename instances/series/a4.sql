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
