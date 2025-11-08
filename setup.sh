#!/bin/bash

# Setup script for GitHub Projects Portfolio
# This creates placeholder files for images and prepares the repository

echo "🚀 Setting up GitHub Projects Portfolio..."

# Create placeholder files for each project
projects=("hydromaster-3000" "soil-sensor" "dendrometer" "surge-protection" "bms" "gps-tracker" "gimbal")

for project in "${projects[@]}"; do
    echo "📁 Setting up $project..."

    # Copy upload guide to each folder
    cp images/hydromaster-3000/UPLOAD_GUIDE.md "images/$project/" 2>/dev/null || \
    cat > "images/$project/UPLOAD_GUIDE.md" << EOF
# $project - Image Upload Guide

Please add the following images:
1. hero.jpg - Main product image
2. pcb-layout.png - PCB design
3. 3d-render.png - 3D CAD view
4. assembled.jpg - Final assembly
5. testing.jpg - Testing setup

Place your images in this folder.
EOF

    # Create a placeholder text file
    echo "Images for $project will be placed here" > "images/$project/README.txt"
done

echo "✅ Folder structure created"

# Create a sample contributing guide
cat > CONTRIBUTING.md << 'EOF'
# Contributing to This Portfolio

## Adding New Projects

1. Create a new folder in `images/project-name/`
2. Add project images following the naming convention
3. Update the main README.md with project details
4. Create documentation in `docs/PROJECT-NAME.md`

## Image Requirements

- High resolution (min 1200px width)
- Professional quality
- Consistent style across projects
- Optimized for web

## Commit Messages

Use conventional commits:
- `feat:` New project or feature
- `docs:` Documentation updates
- `fix:` Corrections or fixes
- `style:` Formatting changes
- `chore:` Maintenance tasks

Example: `feat: Add soil sensor project documentation`
EOF

echo "📝 Contributing guide created"

# Create a LICENSE file
cat > LICENSE << 'EOF'
MIT License

Copyright (c) 2025 Guna Raj Gajurel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

echo "📄 License file created"

echo ""
echo "✨ Setup complete! Next steps:"
echo "1. Add your project images to the respective folders"
echo "2. Update image paths in README.md"
echo "3. Commit your changes"
echo "4. Push to GitHub"
echo ""
echo "To push to GitHub:"
echo "  git remote add origin https://github.com/gunaraj123/projects.git"
echo "  git push -u origin main"