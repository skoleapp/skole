# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.9.2] - 2020-08-06

### Changed

- Use rolling backend updates for QA also.

## [0.9.1] - 2020-08-06
## [0.9.1-rc.3] - 2020-08-06
## [0.9.1-rc.2] - 2020-08-06
## [0.9.1-rc.1] - 2020-08-06

### Fixed

- Fix AWS task definition issues.
- Fix CircleCI pipeline errors.

## [0.9.0] - 2020-08-06

### Changed

- Deploy frontend as static files.
- Change Cloudmersive PDF converting to the backend.
- Simplify QA/prod env variables.

## [0.8.1] - 2020-08-03

### Added

- Add custom login for existing users.
- Add custom offline page.

### Changed

- Transform frontend into completely serverless.

### Fixed

- Fix authentication issues causing redirects.

## [0.8.0] - 2020-08-03

### Added

- Add new Bachelor rank between Mentor and Master.

### Changed

- Increase the amount of needed score for ranks Master and up.

### Fixed

- Make admin and frontend authentications not clash with each other,
  thus making it possible to use them simultaneously

## [0.7.1] - 2020-08-02

### Fixed

- Fix port issue which prevented frontend from starting at all.

## [0.7.0] - 2020-07-31

### Added

- Add small resistance animation to swipeable views.
- Add get started page.
- Add logout page.
- Add confirm logout page when an authenticated user tries to access login/register pages.
- Add profile strength indicator to user profile.

### Changed

- Change all tabs to swipeable.
- Change course page and create course pages so that course now supports multiple subjects.

### Fixed

- Fix sharing comments.
- Fix locale typos.

## [0.6.2] - 2020-07-13

### Changed

- Added swipeable views for all tabs.
- Improve about page and add link to feedback.

### Fixed

- Fix bug of displaying error after cancelling share.
- Fix loading icon lagginess.
- Fix bug of being able to see edit profile and starred item buttons on other user's profiles.
- Fixed authentication on all public setting pages.

## [0.6.1] - 2020-07-12

### Fixed

- Fix bug of displaying PDF viewer screenshot at incorrect size/cutting out areas.
- Fix bug of not centering horizontal scroll wheen zooming in/out on PDF viewer.
- Fix bug of not displaying correct cursor on PDF viewer when holding down CTRL key.
- Potentially fix CORS error related to printing PDF file.

## [0.6.0] - 2020-07-10

### Added

- Add activity feed that shows notifications for comment replies, course and resource comments.

### Fixed

- Fix bug that prevented user from being actually logged out.
- Fix bug that occasionally prevented user from logging in and setting client-side cookies.

## [0.5.0] - 2020-07-07

### Fixed

- Fix authentication bug that led redirecting to login screen randomly.
- Fix miscellaneous spelling errors and translations.
- Fix bug of displaying duplicate comments in comment sections.

### Added

- Add attachment name to attachment viewer toolbar.
- Add draw mode to PDF viewer that allows user to take screenshots from document.

### Changed

- Make complete re-implementation to PDF viewer, show all pages at once as a scrollable document.
- Update designs by using fewer different fonts, add different shades of theme colors, update modal designs.

## [0.4.10] - 2020-05-18

### Fixed

- Fix contact form email sending.

## [0.4.9] - 2020-05-18

### Fixed

- Fix user agent matching to fix layout prediction.

## [0.4.9-rc.1] - 2020-05-16

### Fixed

- Potentially fix authentication issues.

## [0.4.8] - 2020-05-11

### Added

- Add FAQ page.
- Add monorepo scripts for frontend lint and type-check.

### Changed

- Disable votes, stars and comments for unverified users in frontend.
- Improve error message upon unsuccessful registration email.
- Don't show error when sharing menu is dismissed.
- Updated landing page design.
- Changed all frontend dependencies to strict versions.

### Fixed

- Fix typo in account verification.
- Fix persisting notification after page changes.
- Fix links from school detail.
- Fix auto complete fields with empty content.
- Fix search bar clearing on mobile when blurred.
- Fixed GraphQL code generation config.

## [0.4.7] - 2020-05-04

### Changed

- Backend AWS SES changes.

## [0.4.6] - 2020-05-04

### Changed

- Small AWS changes.

## [0.4.5] - 2020-05-03

### Fixed

- Fix backend SES configuration issue.

## [0.4.4] - 2020-05-03

### Fixed

- Send email through SES to avoid blocking issues.

## [0.4.3] - 2020-05-03

### Fixed

- Use email host user for auth emails.

## [0.4.2] - 2020-05-03

### Added

- Prompt user about updated content and re-register service worker.

## [0.4.1] - 2020-05-02

### Fixed

- Fix error in backend createsuperuser command.
- Fix syntax error in initial data fixtures.

## [0.4] - 2020-05-02

### Added

- Add search navbar to search page.
- Add school and subject selection to user profile and register form.
- Add badges and ranks for users.

### Changed

- Improve profile page.
- Made graphql queries for non-user generated content public.

### Removed

- Remove user listing page.

### Fixed

- Fix form getting validated in back-end before authentication check was done.

## [0.3] - 2020-04-27

### Added

- Add account verification via email.
- Add password reset via email.

### Changed

- Logging in with email or username is back.

### Fixed

- Disable enter key sending for mobile devices.
- Fix switching between tabs after creating a new comment makes the comment disappear.
- Fix header overflow being too small on mobile.
- Don't always show the same file when opening a resource.
- Fix going back in resource view.

### Security

- Improve Docker security by using non-root users in containers.

## [0.2.4] - 2020-04-19

### Fixed

- General bug fixes from alpha users' feedback.

## [0.2.3] - 2020-04-18

### Fixed

- User profile update.
- Other misc improvements.

## [0.2.2] - 2020-04-10

### Added

- Add automatic user refreshing every 25 minutes.
- Improve avatar changing feature.

### Changed

- Improve profile page.

## [0.2.1] - 2020-04-09

### Added

- Add health check API.

### Changed

- Translate initial data.
- Improve PDF viewer.

### Fixed

- Fix iOS pagination.
- Fix info modal creator info.

## [0.2.0] - 2020-04-07

### Added

- Add user avatar to bottom navbar.
- Add email configuration for contact form.
- Add model translations.

### Changed

- Store user information in local storage to reduce the amount of server requests.
- Make email an optional field and do not require it when registering new account and when updating profile.

### Removed

- Remove redundant frontend dependencies and secondary PDF viewer.

### Fixed

- Fix bug of 'Edit Profile' button showing on other users' profiles.
- Fixes to backend translations.

## [0.1.0] - 2020-04-05

### Added

- Deploy initial version.
