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
- To make messages in the backend, run `yarn backend:makemessages`.
- To compile messages in the backend, run `yarn backend:compilemessages`.
- To generate GraphQL code in the frontend, run `yarn frontend:gen`.

### Notes

- When cloning the repository, use `git clone --recursive <link>`

### Environment variables

- To set up environment variables for development, copy the contents of env.template to a file called .env.dev and set the remaining variables accordingly.
- For uploading files during development you need a Cloudmersive API key which you can get [here](https://www.cloudmersive.com/).

### Developing on your mobile device locally

- Make sure your device and the server are on the same network, i.e. hotspot.
- Make sure your computer has firewall not blocking incoming requests.
- Check your WiFi inet address using ifconfig and replace the `API_URL` env variable with http://<your_wifi_inet>:8000/
- Thats it, now you should be able to connect on the dev server locally with your device at http://<your_wifi_inet>:3001/.
