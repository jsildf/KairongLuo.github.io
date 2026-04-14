# GitHub Pages Deployment Guide

## Quick Deployment (5 minutes)

### Step 1: Create GitHub Account
If you don't have a GitHub account, go to [https://github.com](https://github.com) and sign up.

### Step 2: Create New Repository
1. Log in to GitHub
2. Click the **"+"** button (top right) → **"New repository"**
3. Fill in:
   - **Repository name**: `yourusername.github.io` (replace "yourusername" with your actual GitHub username)
   - **Description**: "Personal portfolio website"
   - **Public** (required for GitHub Pages)
   - **Add a README file**: Yes (optional)
4. Click **"Create repository"**

### Step 3: Upload Your Files

**Option A: Using GitHub Web Interface (Easiest)**

1. In your new repository, click **"Add file"** → **"Upload files"**
2. Drag and drop ALL contents from `personal_portfolio` folder
   - Do NOT upload the folder itself, upload the CONTENTS inside
3. Files should include:
   - `_config.yml`
   - `_layouts/default.html`
   - `index.md`
   - `about.md`
   - `skills.md`
   - `projects.md`
   - `resume.md`
   - `contact.md`
   - `assets/css/style.css`
   - `README.md`
4. Click **"Commit changes"**

**Option B: Using Git Command Line**

```bash
# Navigate to your portfolio folder
cd "c:\Users\lkr00000\Downloads\personal_portfolio"

# Initialize git repository
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit - Personal portfolio website"

# Add remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_USERNAME.github.io.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 4: Wait for Deployment
1. Go to your repository **Settings**
2. Scroll down to **"GitHub Pages"** section
3. Under **"Source"**, select **"Deploy from a branch"**
4. Under **"Branch"**, select **"main"** and **"/ (root)"**
5. Click **"Save"**
6. Wait 2-5 minutes for deployment

### Step 5: Access Your Website
Your website will be live at: `https://YOUR_USERNAME.github.io`

---

## Customization Before Deployment

### 1. Update _config.yml
Open `_config.yml` and update:
```yaml
title: "Your Name - Data Analyst"
description: "Personal portfolio showcasing data science and ML projects"
url: ""
baseurl: ""
github:
  name: yourusername
  url: "https://github.com/yourusername"
```

### 2. Update Contact Information
Edit `contact.md`:
```markdown
Email: your.email@example.com
LinkedIn: https://linkedin.com/in/yourprofile
GitHub: https://github.com/yourusername
```

### 3. Add Resume PDF
1. Create folder: `assets/files/`
2. Place your resume PDF there
3. Or update the link in `resume.md` to point to your Google Drive

---

## Troubleshooting

### Website shows 404 error
- Wait 5-10 minutes for first deployment
- Check that repository is set to **Public**
- Verify GitHub Pages is enabled in Settings

### CSS not loading
- Make sure `assets/css/style.css` is uploaded
- Check file paths in your markdown files

### Images not showing
- Place images in `assets/images/` folder
- Use correct path: `{{ '/assets/images/your-image.jpg' | relative_url }}`

---

## Next Steps After Deployment
1. **Customize content**: Update all placeholder text with your real information
2. **Add projects**: Update `projects.md` with your actual project details
3. **Update skills**: Modify `skills.md` to match your true skill levels
4. **Enable HTTPS**: GitHub Pages provides free HTTPS automatically

## Need Help?
- GitHub Pages Docs: https://docs.github.com/en/pages
- Jekyll Documentation: https://jekyllrb.com/docs/
