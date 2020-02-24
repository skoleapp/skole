# Skole :mortar_board:

### Requirements

- [Docker](https://www.docker.com/)
- [Node](https://nodejs.org/en/)
- [Yarn](https://yarnpkg.com/lang/en/)

### Useful Monorepo Commands

- To build images, run `yarn build`.
- To start containers in development, run `yarn start`.
- To start containers in production, run `yarn prod`.
- To clean unused containers, run `yarn clean`.
- To clean unused volumes, run `yarn clean:volumes`.
- To make migrations, run `yarn backend:make-migrations`.
- To migrate db, run: `yarn backend:migrate`.
- To create superuser, run `yarn backend:create-superuser`.
- To import test data, run `yarn backend:import-test-data`.
- To run tests and type checks in the backend, run `yarn backend:test`.
- To generate GraphQL code in the frontend, run `yarn frontend:gen`.

### Notes

- When cloning the repository, use `git clone --recursive <link>`
