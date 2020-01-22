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
- To make migrations, run `yarn backend:make-migrations`.
- To migrate db, run: `yarn backend:migrate`.
- To create superuser, run `yarn backend:create-superuser`.
- To import sample data, run `yarn backend:import-sample-data`.
- To run tests in the backend, run `yarn backend:test`.
- To run linting, type checks etc. in the backend, run `yarn backend:lint`.
- To generate GraphQL code in the frontend, run `yarn frontend:gen`.

### Notes

- When cloning the repository, use `git clone --recursive <link>`
