# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.16.5] - 2020-11-13

### Changed

- Use global loading screen in fewer places and use smaller loading indicators for individual components instead.
- Add animated logo to the global loading screen.
- Update social media links to be only text.
- Enable search box in the nav bar for anonymous users.

### Fixed

- Fix activities caused by anonymous user comments.

## [0.16.4] - 2020-11-12

### Changed

- Change overall scrolling behaviour and scrolling logic for tables.
- Make rich text editor buttons smaller.
- Improve typings for PDF related components.

### Fixed

- Fix paths for link-tags in the HTML head.
- Fix positioning for nprogress bar.
- Fix positioning for dialogs and backdrops.

## [0.16.3] - 2020-11-11

### Changed

- Allow navigating back from "confirm login/logout" pages.
- Remove error handling for logging out.

### Fixed

- Fix loading states between automatic redirects to prevent pages from flashing.
- Fix bug of user profile not being reset after logging out.

## [0.16.2] - 2020-11-09

### Fixed

- Prevent the API from allowing comment attachments from non-verified users.
- Fix comment deletion for non-verified users.
- Fix bug of account verification page being blank for verified users.

## [0.16.1] - 2020-11-08

### Added

- Display number of downloads for resources.

## [0.16.0] - 2020-11-06

### Added

- Add pagination to all lists that display courses, resources or subjects.
- Add social media links in the footer.
- Add helper text for the title field in the upload resource form.

### Changed

- Change the designs for landing and home pages
- Re-implement translations with a lighter `next-translate` library and built-in next.js localised routing.
- Use a dedicated query for the activity preview menu.
- Use nprogress instead of the default loading screen for page transitions.
- Refactor misc. typings for cleaner code.
- Update Next.js to latest v10.0.1 version, implement the new `next/image` component for most images.
- Improve GraphQL API documentation shown in GraphiQL.
- Make comment cards more reasonably sized.
- Move the link to delete account button to edit profile page.

### Fixed

- Fix bug that prevented submitting the register form.
- Fix layout issues in resource page and some of the settings pages.
- Fix bottom navbar navigation and Finnish translations when not authenticated.
- Potentially fix bug of top-level comments not being reset when changing routes.
- Fix mutation payloads according to the lastest backend schema.
- Fix layout for user profile when viewing other users' profiles.

## [0.15.1] - 2020-11-01

- Fix CircleCI pipeline errors.

## [0.15.0] - 2020-10-31

### Changed

- Deploy and manage the whole AWS infra with terraform.
- Clean the metadata of all uploaded files.

## [0.14.1] - 2020-10-12

### Added

- Add a login confirmation page that is shown to the user before automatically redirecting to login page.

### Changed

- Add resource count to profile tab labels.
- Simplify tooltips for voting own content - use the same "You cannot vote on your own content" for courses, resources and comments.
- Disable draw mode feature temporarily - for mobile devices, hide the entire button.
- Use a lighter color for community user in comments.
- Remove success notification after creating a comment.
- Improve URL input for rich text editor.
- Hide attachment button for anonymous and non-verified users on mobile.
- Improve spacing and alignment for course table items.
- Hide profile strength stepper if all steps have been completed.
- Show course/resource count on profile tab labels.
- Make all icons and icon buttons slightly bigger.
- Bump max file size to 10Mb when uploading resources.
- Add option to navigate to home from logout and login/register pages.

### Fixed

- Fix bug of created resources not showing in profile.
- Fix bug of anonymous users being able to click on vote/star buttons.
- Fix bug of confirmation modal not showing when deleting a comment.
- Fix spacing and overflow issues for rich text editor.
- Fix navigation logic to user profile from bottom nav bar when not logged in.
- Fix weird overflow issue occasionally present on mobile iOS, affecting entire container/layout.
- Fix overflow issue on profile username and title fields.
- Fix infinite loading state bug on some forms.
- Fix navigation on bottom nav bar for anonymous users.
- Fix layout on all settings pages.
- Fix reply comment button text.

## [0.14.0] - 2020-10-10

### Changed

- Show comment and resource counts, and the creator of the course in all course lists.
- Refine the border radius of all UI elements a bit.

### Fixed

- Fix showing user's starred courses and resources on starred page.

## [0.13.0] - 2020-10-10

## [0.13.0-rc4] - 2020-10-08

### Changed

- Update Python version and other requirements in the backend.

### Fixed

- Fix miscellaneous locale typos.
- Fix avatar thumbnail sizing on mobile.
- Fix PDF viewer overflow issue preventing border radius from showing.
- Fix bugs of dialogs toggling on/off from random clicks.
- Fix school detail overflow issue.

## [0.13.0-rc3] - 2020-10-06

### Changed

- Prevent autocomplete fields from making massive queries. Instead, fetch initial data and re-fetch when user types in more characters.
- Make headers slightly bigger.

### Fixed

- Fix miscellaneous UI bugs.
- Fix translations on user profile by using client-side data fecthing.

## [0.13.0-rc2] - 2020-09-29

### Fixed

- Fix bug of bottom navbar not showing not authenticated users.
- Fix lang-attribute for HTML-document.
- Use client-side data fetching for all dynamic pages - fix translation bug.
- *Potentially* fix bug of theme overrides not being applied and thus miscellaneous UI elements looking weird.
- Fix random locale typos.

## [0.13.0-rc1] - 2020-09-25

### Added

- Group resources by resource type in lists.

### Changed

- Improve developer documentation.
- Restructure static assets (images).
- Improve miscellaneous locales.
- Make dialogs more responsive - no more side-opening drawers on desktop.
- Remove redundant top-level dependencies.
- Add labels to bottom navbar.
- Create custom drop zone for file uploads.
- Replace `formik-material-ui` with custom form fields.
- Use MUI's built-in media queries instead of a custom solution.
- Simplify layout for settings page other reusable templates.
- Improve labels and placeholders for all form fields, remove redundant input adornments that look weird on iOS.
- By default, show footer in viewport on desktop.
- Improve "not found" screens with more descriptive texts, icons and call-to-action links.
- Redesign and implement landing and home page.
- Slightly redesign profile page, improve profile strength stepper (always show completed steps first).
- Change theming with e.g. rounded corners and other misc. overrides to default MUI components.
- Remove NProgress - show regular loading screen instead
- Improve all tables for better compability and hover effects etc.
- Replace `moment.js` with `day.js`.
- Make most content pages public (home, search, course, resource).
- Allow commenting for non-logged users but prevent them from adding resources.

### Fixed

- Fix client-side logout error
- Fix bug that caused form error when logging in with different credentials as an existing user
- Replace all styled-components styles with MUI's own CSS in JS
- Fix error handling for all mutations with latest backend version
- Fix status bar style on iOS
- Fix various miscellaneous iOS bugs
- Fix HTML lang-attribute
- Fix create comment button positioning

## [0.12.2] - 2020-09-12

### Fixed

- Correctly log out the session after an account deletion.
- Fix rich text editor submit button.

## [0.12.1] - 2020-08-17

### Changed

- Change file input for mobile devices on upload resource page.

### Fixed

- Fix bug causing resource draw mode to clash with swipeable views.
- Fix all file upload fields to allow uploads using either camera or device storage.
- Fix bug causing edit profile page to crash when uploading new avatar.
- Fix bug that caused other search params to disappear when entering course name on mobile search.
- Fix bug that caused comment thread to open when voting on top-level comment.
- Fix bug that caused comment thread to open when clicking on comment actions drawer.
- Fix bug that caused incorrect tooltips to show in various places when user has not verified his account.
- Fix incorrect score counts showing on course listing.

## [0.12.0] - 2020-08-16

### Added

- Add initial version of rich text editor for course and resource discussion.

### Changed

- Disable offline functionality for home page.
- Change loading screen to take up full screen on desktop.

## [0.11.0] - 2020-08-12

### Added

- Add "best" sorting option for courses, it's used by default.

### Changed

- Disable backend's spammy permission error logging.

### Removed

- Remove option to sort courses by ascending score.

### Fixed

- Fix error which prevented voting a course.
- Fix error which prevented commenting to a course.

## [0.10.2] - 2020-08-10

### Fixed

- Minor UI tweaks.
- Fix frontend CircleCI env variables.

## [0.10.1] - 2020-08-09

## [0.10.1-rc1] - 2020-08-09

### Fixed

- Fix CircleCI pipeline errors.

## [0.10.0] - 2020-08-09

### Changed

- Revert back to using a server for frontend hosting.
- Improve the about page.
- Improve meta tags.
- Allow non-logged in users to view courses, resources, and user profiles.
- Don't allow non-verified users to create resources or courses.

## [0.9.11] - 2020-08-08

### Security

- Only allow JWT cookie on HTTPS.

## [0.9.10] - 2020-08-08

### Fixed

- Allow Vercel preview build to use backend JWT cookie.

## [0.9.9] - 2020-08-08

## Fixed

- Fix service worker registration.

## [0.9.8] - 2020-08-08

### Added

- Add custom offline page for all pages that require communication with backend.
- Add "Back to profile" button in edit profile page.
- Add default title and description meta tags for pages.

### Changed

- Change registration to three-step flow.
- Change PWA so that content is refreshed automatically.

### Fixed

- Fix meta tags for loading screens.
- Fix miscellaneous locales.

## [0.9.7] - 2020-08-07

### Fixed

- Fix bug which prevented accessing Badge model from the admin.

## [0.9.6] - 2020-08-06

## [0.9.5] - 2020-08-06

## [0.9.4] - 2020-08-06

### Fixed

- Fix ECS task definition memory allocation.

## [0.9.3] - 2020-08-06

### Security

- Use different `CORS_ORIGIN_REGEX_WHITELIST` for prod and QA for extra security.

## [0.9.2] - 2020-08-06

### Changed

- Use rolling backend updates for QA also.

## [0.9.1] - 2020-08-06

## [0.9.1-rc3] - 2020-08-06

## [0.9.1-rc2] - 2020-08-06

## [0.9.1-rc1] - 2020-08-06

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

## [0.4.9-rc1] - 2020-05-16

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
