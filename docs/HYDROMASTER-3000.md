# HydroMaster 3000 - Technical Documentation

## Project Overview

The HydroMaster 3000 is a three-phase industrial pump control system designed for reliable remote monitoring and control. The project underwent three major hardware iterations, culminating in a dual-ESP32 redundant architecture with multi-protocol communication support.

## Development History

### Version 1.0 - Initial Prototype
- **MCU**: Single ESP32-WROOM-32
- **Communication**: WiFi only
- **Status**: Proof of concept completed
- **Key Learning**: Need for redundancy and backup communication

### Version 2.0 - Enhanced Design
- **MCU**: Single ESP32 with optimized firmware
- **Improvements**: Better power management, watchdog implementation
- **Communication**: WiFi with improved error handling
- **Status**: Field testing revealed need for redundancy

### Version 3.0 - Production Design
- **MCU**: Dual ESP32 in hot-standby configuration
- **Communication**: WiFi primary, LoRa backup for long-range
- **Redundancy**: Automatic failover < 50ms
- **Status**: 6-month field validation completed successfully

## Technical Architecture

### Hardware Design

#### Dual MCU System (Version 3)
```
Primary ESP32 ←→ Backup ESP32
     ↓              ↓
   WiFi           LoRa
     ↓              ↓
  Cloud ←--------→ Gateway
```

#### Power Management
- Input: 380V Three-Phase AC
- Step-Down: 380V → 24V isolated
- Logic Power: 24V → 5V (3A) → 3.3V (1A)
- Backup: Capacitor bank for controlled shutdown

#### Communication Options
1. **WiFi** (Primary)
   - 2.4GHz 802.11 b/g/n
   - MQTTs with TLS 1.3
   - Range: Local network

2. **LoRa** (Backup/Long-range)
   - Frequency: 915MHz (US) / 868MHz (EU)
   - Range: Up to 10km line-of-sight
   - Data rate: Adaptive (0.3 - 50 kbps)

### Firmware Architecture

```c
// FreeRTOS task structure
typedef struct {
    TaskHandle_t motor_control_task;  // Priority: MAX
    TaskHandle_t comm_wifi_task;      // Priority: HIGH
    TaskHandle_t comm_lora_task;      // Priority: NORMAL
    TaskHandle_t monitor_task;        // Priority: NORMAL
    TaskHandle_t watchdog_task;       // Priority: HIGH
} system_tasks_t;

// Dual MCU synchronization
typedef enum {
    MCU_ROLE_PRIMARY,
    MCU_ROLE_BACKUP,
    MCU_ROLE_SWITCHING
} mcu_role_t;

// Communication fallback strategy
typedef enum {
    COMM_WIFI_ACTIVE,
    COMM_LORA_ACTIVE,
    COMM_BOTH_ACTIVE
} comm_mode_t;
```

### Protection Features

#### Electrical Protection
- **Surge Protection**: Multi-stage (GDT + MOV + TVS)
- **Overcurrent**: Electronic fuse with auto-reset
- **Phase Loss**: Detection and safe shutdown
- **Voltage Monitoring**: Under/over voltage protection

#### Firmware Protection
- **Watchdog**: Hardware and software watchdogs
- **Error Recovery**: Automatic restart with backoff
- **Data Integrity**: CRC checks on all communications
- **Secure Boot**: Firmware signature verification

## Field Testing Results

### Test Duration: 6 Months

#### Performance Metrics
- **Uptime**: 99.8% (excluding planned maintenance)
- **Failover Events**: 3 successful automatic failovers
- **Communication**:
  - WiFi availability: 95%
  - LoRa backup used: 5% of time
- **Power Consumption**: 3.2W average

#### Environmental Testing
- **Temperature Range**: -10°C to +55°C tested
- **Humidity**: 0-95% RH non-condensing
- **Vibration**: IEC 60068-2-6 compliance
- **Enclosure**: IP65 rated, dust and water resistant

## Communication Protocol

### MQTT Topics Structure
```
devices/{device_id}/status      # Device status updates
devices/{device_id}/telemetry   # Sensor data
devices/{device_id}/command     # Control commands
devices/{device_id}/config      # Configuration updates
```

### Message Format
```json
{
    "timestamp": 1234567890,
    "device_id": "HM3000_001",
    "mcu_role": "primary",
    "data": {
        "phase_voltages": [380, 381, 379],
        "phase_currents": [12.5, 12.3, 12.6],
        "motor_rpm": 1450,
        "temperature": 35.2
    }
}
```

## PCB Design Specifications

### Version 3 PCB
- **Layers**: 4-layer FR4
- **Dimensions**: 150mm x 100mm
- **Copper Weight**: 1oz outer, 0.5oz inner
- **Minimum Trace**: 0.2mm
- **Minimum Via**: 0.3mm drill
- **Impedance Control**: 50Ω for high-speed signals

### Component Placement
- Power section isolated from logic
- High-voltage clearance: 3mm minimum
- Thermal management: Dedicated copper pours
- EMC considerations: Ground plane, shielding

## Lessons Learned

### Hardware Evolution
1. **v1 → v2**: Added better power filtering, improved PCB layout
2. **v2 → v3**: Implemented dual MCU for redundancy, added LoRa

### Firmware Improvements
- Implemented comprehensive error handling
- Added remote firmware update capability
- Optimized task priorities for real-time response
- Developed robust communication fallback mechanism

### Field Deployment Insights
- LoRa proved valuable for sites with poor WiFi
- Redundancy prevented 3 potential system failures
- Remote monitoring reduced maintenance visits by 60%

## Future Enhancements

### Planned for Next Version
- [ ] Edge computing capabilities
- [ ] Predictive maintenance algorithms
- [ ] Energy consumption optimization
- [ ] Modbus TCP/IP support
- [ ] Web-based local configuration interface

## Testing Procedures

### Production Testing
1. Power supply validation
2. Communication range testing (WiFi and LoRa)
3. Surge protection verification
4. 24-hour burn-in test
5. Firmware functionality validation

### Field Validation Protocol
1. Installation verification
2. Communication link establishment
3. Motor control calibration
4. 7-day monitoring period
5. Performance metrics collection

---

## Technical Support

For technical documentation and queries about this project, please refer to the repository documentation.