
INSERT INTO internships
(company, role, location, opportunity, eligibility,link,source,duration,mode)
VALUES
(
  'Microsoft',
  'Software Engineering Intern',
  'Bengaluru, Karnataka',
  'Internship',
  'Bachelor’s or Master’s degree in CS/Engineering/Related.Must have at least 1
  semester/term remaining following the completion of the internship',
  'https://apply.careers.microsoft.com/careers/job/1970393556625300',
  'LinkedIn',
  NULL,
  'On-site/Full-time'
);

INSERT INTO internships
(company, role, location, opportunity, eligibility, duration, age_range, link, source, mode)
VALUES
(
  'Google',
  'Data Center Technician Intern, 2026',
  'Singapore',
  'Internship',
  'Currently enrolled in Bachelor''s or Master''s in Computer Science, Electronics, Information Technology, or similar technical field',
  '10–12 weeks',
  NULL,
  'https://www.google.com/about/careers/applications/jobs/results/142445440841720518-data-center-technician-intern-2026',
  'Google Careers',
  'On-site '
);

INSERT INTO internships
(company, role, location, opportunity, eligibility, duration, age_range, link, source, mode)
VALUES
(
  'Amazon',
  'Project Manager Intern',
  'Berlin, DEU; Garbsen, NI, DEU; Munich, BY, DEU',
  'Internship',
  'Students graduating in 2027; Penultimate-year Bachelor''s or Master''s students in Engineering, Project Management, Business Management, or similar; Available for full-time internship (40 hours/week) for 3-6 months starting January–July 2026; Proficient in English (CEFR C1); Analytical skills, advanced Excel (formulas, pivot tables, macros)',
  '3-6 months',
  NULL,
  'https://www.amazon.jobs/en/jobs/2312312/project-manager-intern-europe-2026',
  'Amazon.jobs',
  'Full-time'
);

INSERT INTO events (
    organization,
    event_name,
    location,
    eligibility,
    date_time,
    description,
    link,
    source
)
VALUES (
    'AWS Skills Center Seattle & Seattle Public Library',
    'Technology Career Exploration Day – Resilience in the Age of AI',
    'Seattle Public Library – Central Library, 1000 4th Ave, Seattle, WA 98101, USA',
    'Open to the public',
    'January 15, 2026; 10:00 AM – Doors Open; 10:30 AM – 5:00 PM.',
    'Community-focused event to explore tech career pathways; Meet employers, receive resume feedback; Learn from expert speakers about thriving in an AI-driven world; Practical guidance and networking opportunities.
    Rohini Mettu, Solutions Architect, Senior Manager AWS; Aniekan Akpaffiong, Author, Technologist; Recruiters; Resume Review Specialists; Employer Showcase,
    Free event; Includes light lunch; Limited to 100 participants (register in advance)',
    'https://pulse.aws/survey/C8SKAN3U?p=0',
    'AWS Skills Center / Seattle Public Library'
);
