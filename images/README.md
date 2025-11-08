# Project Images

This directory contains images for all projects. Each subdirectory corresponds to a specific project.

## Image Guidelines

### Recommended Image Types
- **hero.jpg**: Main project image (1200x600px recommended)
- **pcb-layout.png**: PCB design view
- **3d-render.png**: 3D CAD rendering
- **schematic.png**: Circuit schematic
- **assembled.jpg**: Final assembled product
- **field-install.jpg**: Real-world deployment
- **prototype.jpg**: Development prototypes
- **testing.jpg**: Testing setup

### Image Specifications
- **Format**: JPG for photos, PNG for diagrams
- **Resolution**: 1200px width minimum
- **File Size**: < 2MB per image
- **Naming**: Use lowercase with hyphens

## Project Folders

- **hydromaster-3000/**: Three-phase pump controller
- **soil-sensor/**: NB-IoT soil monitoring system
- **dendrometer/**: Tree growth measurement device
- **surge-protection/**: Industrial surge protection
- **bms/**: 16-cell battery management system
- **gps-tracker/**: Real-time location tracker
- **gimbal/**: Camera stabilization system

## Adding New Images

1. Resize images appropriately
2. Optimize for web (compress if needed)
3. Use descriptive filenames
4. Update project documentation

## Image Optimization Tools

```bash
# Resize image
convert input.jpg -resize 1200x output.jpg

# Optimize JPG
jpegoptim --size=500k image.jpg

# Optimize PNG
optipng -o5 image.png
```