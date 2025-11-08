# 🚀 Guna Raj Gajurel - Embedded Systems Portfolio

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/gunarajgajurel/)
[![Email](https://img.shields.io/badge/Email-Contact-red?style=for-the-badge&logo=gmail)](mailto:gunaraj91@gmail.com)
[![Location](https://img.shields.io/badge/Location-California%2C%20USA-green?style=for-the-badge&logo=google-maps)](https://maps.google.com)

> **Transforming Ideas into Production-Ready Embedded Systems**
> IoT Developer | Firmware Engineer | Hardware Designer | Full Product Lifecycle Expert

---

## 📊 Technical Expertise

<table>
<tr>
<td width="25%" align="center">

### 🔧 Embedded
**C/C++** • **STM32** • **ESP32**
**FreeRTOS** • **ARM Cortex-M**
**Bare Metal** • **Device Drivers**

</td>
<td width="25%" align="center">

### 🌐 IoT
**MQTT/MQTTs** • **NB-IoT**
**Cat-M** • **AWS IoT Core**
**I2C** • **SPI** • **UART**

</td>
<td width="25%" align="center">

### ⚡ Hardware
**PCB Design** • **Schematic**
**Prototyping** • **Validation**
**3D CAD** • **EMC Compliance**

</td>
<td width="25%" align="center">

### 🛠️ Tools
**Linux** • **Git** • **Python**
**JTAG/SWD** • **Oscilloscope**
**Logic Analyzer** • **JIRA**

</td>
</tr>
</table>

---

## 🎯 Featured Projects Timeline

### 2023-Present: Production Systems
#### 🏭 [HydroMaster 3000 - Industrial Pump Controller](#hydromaster-3000)
#### ⚡ [Three-Phase Surge Protection Device](#surge-protection-device)

### 2021-2023: IoT Sensor Systems
#### 🌱 [Soil Health Monitoring Sensor](#soil-health-sensor)
#### 🌳 [Dendrometer - Tree Growth Monitor](#dendrometer)

### 2018-2020: Embedded Prototypes
#### 🔋 [16-Cell Battery Management System](#battery-management-system)
#### 📍 [Real-Time GPS Tracker](#gps-tracker)
#### 🎥 [Gyro-Stabilized Camera Gimbal](#camera-gimbal)

---

## 📦 Production-Ready Projects

### HydroMaster 3000
<a name="hydromaster-3000"></a>

<div align="center">
<img src="images/hydromaster-3000/hero.jpg" width="600" alt="HydroMaster 3000">
</div>

**🔥 Currently in Production | Three-Phase Industrial Pump Controller**

<table>
<tr>
<td width="50%">

#### 🎯 Key Features
- **Dual ESP32** redundant architecture
- **MQTTs** secure cloud communication
- **Three-phase** motor control & protection
- **PMS App** companion for remote management
- **Auto-shutdown** logic for surge events
- **Real-time** telemetry & diagnostics

</td>
<td width="50%">

#### 📊 Technical Specifications
- **MCU**: Dual ESP32-WROOM-32
- **Protocol**: MQTT over TLS 1.3
- **Power**: 380V three-phase input
- **Protection**: TVS diodes, MOVs, GDTs
- **Connectivity**: WiFi 802.11 b/g/n
- **Enclosure**: IP65 rated industrial

</td>
</tr>
</table>

<details>
<summary><b>📸 View Gallery</b></summary>

| PCB Design | 3D View | Assembled Unit | Field Installation |
|------------|---------|----------------|-------------------|
| ![PCB](images/hydromaster-3000/pcb-layout.png) | ![3D](images/hydromaster-3000/3d-render.png) | ![Assembly](images/hydromaster-3000/assembled.jpg) | ![Field](images/hydromaster-3000/field-install.jpg) |
| 4-layer PCB with controlled impedance | Custom enclosure design | Production unit | Commercial deployment |

</details>

<details>
<summary><b>💻 Technical Implementation</b></summary>

```c
// Simplified firmware architecture
typedef struct {
    esp32_primary_t   primary_mcu;
    esp32_backup_t    backup_mcu;
    mqtt_client_t     mqtt_client;
    surge_monitor_t   surge_protection;
    pump_control_t    motor_controller;
} hydromaster_system_t;

// Real-time monitoring with FreeRTOS
void vMotorControlTask(void *pvParameters) {
    while(1) {
        read_phase_voltages(&phase_data);
        check_surge_conditions(&surge_status);
        update_pump_state(&pump_control);
        send_telemetry_mqtt(&telemetry_data);
        vTaskDelay(pdMS_TO_TICKS(100));
    }
}
```

</details>

**🏆 Achievements**
- ✅ Successfully deployed in **3 commercial locations**
- ✅ **Zero downtime** in 18 months of operation
- ✅ Prevented **5 surge events** saving $50K+ in equipment
- ✅ **Patent pending** for dual-MCU redundancy system

---

### Surge Protection Device
<a name="surge-protection-device"></a>

<div align="center">
<img src="images/surge-protection/hero.jpg" width="600" alt="Surge Protection Device">
</div>

**⚡ Industrial Three-Phase Surge Absorption System**

<table>
<tr>
<td width="33%">

#### Circuit Protection
- Multi-stage TVS arrays
- MOV cascade design
- Gas discharge tubes
- Thermal shutdown

</td>
<td width="33%">

#### Response Time
- **< 1ns** TVS response
- **< 25ns** MOV clamping
- **< 100ns** GDT trigger
- **< 1ms** shutdown

</td>
<td width="33%">

#### Surge Rating
- **20kA** max surge current
- **6kV** clamping voltage
- **10/350 μs** waveform
- **IEC 61643-11** Class I+II

</td>
</tr>
</table>

<details>
<summary><b>📸 View Technical Details</b></summary>

| Schematic Design | PCB Layout | Test Results | Installation |
|------------------|------------|--------------|-------------|
| ![Schematic](images/surge-protection/schematic.png) | ![PCB](images/surge-protection/pcb.png) | ![Test](images/surge-protection/test-results.png) | ![Install](images/surge-protection/installed.jpg) |

</details>

---

### Soil Health Monitoring Sensor
<a name="soil-health-sensor"></a>

<div align="center">
<img src="images/soil-sensor/hero.jpg" width="600" alt="Soil Sensor">
</div>

**🌱 NB-IoT Agricultural Monitoring System | Citygreen Systems Australia**

<table>
<tr>
<td width="50%">

#### 🔬 Sensor Array
- **Temperature**: ±0.1°C accuracy
- **Moisture**: Capacitive sensing
- **pH**: Ion-selective electrode
- **NPK**: Optical spectroscopy
- **EC**: 4-electrode method

</td>
<td width="50%">

#### 📡 Connectivity
- **Module**: Quectel BC95-G
- **Network**: NB-IoT Cat-NB2
- **Power**: 10-year battery life
- **Range**: -164dBm sensitivity
- **Protocol**: CoAP over DTLS

</td>
</tr>
</table>

<details>
<summary><b>📸 Development Journey</b></summary>

| Prototype v1 | PCB Design | Field Testing | Production Unit |
|--------------|------------|---------------|-----------------|
| ![Proto](images/soil-sensor/prototype.jpg) | ![PCB](images/soil-sensor/pcb-3d.png) | ![Field](images/soil-sensor/field-test.jpg) | ![Prod](images/soil-sensor/production.jpg) |

</details>

<details>
<summary><b>🔧 Firmware Architecture</b></summary>

```c
// Ultra-low power STM32L4 implementation
void enter_stop_mode(void) {
    // Disable peripherals
    HAL_ADC_DeInit(&hadc1);
    HAL_I2C_DeInit(&hi2c1);

    // Configure wake source
    HAL_RTCEx_SetWakeUpTimer_IT(&hrtc,
        WAKE_INTERVAL_SECONDS,
        RTC_WAKEUPCLOCK_CK_SPRE_16BITS);

    // Enter STOP2 mode - 1.4μA current
    HAL_PWREx_EnterSTOP2Mode(PWR_STOPENTRY_WFI);
}

// Sensor reading with calibration
float read_soil_moisture(void) {
    uint16_t raw = capacitive_read();
    return calibrate_moisture(raw, soil_type, temperature);
}
```

</details>

**📈 Impact**
- 🌍 Deployed across **5 farms** in Australia
- 📊 **30% reduction** in water usage
- 🎯 **15% increase** in crop yield
- ⏰ **99.7% uptime** over 2 years

---

### Dendrometer
<a name="dendrometer"></a>

<div align="center">
<img src="images/dendrometer/hero.jpg" width="600" alt="Dendrometer">
</div>

**🌳 Precision Tree Growth Monitoring System**

- **Resolution**: 10 micrometers
- **Range**: ±10mm
- **Accuracy**: 0.1% FSR
- **Data Rate**: 15-min intervals
- **Battery**: 2-year life

<details>
<summary><b>📸 View More</b></summary>

| Sensor Mechanism | Installation | Data Dashboard |
|-----------------|--------------|----------------|
| ![Mechanism](images/dendrometer/mechanism.jpg) | ![Install](images/dendrometer/tree-install.jpg) | ![Data](images/dendrometer/dashboard.png) |

</details>

---

### Battery Management System
<a name="battery-management-system"></a>

<div align="center">
<img src="images/bms/hero.jpg" width="600" alt="16-Cell BMS">
</div>

**🔋 16-Cell Lithium Battery Management System**

#### Technical Specifications
- **Cells**: 16S configuration
- **Voltage**: 3.0V - 4.2V per cell
- **Current**: 100A continuous
- **Balancing**: Active 2A per cell
- **Protection**: OVP, UVP, OCP, OTP
- **Communication**: CAN bus 500kbps

<details>
<summary><b>📸 View Design</b></summary>

| PCB Layout | Assembled BMS | Test Setup |
|------------|---------------|------------|
| ![PCB](images/bms/pcb-layout.png) | ![Assembly](images/bms/assembled.jpg) | ![Test](images/bms/testing.jpg) |

</details>

---

### GPS Tracker
<a name="gps-tracker"></a>

**📍 Real-Time Location Tracking System**

- **GPS Module**: Neo-6M
- **MCU**: Arduino Mega 2560
- **Accuracy**: 2.5m CEP
- **Update Rate**: 10Hz

---

### Camera Gimbal
<a name="camera-gimbal"></a>

**🎥 Two-Axis Gyro Stabilized System**

- **IMU**: MPU-6050
- **Control**: PID algorithm
- **Response**: < 10ms
- **Stability**: ±0.1°

---

## 🛠️ Development Setup

### Hardware Requirements
- STM32 Nucleo Development Board
- J-Link Debugger
- Logic Analyzer (Saleae recommended)
- Oscilloscope (100MHz minimum)

### Software Stack
```bash
# Clone the repository
git clone https://github.com/gunaraj123/projects.git
cd projects

# STM32 Development
sudo apt-get install gcc-arm-none-eabi openocd stlink-tools

# ESP32 Development
pip install esptool
export IDF_PATH=~/esp/esp-idf

# Build firmware
make -j8 all
```

---

## 📊 Project Statistics

| Metric | Value |
|--------|-------|
| **Lines of Code** | 50,000+ |
| **PCBs Designed** | 12 |
| **Devices Deployed** | 100+ |
| **Countries** | 3 |
| **Uptime** | 99.7% |
| **Patents Filed** | 1 |

---

## 🤝 Let's Connect!

I'm passionate about embedded systems and always excited to discuss new projects and opportunities.

<div align="center">

📧 **Email**: gunaraj91@gmail.com
🔗 **LinkedIn**: [/in/gunarajgajurel](https://www.linkedin.com/in/gunarajgajurel/)
📍 **Location**: El Cerrito, California, USA

**Open to opportunities in embedded systems, IoT, and firmware development!**

</div>

---

<div align="center">

### ⭐ Star this repository if you find it interesting!

*Last Updated: November 2025*

</div>