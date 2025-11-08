# 🚀 Push to GitHub Instructions

## Prerequisites

1. **Create the GitHub repository first**:
   - Go to https://github.com/new
   - Repository name: `projects`
   - Description: "Embedded Systems Portfolio - Production-Ready IoT & Firmware Projects"
   - Keep it **PUBLIC** (so recruiters can see it!)
   - Do NOT initialize with README (we already have one)
   - Click "Create repository"

## Push Commands

After creating the repository on GitHub, run these commands:

```bash
# Navigate to the project folder
cd "/Users/gunarajgajurel/Documents/Personnel Resume Builder/github-projects"

# Push to GitHub
git push -u origin main
```

If you get an authentication error, you may need to:

### Option 1: Using Personal Access Token (Recommended)
1. Go to https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Give it a name like "projects-push"
4. Select scopes: `repo` (all)
5. Generate token and copy it
6. When prompted for password, use this token instead

### Option 2: Using SSH
```bash
# Check if you have SSH keys
ls -la ~/.ssh

# If not, generate one
ssh-keygen -t ed25519 -C "gunaraj91@gmail.com"

# Add to GitHub
cat ~/.ssh/id_ed25519.pub
# Copy this and add to https://github.com/settings/keys

# Update remote to use SSH
git remote set-url origin git@github.com:gunaraj123/projects.git

# Push
git push -u origin main
```

## After Pushing

1. **Update your resume** with the GitHub link:
   - Edit `resume.md` in the main resume builder
   - Add `"github": "gunaraj123"` to your contact info
   - Add `"repoUrl": "https://github.com/gunaraj123/projects"` to relevant projects

2. **Add project images**:
   - Take photos of your devices
   - Export PCB 3D views from your CAD software
   - Add them to respective folders
   - Commit and push: `git add -A && git commit -m "feat: Add project images" && git push`

3. **Share the link**:
   - LinkedIn: Update your profile with the GitHub link
   - Resume: The link will appear as github.com/gunaraj123
   - Email signature: Add the projects link

## Viewing Your Portfolio

Once pushed, your portfolio will be visible at:
**https://github.com/gunaraj123/projects**

The README will be automatically displayed with:
- Beautiful formatting
- Project timeline
- Technical details
- Professional presentation

## Quick Update Commands

For future updates:
```bash
# Add new images or changes
git add -A
git commit -m "feat: Add [description]"
git push

# Pull any changes
git pull origin main
```

## Tips for Success

1. **Add real images ASAP** - Makes a huge difference
2. **Keep updating** - Add new projects as you complete them
3. **Star your own repo** - Shows activity
4. **Add topics** - Go to Settings > Topics, add: embedded-systems, iot, firmware, stm32, esp32
5. **Pin the repository** - Go to your profile, pin this repo

---

**Need help?** The repository is set up and ready. Just create it on GitHub and push!