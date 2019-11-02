# Skole :mortar_board:

### Requirements
- [Docker](https://www.docker.com/)
- [Node](https://nodejs.org/en/)
- [Yarn](https://yarnpkg.com/lang/en/)

### Dev environment
- To start development environment, run: `yarn start`.
- To run backend only, run: `yarn run backend`.
- To build images, run `yarn run build`.
- To stop containers, run `yarn run stop`.
- To clean containers, run `yarn run clean`.
- To clean volumes, run `yarn run clean:volumes`

### Generating code from GraphQL schemas
- Whenever you modify contents of the `/graphql` folder in the frontend directory, you need to re-generate the code.
- To do this, make sure the backend is running in the root of the frontend directory, run: `yarn run gen`.