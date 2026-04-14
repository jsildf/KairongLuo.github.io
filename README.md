# Personal Portfolio Website

A professional job-seeking personal website built with GitHub Pages and Jekyll.

## Quick Start

### Option 1: Use as GitHub Pages Template

1. Click the **"Use this template"** button on this repository
2. Name your new repository `yourusername.github.io`
3. Clone your new repository locally
4. Update `_config.yml` with your information
5. Update the content in each `.md` file
6. Push your changes

Your site will be available at `https://yourusername.github.io`

### Option 2: Local Development

1. Clone this repository
2. Install Jekyll: `gem install jekyll bundler`
3. Install dependencies: `bundle install`
4. Run locally: `bundle exec jekyll serve`
5. Open `http://localhost:4000`

## Site Structure

```
├── _config.yml          # Site configuration
├── _layouts/
│   └── default.html     # Main page template
├── assets/
│   └── css/
│       └── style.css    # Custom styles
├── index.md             # Home page
├── about.md             # About Me page
├── skills.md            # Skills page
├── projects.md          # Projects page
├── resume.md            # Resume page
└── contact.md          # Contact page
```

## Required Sections

Your website must include these 6 sections:

1. **Home** - Positioning statement + key skills
2. **About Me** - Self-introduction + education + strengths
3. **Skills** - Technical + business skills + tools
4. **Projects** - At least 2 projects with Problem/Data/Approach/Outcome
5. **Resume** - Downloadable resume link
6. **Contact** - Email (required) + LinkedIn/GitHub (optional)

## Customization

### Update Personal Information

1. Open `_config.yml` - Update site title, description, navigation
2. Open `index.md` - Update your positioning statement and featured projects
3. Open `about.md` - Update your bio, education, and strengths
4. Open `skills.md` - Update your technical and business skills
5. Open `projects.md` - Update project details with your own work
6. Open `resume.md` - Add your experience and downloadable resume link
7. Open `contact.md` - Update your contact information

### Add Resume PDF

Place your resume PDF in `assets/files/resume.pdf` or update the link to your Google Drive.

## Deployment

This site is configured for automatic deployment via GitHub Pages.

Simply push to your `main` branch and GitHub will automatically build and publish your site.

## Technologies Used

- **Jekyll** - Static site generator
- **GitHub Pages** - Free hosting
- **HTML/CSS** - Styling
- **Markdown** - Content
- **Kramdown** - Markdown processor

## License

Feel free to use this template for your own portfolio!
