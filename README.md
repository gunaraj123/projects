# Embedded Systems Portfolio

> **Professional Portfolio of IoT and Embedded Systems Projects**
>
> Showcasing firmware development, hardware design, and full product lifecycle implementation

---

## 📊 Technical Stack

<table>
<tr>
<td width="25%" align="center">

### 🔧 Embedded
**C/C++** • **STM32L4** • **ESP32**
**FreeRTOS** • **ARM Cortex-M**
**Ultra-Low Power** • **Device Drivers**

</td>
<td width="25%" align="center">

### 🌐 Connectivity
**MQTT/MQTTs** • **LoRa** • **WiFi**
**NB-IoT** • **Cat-M** • **AWS IoT**
**I2C** • **SPI** • **UART**

</td>
<td width="25%" align="center">

### ⚡ Hardware
**PCB Design** • **Schematic Capture**
**Prototyping** • **Validation**
**3D CAD** • **Power Optimization**

</td>
<td width="25%" align="center">

### 🛠️ Development
**Linux** • **Git** • **Python**
**JTAG/SWD** • **Oscilloscope**
**Logic Analyzer** • **Power Profiler**

</td>
</tr>
</table>

---

## 🎯 Project Timeline

### 2023-2024: Industrial Control Systems
#### [HydroMaster 3000 - Three-Phase Pump Controller](#hydromaster-3000)
#### [Industrial Surge Protection Device](#surge-protection-device)

### 2021-2023: Ultra-Low Power IoT Sensors
#### [Soil Health Monitoring System](#soil-health-sensor)
#### [Precision Dendrometer](#dendrometer)

### 2018-2020: Embedded Systems Development
#### [Battery Management System (16-Cell)](#battery-management-system)
#### [GPS Location Tracker](#gps-tracker)
#### [Camera Stabilization Gimbal](#camera-gimbal)

---

## 📦 Featured Projects

### HydroMaster 3000 - Three-Phase Pump Controller
<a name="hydromaster-3000"></a>

**Field-Tested Industrial Pump Control System with Redundant Architecture**

<table>
<tr>
<td width="50%">

#### 🎯 Key Features
- **Dual ESP32** redundant architecture (v3)
- **Multi-Protocol Support**: WiFi, LoRa for long-range
- **MQTTs** secure cloud communication
- **Three-phase** motor control & protection
- **6-month field validation** completed
- **3 hardware iterations** (v1: single ESP32, v2: optimized, v3: dual ESP32)

</td>
<td width="50%">

#### 📊 Technical Specifications
- **MCU**: ESP32-WROOM-32 (dual in v3)
- **Connectivity**: WiFi 2.4GHz, LoRa 915MHz
- **Protocol**: MQTT over TLS 1.3
- **Power Input**: 380V three-phase
- **Protection**: Multi-stage surge protection
- **Enclosure**: IP65 rated

</td>
</tr>
</table>

#### Development Journey
- **Version 1**: Single ESP32 prototype - proof of concept
- **Version 2**: Enhanced single ESP32 with improved power management
- **Version 3**: Dual ESP32 with hot-standby redundancy and LoRa option

<details>
<summary><b>💻 Firmware Architecture</b></summary>

```c
// FreeRTOS task structure for pump control
typedef struct {
    esp32_primary_t   primary_mcu;
    esp32_backup_t    backup_mcu;
    lora_module_t     lora_comm;     // Long-range backup
    wifi_client_t     wifi_primary;  // Primary communication
    pump_control_t    motor_controller;
} hydromaster_system_t;

// Task priorities for real-time operation
#define MOTOR_CONTROL_PRIORITY    (configMAX_PRIORITIES - 1)
#define COMM_TASK_PRIORITY        (configMAX_PRIORITIES - 2)
#define MONITOR_TASK_PRIORITY     (configMAX_PRIORITIES - 3)
```

</details>

**Field Testing Results**
- ✅ 6 months continuous operation in test site
- ✅ Firmware stability validated
- ✅ Hardware reliability confirmed
- ✅ Communication protocols tested (WiFi + LoRa)

---

### Soil Health Monitoring System
<a name="soil-health-sensor"></a>

**Ultra-Low Power NB-IoT Agricultural Sensor - 4-5 Year Battery Life**

<table>
<tr>
<td width="50%">

#### 🔋 Power Optimization
- **MCU**: STM32L4 (Ultra-low power series)
- **Sleep Current**: < 100nA (deep sleep)
- **Battery Life**: 4-5 years (calculated)
- **Wake Interval**: Configurable (15min - 24hr)
- **Power Source**: 2x AA batteries

</td>
<td width="50%">

#### 📡 Technical Details
- **Connectivity**: Quectel BC95-G (NB-IoT)
- **Sensors**: Temperature, moisture, pH, NPK
- **Development**: 4-5 iterations
- **Power Profile**: Validated with oscilloscope
- **Data Protocol**: CoAP over DTLS

</td>
</tr>
</table>

#### Ultra-Low Power Implementation

<details>
<summary><b>⚡ Power Management Strategy</b></summary>

```c
// STM32L4 Ultra-low power implementation
void configure_ulp_mode(void) {
    // Shutdown unnecessary peripherals
    HAL_PWREx_DisableSRAM2ContentRetention();
    __HAL_RCC_GPIOB_CLK_DISABLE();
    __HAL_RCC_GPIOC_CLK_DISABLE();

    // Configure for < 100nA sleep current
    HAL_PWREx_EnableUltraLowPowerMode();

    // Stop mode 2 with RTC wake
    HAL_PWREx_EnterSTOP2Mode(PWR_STOPENTRY_WFI);
}

// Measured power consumption profile:
// Active mode: 5.2mA @ 3.3V (sensor reading)
// Transmission: 45mA @ 3.3V (NB-IoT TX)
// Deep sleep: < 100nA (validated)
```

</details>

**Development Iterations**
- **v1**: Proof of concept with STM32F4
- **v2**: Migrated to STM32L4 for power optimization
- **v3**: Sensor integration and calibration
- **v4**: NB-IoT optimization and field testing
- **v5**: Production-ready with 4-5 year battery life

---

### Industrial Surge Protection Device
<a name="surge-protection-device"></a>

**Three-Phase Surge Protection with Automatic Shutdown**

#### Protection Stages
1. **Primary**: Gas Discharge Tubes (GDT) - 20kA capacity
2. **Secondary**: Metal Oxide Varistors (MOV) - 6kV clamping
3. **Tertiary**: Transient Voltage Suppressors (TVS) - < 1ns response

---

### Dendrometer - Tree Growth Monitor
<a name="dendrometer"></a>

**Precision Growth Measurement with NB-IoT Telemetry**

- **Resolution**: 10 micrometers
- **Measurement Range**: ±10mm
- **Data Transmission**: Every 4 hours
- **Battery Life**: 2+ years

---

### Battery Management System
<a name="battery-management-system"></a>

**16-Cell Lithium Battery Management**

- **Configuration**: 16S (48V nominal)
- **Balancing**: Active 2A per cell
- **Protection**: OVP, UVP, OCP, OTP
- **Communication**: CAN bus
- **MCU**: ATmega2560

---

### GPS Tracker
<a name="gps-tracker"></a>

**Real-Time Location System**
- Neo-6M GPS module
- Arduino Mega 2560
- Serial data output
- 2.5m position accuracy

---

### Camera Gimbal
<a name="camera-gimbal"></a>

**Two-Axis Stabilization System**
- MPU-6050 IMU
- PID control algorithm
- < 10ms response time
- Servo-based actuation

---

## 🛠️ Development Tools & Methodologies

### Hardware Development
- **PCB Design**: Multi-layer board design and validation
- **Prototyping**: Iterative hardware development
- **Testing**: Environmental and electrical validation

### Firmware Development
- **RTOS**: FreeRTOS for real-time applications
- **Power Optimization**: Sub-microamp sleep modes
- **Communication**: MQTT, LoRa, NB-IoT implementations
- **Debugging**: JTAG/SWD with hardware breakpoints

### Validation & Testing
- **Field Testing**: 6+ months real-world validation
- **Power Profiling**: Oscilloscope-based current measurement
- **Environmental**: Temperature, humidity, vibration testing
- **Reliability**: Long-term stability testing

---

## 📊 Project Metrics

| Metric | Value |
|--------|-------|
| **Projects Completed** | 7+ |
| **Hardware Iterations** | 20+ |
| **Field Test Duration** | 6+ months |
| **Power Optimization** | < 100nA sleep |
| **Battery Life Achieved** | 4-5 years |
| **Communication Protocols** | 5+ |

---

## 📁 Repository Structure

```
├── README.md           # This file
├── docs/              # Detailed technical documentation
│   └── *.md          # Project-specific docs
├── images/           # Project images and diagrams
│   ├── hydromaster-3000/
│   ├── soil-sensor/
│   ├── dendrometer/
│   └── ...
└── LICENSE           # MIT License
```

---

## 🔧 Technologies Used

- **Microcontrollers**: STM32L4, ESP32, ATmega
- **RTOS**: FreeRTOS
- **Protocols**: MQTT/TLS, LoRa, NB-IoT, I2C, SPI, UART
- **Power**: Ultra-low power design (< 100nA sleep)
- **Tools**: Oscilloscope, Logic Analyzer, Power Profiler
- **Languages**: C, C++, Python

---

<div align="center">

### ⭐ Technical Portfolio - Embedded Systems & IoT

*Focused on ultra-low power design, reliable firmware, and production-ready hardware*

</div>