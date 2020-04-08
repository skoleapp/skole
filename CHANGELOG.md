# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Front-end iOS pagination
- Back-end health check API

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
