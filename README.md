# Norwich RNA Club Website

A simple, easy-to-update website for Norwich RNA Club hosted on GitHub Pages.

## How to Update the Website

### Adding a New Event/Seminar

1. Go to `data/conferences.yml`
2. Click the edit (pencil) icon on GitHub
3. Copy this template and paste it at the TOP of the `conferences:` list:

```yaml
  - title: "Your Event Title"
    speaker: "Dr. Speaker Name"
    affiliation: "University/Institute Name"
    date: "2025-01-15"
    time: "13:00 - 14:00"
    location: "Conference Centre, John Innes Centre"
    description: "Brief description of the talk..."
    image: "images/speakers/speaker-name.jpg"
    featured: true
```

4. Fill in the details
5. Commit the changes
6. The website will automatically update in ~1 minute

### Adding a New Team Member

1. Go to `data/team.yml`
2. Add a new entry:

```yaml
  - name: "Dr. New Member"
    title: "Position"
    affiliation: "Institute Name"
    image: "images/team/member-name.jpg"
```

### Adding Images

1. Go to the `images/` folder
2. Click "Add file" > "Upload files"
3. Upload your images to the appropriate folder:
   - `images/speakers/` - Speaker photos
   - `images/team/` - Team member photos
   - `images/backgrounds/` - Background images

### File Structure

```
├── index.html              # Homepage
├── events.html             # Events listing page
├── join.html               # Join us page
├── data/
│   ├── conferences.yml     # Event data (EDIT THIS!)
│   └── team.yml            # Team member data
├── images/
│   ├── logo.png            # Website logo
│   ├── speakers/           # Speaker photos
│   ├── team/               # Team photos
│   └── backgrounds/        # Background images
├── css/
│   └── style.css           # Stylesheet
└── .github/
    └── workflows/
        └── deploy.yml      # Auto-deploy workflow
```

## Setup GitHub Pages

1. Go to your repository Settings
2. Navigate to "Pages" in the sidebar
3. Under "Build and deployment", select:
   - Source: **GitHub Actions**
4. The site will deploy automatically on push to main

## Local Development

To test locally, use a simple HTTP server:

```bash
# Python 3
python -m http.server 8000

# Then open http://localhost:8000
```

## License

MIT License
