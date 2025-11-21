# Norwich RNA Club Website

A simple, easy-to-update website for Norwich RNA Club hosted on GitHub Pages.

## How to Update the Website

### Adding a New Event/Seminar

1. **Upload images first** (on GitHub):
   - Speaker photo → `images/speakers/firstname-lastname.jpg`
   - Event poster → `images/posters/YYYY-MM-DD.png` (using event date)

2. **Edit** `data/conferences.yml` on GitHub (click pencil icon)

3. **Copy this template** and paste at the TOP of the `conferences:` list:

```yaml
  - title: "Your Event Title"
    speaker: "Dr. Speaker Name"
    affiliation: "University/Institute Name"
    date: "2025-01-15"
    time: "13:00 - 14:00"
    location: "Conference Centre, John Innes Centre"
    description: "Brief description of the talk..."
    image: "images/speakers/firstname-lastname.jpg"
    poster: "images/posters/2025-01-15.png"
    abstract: "Full abstract text (optional)..."
    featured: true
```

4. **Commit** the changes
5. Website auto-updates in ~1 minute

### Adding a New Team Member

1. Upload photo to `images/team/`
2. Edit `data/team.yml`:

```yaml
  - name: "Dr. New Member"
    title: "Position"
    affiliation: "Institute Name"
    image: "images/team/member-name.jpg"
```

### Image Organization

```
images/
├── logo.png              # Website logo
├── speakers/             # Speaker headshots (firstname-lastname.jpg)
├── posters/              # Event posters (YYYY-MM-DD.png by date)
├── team/                 # Team member photos
└── backgrounds/          # Background/OG images
```

**Naming conventions:**
- Speakers: `firstname-lastname.jpg` (e.g., `junjie-guo.jpeg`)
- Posters: `YYYY-MM-DD.png` (e.g., `2024-08-12.png`)
- Team: `firstname-lastname.jpg`

### File Structure

```
├── index.html              # Homepage
├── events.html             # Events listing page
├── event.html              # Single event detail page
├── join.html               # Join us page
├── data/
│   ├── conferences.yml     # Event data (EDIT THIS!)
│   └── team.yml            # Team member data
├── images/
│   ├── speakers/           # Speaker photos
│   ├── posters/            # Event posters (named by date)
│   ├── team/               # Team photos
│   └── backgrounds/        # Background images
├── css/
│   └── style.css           # Stylesheet
└── .github/
    └── workflows/
        └── deploy.yml      # Auto-deploy workflow
```

## Setup GitHub Pages

1. Go to your repository **Settings**
2. Navigate to **Pages** in the sidebar
3. Under "Build and deployment", select:
   - Source: **GitHub Actions**
4. The site will deploy automatically on push to main

## Local Development

To test locally:

```bash
# Python 3
python -m http.server 8000

# Then open http://localhost:8000
```

## URL Structure

- Homepage: `/` or `/index.html`
- Events list: `/events.html`
- Single event: `/event.html?date=2024-08-12`
- Join page: `/join.html`

## License

MIT License
