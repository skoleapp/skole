# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.4] - 2020-05-03

### Fixed

- Send email through SES to avoid blocking issues

## [0.4.3] - 2020-05-03

### Fixed

- Use email host user for auth emails

## [0.4.2] - 2020-05-03

### Added

- Prompt user about updated content and re-register service worker

## [0.4.1] - 2020-05-02

### Fixed

- Back-end createsuperuser
- Syntax error in initial data fixtures

## [0.4] - 2020-05-02

### Added

- Add search navbar to search page
- Add school and subject selection to user profile and register form
- Back-end: Add badges and ranks for users

### Changed

- Improve profile page
- Made graphql queries for non-user generated content public

### Removed

- Remove user listing page

### Fixed

- Fix form getting validated in back-end before authentication check was done

## [0.3] - 2020-04-27

### Changed

- Logging in with email or username is back

### Added

- Add account verification via email
- Add password reset via email

### Fixed

- Disable enter key sending for mobile devices
- Fix switching between tabs after creating a new comment makes the comment disappear
- Fix header overflow being too small on mobile
- Don't always show the same file when opening a resource
- Fix going back in resource view

### Security

- Improve Docker security by using non-root users in containers

## [0.2.4] - 2020-04-19

### Fixed

- Front-end: Bug fixes from alpha users' feedback

## [0.2.3] - 2020-04-18

### Fixed

- Back-end: User profile update
- Front-end: Misc improvements

## [0.2.2] - 2020-04-10

### Changed

- Front-end: Improve profile page

### Added

- Front-end: Add automatic user refresh every 25 minutes
- Front-end: Improve avatar changing feature

## [0.2.1] - 2020-04-09

### Changed

- Translate initial data
- Front-end: Improve PDF viewer

### Added

- Back-end: Add health check API

### Fixed

- Front-end: Fix iOS pagination
- Front-end: Fix info modal creator info

## [0.2.0] - 2020-04-07

### Changed

- Front-end: Store user information in local storage to reduce the amount of server requests
- Back-end: Make email an optional field and do not require it when registering new account
- Front-end: Make corresponding updates regarding email field on registration and profile update

### Fixed

- Front-end: Fix bug of `Edit Profile` button showing on other users' profiles
- Back-end: Fix existing translations

### Added

- Front-end: Add user avatar to bottom navbar
- Back-end: Add email configuration for contact form
- Back-end: Add model translations

### Removed

- Front-end: Remove redundant dependencies and secondary PDF viewer

## [0.1.0] - 2020-04-05

### Added

- Deploy initial version
