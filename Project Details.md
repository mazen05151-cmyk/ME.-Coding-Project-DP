# ME. ( Mazen and Eyad's project)
 -For portfolio

## Project's details:-
## The platform's name: "Not decided."
# Introduction & Context
The project is to design and develop a mobile centric Volunteering Platform that connects people who need help (Service Requesters) with
volunteers willing to provide support, based on proximity and areas of expertise. The solution will manage the full lifecycle: registration, request
creation, matching, acceptance, real time tracking, feedback, loyalty points, and rewards redemption.
The platform will consist of mobile apps and web portals for Service Requesters and Volunteers, plus an Admin app and a comprehensive web
based Admin Panel for operations, monitoring, and configuration.
# Project Overview
The proposed Volunteering App is a digital platform designed to manage and streamline the volunteering process between service seekers and
volunteers, based on geographical proximity, availability, and service category.
The platform enables individuals in need of assistance to submit service requests, while registered volunteers (individuals/Corporates) receive
nearby requests and can accept missions, communicate securely, perform the service, and earn loyalty points and achievement badges based on
their volunteering activity.
The system promotes community engagement, social responsibility, and structured volunteer recognition through rankings, annual awards, and a
loyalty redemption program.
 # Target Users and Personas
### 1- Service Requester (User needing help)
• Individuals Requesting Assistance (E.g., Tutoring A Child, Fixing An Electric Device, Simple Home Support, Elderly Assistance).
• Can Create Requests, Select Categories, Set Location, Schedule, And Communicate With Matched Volunteers.
### 2- Volunteer:
• Individuals offering time and skills to help others, from the public or from petroleum companies’ staff.
• Receive nearby requests, review details, accept/reject tasks, perform the service, and earn loyalty points and badges.
### 3- Verified Petroleum Company Volunteer:
• Volunteers whose profiles are fast tracked and auto approved based on affiliation with partner petroleum companies.
• May have special badges or tags, and can be prioritized in matching or leaderboards.
### 4- External Volunteer (Non petroleum):
• Volunteers from the general public; profile approval passes through additional verification workflow (ID, references, manual review).
### 5- Admin (Super Admin / Operations Team)
• Manages user accounts, verification workflows, requests, matching rules, loyalty rules, partner rewards, and content (FAQ, categories).
• Monitors KPIs, generates reports, and resolves disputes.

# System Components
The project consists of four integrated systems:
### 1. Mobile App & Web Platform – Service Seeker
### 2. Mobile App & Web Platform – Volunteer
### 3. Admin Mobile App
### 4. Web-Based Admin Control Panel (Dashboard)
# High-Level Features
### Core Functional Features
• Multichannel Access: Mobile Apps (Android & Ios Via Flutter) And Responsive Web Portals (React) For Requesters And Volunteers.
• Location Based Matching: Nearby Requests To Volunteers Based On Gps And Configurable Radius.
• Real Time Notifications: Push Notifications And In App Alerts For New Requests, Acceptance, Status Updates.
• Task Lifecycle Management: Creation, Assignment, Acceptance, In Progress, Completed, Cancelled.
• In App Communication: Secure Chat Between Requester And Volunteer To Coordinate Details (Optionally With Call Masking Or VOIP Later).
• Real Time Tracking (Basic): Location Tracking During Task Execution, With Start / End Timestamps And Route Log Baseline.
• Rating & Reviews: Requesters Can Rate Volunteers, Leave Feedback; Ratings Feed Into Profile Score And Badge Progression.
• Loyalty Points Engine: Volunteers Earn Points Per Completed Task And Can Redeem From Partner Catalog.
• Badges & Levels: Gamified System (E.g., Beginner, Advanced, Dedicated, Champion) Based On Completed Requests And Ratings.
• Leaderboards: Top Volunteers By Points, Number Of Tasks, Or Rating, With Yearly Recognition.
• Verification Workflows: Separate Flows For Petroleum Staff Vs. External Volunteers, Configurable Rules And Manual Approval Queue.
• Partner Catalog: List Of Partners And Rewards That Volunteers Can Redeem Using Their Points (Vouchers, Discounts, Gifts).
### Core Functional Features
• Scalable architecture using Laravel + PostgreSQL backend and Flutter/React frontend.
• Secure authentication and authorization with role based access control.
• GDPR aware data handling and local data privacy best practices (opt in, clear consent, data retention policies).
• High availability and resilience (backup, monitoring, basic DR strategy).
• Multi language support (initially English + Arabic capability in UI).

# Target Audience & Scale
• Pilot Phase: ~1,000,000 Users
• Full Rollout: Up To ~50,000,000 Students
# Detailed Functional Scope
### 1- Service Seeker Application (Mobile & Web)
#### Key Features::
• User registration & login
• Profile management
• Location-based service request submission
• Category & service type selection
• Real-time notifications
• In-app chat with volunteer
• Live service tracking
• Service completion confirmation
• Volunteer rating & feedback
• Request history
#### Journey:
1. User registers/logs in
2. Completes profile and location
3. Submits a service request
4. Nearby volunteers are notified
5. Volunteer accepts the request
6. User receives acceptance notification
7. In-app communication starts
8. Live tracking during service execution
9. Service is completed
10.User rates the volunteer
### - Volunteer Application (Mobile & Web)
#### Key Features::
• Volunteer registration & login
• Profile verification workflow
• Location-based request reception
• Request acceptance/rejection
• In-app chat
• Task status management
• Loyalty points system
• Badge & level system
• Volunteer ranking leaderboard
• Loyalty points redemption
• Volunteer history & performance analytics
#### Verification Logic:
• Oil Company Volunteers:
o Auto-approved upon registration (based on company domain / ID)
• External Volunteers:
o Manual or semi-automated verification:
*National ID upload
*Background questionnaire
*Admin approval
#### Volunteer Levels & Badges:
• Beginner Volunteer
• Advanced Volunteer
• Dedicated Volunteer
• Elite Volunteer
#### Badges are awarded based on:
• Number of completed services
• Ratings
• Consistency & Reliability
# Detailed User Journeys & Flows
## -- Service Requester Journey
### 1. Registration & Onboarding
• Sign Up Via Email, Mobile Number, Or Social Login (Optional).
• Verify Mobile Via Otp, Accept Terms & Conditions, And Select Preferred Language.
### 2. Profile Setup
• Basic Info: Name, Contact, City, Geolocation Permissions.
• Optional Fields: Interests, Typical Assistance Categories, Preferred Contact Method.
### 3. Create a Service Request
• Choose category (e.g., “Educational Support”, “Home Maintenance”, “Elderly Care”).
• Enter description (e.g., “Need volunteer to explain math to my son”), attach optional photos/documents.
• Set time window (date & time), duration estimate.
• Select location: current GPS or manual address.
• Submit the request.
### 4. Matching & Volunteer Acceptance
• System Broadcasts Request To Nearby Volunteers Matching Category And Availability.
• When A Volunteer Accepts, Requester Receives Push Notification With Volunteer Profile Snippet (Name, Rating, Badges).
### 5. Service Execution & Tracking
• Requester can see volunteer’s live status (on-the-way, arrived, in-progress).
• Requester can chat with volunteer to confirm details.
### 6. Completion & Rating
• After Volunteer Marks Task As “Completed”, Requester Confirms Completion Or Raises Issue.
• Requester Rates Volunteer (E.g., 1–5 Stars) And Optionally Writes A Review.
• System Finalizes Task And Updates Volunteer’s Points And Badges.




# Detailed User Journeys & Flows
## -- Volunteer Journey (Petroleum Staﬀ & External)
### 1. Registration & Onboarding
• Sign Up Via Mobile/Email.
• Select “Petroleum Company Employee” Or “External Volunteer”:
> Petroleum: Provide Corporate Email/Employee Id; System Auto Approves Or Flags For Quick Verification Through Partner Integration Or Admin Approval.
> External: Provide National ID, Optionally References Or Linkedin; Profile Goes Into Manual Verification Queue.
### 2. Profile Setup
• Skills & Categories Selected (E.g., Teaching, Basic Electrical Maintenance).
• Preferred Operating Radius, Availability Schedule (Weekdays/Weekends, Time Of Day).
### 3. Browse & Receive Requests
• Dashboard Of Nearby Open Requests Within Radius And Matching Categories.
• Push Notifications For New Matching Requests.
### 4. Accepting a Request
• Review Request Details, Distance, Timing, And Requester Rating (If Applicable).
• Accept Or Decline. On Acceptance, Task Moves To “Assigned” Status.
### 5. Executing the Task
• Navigate to requester location via integrated maps link.
• Start task (start tracking), update status (On the way → Arrived → In progress → Completed).
### 6. Earning Points & Badges
• Upon confirmed completion, volunteer receives points based on category, duration, and rating.
• System checks thresholds to assign or upgrade badges (Beginner → Intermediate → Advanced → Devoted, etc.).
### 7. Redeeming Rewards
• Volunteer opens “Rewards / Loyalty” section.
• Views current points, available rewards from partner list, and redemption rules.
• Selects reward; system sends voucher code / QR / confirmation email; points are deducted
# Detailed User Journeys & Flows
# -- Admin Journey
### 1. Admin Login & Access Control
• Secure Login.
• Roles: Super Admin, Operations, Support, Reporting/Analytics.
### 2. User & Volunteer Management
• View, Search, Filter Requesters And Volunteers.
• Approve / Reject Volunteer Profiles, Especially External Volunteers.
• Suspend / Reactivate Accounts, Manage Flags And Complaints.
### 3. Requests & Operations
• Monitor Live And Historical Requests.
• Reassign Tasks If Necessary, Manually Match Volunteers
To High Priority Cases.
• Manage Categories And Service Types.
### 4. Loyalty & Rewards Configuration
• Define Points Rules Per Category, Duration, Rating.
• Configure Badges Thresholds And Naming.
• Create And Manage Partner Offers
(Reward Items, Stock, Validity Dates).
### 5. Reporting & Analytics
• Dashboards:
Number Of Registered Volunteers, Number Of Requests,
Completion Rate, Average Response Time, Top Volunteers, Most
Active Areas.
• Export Data To Csv / Excel For Management.
# Loyalty & Rewards System
• Points earned after each completed service
• Points calculation based on:
o Servic complexity
o Duration
o User rating
• Badge milestones
• Leaderboard of top volunteers
• Annual volunteer recognition
• Loyalty points redemption via:
o Listed partner companies
o Gift vouchers
o Services or discounts
# Technical Architecture & Stack
## Overall Architecture
### Backend API Layer:
• PHP Laravel as main backend framework.
• RESTful APIs for mobile and web clients.
• Queues for notifications, background jobs, and heavy
processing.
### Database Layer:
• PostgreSQL as primary relational database with properly
normalized schema, indexes, and constraints.
• Separate tables for users, volunteers, requests,
assignments, tracking logs, ratings, points, badges,
partners, and rewards.
### Frontend Web Layer:
• React.js for Requester and Volunteer web portals and
Admin web panel.
• Component based, responsive UI, integrated with backend
via secured APIs (JWT / OAuth2).
### Mobile Layer:
• Flutter cross platform app (Android & iOS) for Requesters
and Volunteers (could be single app with different roles or
two separate apps).
• Uses backend APIs for authentication, requests
management, tracking, loyalty, and messaging.
### Location Services & Mapping:
• Integration with Google Maps / Apple Maps SDK for
geolocation, route display, and nearby matching.ment,
tracking, loyalty, and messaging.
### Notifications:
• Push notifications via Firebase Cloud Messaging (for
Android and iOS).
• Email/SMS integration for OTP, critical alerts (optional).
### Security & Compliance:
• Encrypted communication via HTTPS/TLS.
• Hashed passwords, secure token management.
• Audit logs for sensitive operations.
### Infrastructure (indicative):
• Linux-based cloud hosting (AWS / Azure / local provider).
• Staging and production environments.
• Automated backups and monitoring.
# Detailed Modules & Screens
Below is a screen list per persona (mobile + web). You can convert
this into wireframes or a screen matrix.

## Service Requester – Mobile / Web
• Splash & Language Selection
• Onboarding Walkthrough (Optional)
• Login / Register / Forgot Password
• Otp Verification
• Home / Dashboard (Summary Of Active &
Past Requests, Quick “New Request” Button)
• Create Request:
• Select Category
• Describe Request (Title, Description, Attachments)
• Location Selection (Map + Address)
• Preferred Time & Date
• Confirmation Screen
• Requests List:
• Active Requests
• Completed Requests
• Cancelled Requests
• Request Details:
• Status timeline
• Assigned volunteer profile card
• Chat screen
• Map view & tracking
• Notifications Center
• Volunteer Profile View (ratings, badges, completed tasks)
• Rating & Feedback Screen
• Profile & Settings:
• Personal info
• Address(es)
• Language
• Privacy & notifications settings
## Volunteer – Mobile / Web
• Splash & Language Selection
• Login / Register / Forgot Password
• Select Volunteer Type (Petroleum / External)
• Verification Flow Screens:
• Petroleum: corporate email / employee ID, confirmation status
• External: ID upload, references, approval status
• Volunteer Dashboard:
• Today’s tasks
• Available nearby requests
• Points balance and badges summary
• Available Requests List & Filters (category, distance, time)
• Request Details Screen (with distance, time, requester info, map)
• Accept / Decline Request
• Active Task Screen:
• Status steps (On the way, Arrived, In progress, Completed)
• Start/End buttons
• Tracking status (if enabled)
• Chat with Requester
• Points & Badges Screen:
• Current level
• History of earned points
• Progress to next badge
• Rewards Catalog (partner offers, points required, redemption)
• Redemption Confirmation & History
• Profile & Settings:
• Skills & categories
• Availability schedule
• Operating radius
• Verification status

# Admin Web Dashboard
## Features:
• Full User Management
• Request & Service Monitoring
• Volunteer Verification Management
• Loyalty Points & Badges Management
• Partner & Redemption Management
• Analytics & Reporting
• Content & Category Management
• Role & Permission Control
• Database Management
• System Configuration
# User Flow Summary (High-Level)
1. Registration (Service Seeker / Volunteer)
2. Profile completion
3. Verification (if applicable)
4. Service request creation
5. Request broadcast to nearby volunteers
6. Volunteer acceptance
7. Notification & communication
8. Service execution & tracking
9. Completion confirmation
10. Rating, points & badge allocation
11. Reporting & analytics

# Technical Stack (Detailed)
## Backend
• PHP – Laravel Framework
• RESTful API architecture
• Role-based access control
• Secure authentication (JWT)
• Notification services
• Loyalty & gamification engine
• Admin & mobile API layers
## Frontend (Web)
• React.js
• Responsive UI
• Progressive Web App (PWA) readiness
• Admin dashboard UI
• Real-time updates integration
## Mobile Applications
• Flutter
• Single codebase for iOS & Android
• Native performance
• Push notifications
• Location services
• Offline handling for basic actions
## Database
• PostgreSQL
• Structured relational schema
• High performance & scalability
• Data integrity & security
## Additional Integrations
•Google Maps / Location APIs
• Push notification services (Firebase)
• Secure file storage
• Analytics tools
• Email & SMS gateways

# Security & Compliance
• Encrypted data storage
• Secure authentication
• Role-based access
• Activity logging
• GDPR-ready architecture
• Secure file handling
• Fraud & misuse monitoring



# Wireframe Flow Diagrams (Step-by-Step Logic)
Below is visual logic described in flow format, suitable for conversion into diagrams.
# Service Request Flow
User Registration
↓
Profile Setup
↓
Create Service Request
↓
System Identifies Nearby Volunteers
↓
Request Broadcast
↓
Volunteer Accepts
↓
Notification to User
↓
Chat & Live Tracking
↓
Service Completion
↓
User Rating
↓
Service Closed
# Volunteer Flow
Volunteer Registration
↓
Auto / Manual Verification
↓
Dashboard Access
↓
Receive Nearby Requests
↓
Accept Request
↓
Navigate to User
↓
Provide Service
↓
Mark as Completed
↓
Receive Points & Badges
↓
Leaderboard Update
# Loyalty & Rewards Flow
Service Completed
↓
Points Calculation Engine
↓
Badge Evaluation
↓
Volunteer Level Update
↓
Leaderboard Ranking
↓
Optional Reward Redemption

# Admin Control Flow
Admin Login
↓
Monitor Live Requests
↓
Approve Volunteers
↓
Manage Loyalty Rules
↓
Generate Reports
↓
Annual Volunteer Recognition
