# amdgpu-fancontrol

Simple bash script to control AMD Radeon graphics cards fan pwm. Adjust temp/pwm values and hysteresis/interval in the script as desired. Other adjustments, such as the correct hwmon path might be required as well.

Run [install.sh](https://github.com/hat3ph/amdgpu-fancontrol/blob/master/install.sh) as root to auto install the service.

Configure /opt/amdgpu-fancontrol/amdgpu-fancontrol.cfg to custom the temperature and pwm fa speed.

Formula: PWM=FS%x255

* PWM is between 0 - 255

| Temperature | Fan Speed (%) | Fan Speed (PWM) |
|-------------|---------------|-----------------|
| 0           | 0             | 0               |
| 35000       | 18            | 45              |
| 52000       | 22            | 56              |
| 67000       | 30            | 76              |
| 78000       | 50            | 128             |
| 85000       | 82            | 210             |
| 90000       | 90            | 255             |

This script was initially meant as an example. Please don't just run it naively and keep in mind that I'm not responsible for failures.

Tested running with AMD RX 480 8GB on Ubuntu 22.04 LTS

Thanks to [gtmat](https://github.com/grmat/amdgpu-fancontrol) for this great script.
