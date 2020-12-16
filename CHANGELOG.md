# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2020-12-14

### Added

- Add `account/my-data` page for GDPR user data requests.
- Add labels for rank and badges on profile page.
- Make verification and password reset URLs link to translated pages.
- Allow uploading files and selecting images on mobile Safari.

### Changed

- Update privacy policy.
- Make any object deletion be completely permanent.
- Change Google Analytics to Simple Analytics.
- Change URL for course creation page to `/add-course`.
- Improve rendering of long form field errors.
- Change password minimum length to 10 characters.
- Don't allow too common passwords.
- Don't allow entirely numeric passwords.
- Don't allow passwords that are too similar to user's username or email.
- Sort subjects and schools alphabetically.
- Improve miscellaneous translations.
- Prevent compressing attachment and avatar images that are smaller than the allowed limit.
- Make comment author selection into a clickable button.
- Make rich text editor icon button sizes match the sizes of comment icon buttons.
- Fix translation for error message of password being too similar to the email.
- Don't require a verification for sending a password reset email or resetting password.
- Don't allow special characters in usernames.
- Update font weight, color and spacing for completed profile strength steps.
- Add more spacing between the texts on profile page.
- Don't use 'noreply' email addresses, instead encourage users to reply to emails.
- Prevent submitting comments from return key on mobile/tablet.

### Removed

- Don't show the 'see all' share option button when on Desktop.
- Remove code-block option from the rich text editor.

### Fixed

- Fix issue where autocomplete fields could return duplicate results.
- Fix resource type field not showing any choices on first load of upload-resource page.
- Fix inconsistent spacing of message info icons and buttons.
- Fix bug of share menu's copy link action not working.
- Fix bug of resource creator not showing in user profile under the created resources.
- Fix bug of subject and course lists not being rendered on school page.
- Fix issue where course, resource, and comment deletion would not delete the object properly.
- Fix issue where uploaded resource files could lose almost all of their text.
- Fix text alignment of dialogs on desktop.
- Fix overflow issue of rendering profile badges.
- Fix spacing issue of profile strength steps etc. on profile page on mobile.
- Fix sharing locales for resource page.
- Fix rendering quotes in comments.
- Fix rendering strike through in comments.
- Fix bug of resource creator not showing on course page.
- Fix bug of bio not showing on desktop at all.
- Fix bug of some profile info labels having capital casing and incorrect spacing on some screen sizes.
- Fix slogan text on get started page.
- Fix avatar dialog buttons not working correctly.
- Fix main background image stretching weirdly.
- Fix overflow issues on footer links.
- Fix Telegram sharing URL.

## [0.17.1] - 2020-12-10

### Changed

- Add content on privacy policy and terms pages.
- Show wider text content on terms and privacy pages.
- Update spacings for comment buttons.
- Translate all emails.

### Fixed

- Fix email sharing link.
- Miscellaneous locale fixes.
- Fix issue with long texts of comments overflowing.

## [0.17.0] - 2020-12-07

### Added

- Add custom Instagram-like sharing menu for more user-friendly sharing options.
- Add option for authenticated users to post as anonymous users.
- The the username and avatar of the account making the comment in the comment creation form.
- Add keywords and Twitter meta tags to improve SEO.

### Changed

- Improve sharing titles and texts.
- Make bottom border of a top-comment of a thread slightly narrower.
- Make avatar thumbnails slightly smaller.
- On top comments in threads, show the reply count directly in the comment like in all the top-level comments.
- Align vote-buttons of comments vertically always on center like in Model.
- Make the max height of the rich text editor more responsive.
- Change the layout for all dialog headers to a bit denser so that the center content has more space.
- Hide top nav bar search field for 404 page.
- Change uncompleted profile strength steps into clickable links.

### Fixed

- Fix bug of rich text editor pushing itself away from the viewport when stretching against the comment attachment.

## [0.16.8] - 2020-12-03

### Fixed

- Miscellaneous UI fixes.

## [0.16.7] - 2020-12-03

### Added

- Add miscellaneous helper texts for form fields.

### Changed

- Use SVG icons for language flags.
- Instead of showing disabled vote and star buttons for anonymous/unverified users in course/resource pages, completely hide the buttons on mobile.
- Disable "mark all as read" action in activity page if user has no actives.
- Improve miscellaneous locales and helper texts.
- Make all forms a bit wider on extra wide screens.
- Remove placeholder notification settings from edit profile page.
- Change the resource upload form flow to the following:
  - By default, only show the following fields: title, type, school, file
  - After school field is populated, collapse in the course field under the school field. Note that this field already contains only options filtered for the selected school. This way we can force the user to pick the course from only one school at a time.

### Fixed

- Fix bug of being able to select duplicate values for auto complete fields that allow selecting multiple values.
- Fix bug of comment modal not opening manually, if clicking on an activity in the activity preview modal and users already in the destination page.

## [0.16.6] - 2020-11-28

### Changed

- Update miscellaneous texts and translations.
- Use markdown for rendering comments and bio field in user profile.
- Change layout to show the desktop layout for all devices 960px wide.
- Disable search field for 500/offline pages.
- Only pre-fill users selected school in search page.

### Fixed

- Fix overflowing texts of comments.
- Fix bug of top-level comments not being updated after sending reply comments.
- Fix bugs regarding the form initialization on search page, upload resource page and possible on other pages too.
- Fix bug of static assets such favicon not working on other pages except the home page.

## [0.16.5] - 2020-11-27

### Changed

- Use global loading screen in fewer places and use smaller loading indicators for individual components instead.
- Add animated logo to the global loading screen.
- Update social media links to be only text.
- Enable search box in the nav bar for anonymous users.
- Allow selecting text from PDF files.
- Move gray background lower on home page.
- Disable grouping by resource type in resource lists.
- Show the type of every resoruce in resource lists.

### Removed

- Remove FAQ page.
- Remove About page.

### Fixed

- Fix name label on contact form.
- Fix bug of user profile form not updating.
- Fix delete course menu item icon clicking not working.
- Fix upload resource form link to contact.
- Fix school detail URL.
- Fix activities caused by anonymous user comments.
- Fix bug of rich text editor omitting last character from comments.
- Fix links not being clickable in account verification and password reset emails.
- Fix error which occurred when uploading any files.
- Improve frontend translations.
- Fix attachment preview stretching the images.

### Security

- Add protection against CSRF attacks.
- Remove exception details from backend responses.

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
- Prevent autocomplete fields from making massive queries. Instead, fetch initial data and re-fetch when user types in more characters.
- Make headers slightly bigger.

### Fixed

- Fix client-side logout error.
- Fix bug that caused form error when logging in with different credentials as an existing user.
- Replace all styled-components styles with MUI's own CSS in JS.
- Fix error handling for all mutations with latest backend version.
- Fix status bar style on iOS.
- Fix miscellaneous iOS bugs.
- Fix HTML lang-attribute.
- Fix create comment button positioning.
- Fix bug of bottom navbar not showing not authenticated users..
- Fix lang-attribute for HTML-document.
- Use client-side data fetching for all dynamic pages - fix translation bug.
- Fix bug of theme overrides not being applied and thus miscellaneous UI elements looking weird.
- Fix miscellaneous UI bugs.
- Fix translations on user profile by using client-side data fecthing.
- Fix miscellaneous locale typos.
- Fix avatar thumbnail sizing on mobile.
- Fix PDF viewer overflow issue preventing border radius from showing.
- Fix bugs of dialogs toggling on/off from random clicks.
- Fix school detail overflow issue.

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
- Fix authentication issues.

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
