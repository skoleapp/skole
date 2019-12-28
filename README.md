# Skole :mortar_board:

### Requirements

- [Docker](https://www.docker.com/)
- [Node](https://nodejs.org/en/)
- [Yarn](https://yarnpkg.com/lang/en/)

### Useful Monorepo Commands

- To build images, run `yarn build`.
- To start containers, run `yarn start`.
- To clean unused containers, run `yarn clean`.
- To clean unused volumes, run `yarn clean:volumes`.
- To make migrations, run `yarn make-migrations`.
- To migrate db, run: `yarn migrate`.
- To create superuser, run `yarn create-superuser`.
- To generate GraphQL code, run `yarn gen`.
- To import sample data, run `yarn import-sample-data`.
- To run tests in the backend, run `yarn test-backend`.

### Notes

- When cloning the repository, use `git clone --recursive <link>`
