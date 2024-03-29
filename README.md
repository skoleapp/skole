# Skole 🎓

[![ci](https://github.com/skoleapp/skole/actions/workflows/ci.yml/badge.svg)](https://github.com/skoleapp/skole/actions)

## Requirements

- [Docker](https://www.docker.com/)
- [Yarn](https://yarnpkg.com) (Optional but recommended)

## Get the development environment up and running

1. Clone this repository with: `git clone --recurse-submodules git@github.com:skoleapp/skole.git`

2. `cd skole`

3. [Follow the instructions for environment variables](#environment-variables)

4. Build the images: `docker-compose build`

5. Setup the backend for development (alternatively just run `yarn backend:setup`):

       docker-compose run --rm backend sh -c \
           'python manage.py migrate \
            && python manage.py compilemessages \
            && python manage.py loaddata skole/fixtures/*.yaml'

6. Run the app: `docker-compose up`

7. Access the application from [localhost:3001](http://localhost:3001), log in with username: `testuser2` password: `password`  
   Access Django admin from [localhost:8000](http://localhost:8000), log in with username: `admin` password: `admin`  
   Access GraphiQL from [localhost:8000/graphql](http://localhost:8000/graphql)

## Useful commands

- To build images, run `yarn build`.
- To start containers in development, run `yarn start`.
- To start containers in a production like setup, run `yarn start-prodlike`. NOTE: This has no code volumes so changes won't get updated without rebuilding.
- To build images for a production like setup, run `yarn build-prodlike`.
- To make migrations, run `yarn backend:makemigrations`.
- To migrate db, run: `yarn backend:migrate`.
- To create superuser, run `yarn backend:create-superuser`.
- To import test data, run `yarn backend:import-test-data`.
- To make messages in the backend, run `yarn backend:makemessages`.
- To compile messages in the backend, run `yarn backend:compilemessages`.
- To run migrations, compile messages, and import test data in the backend, run `yarn backend:setup`.
- To run tests and type checks in the backend, run `yarn backend:test`.
- To run type-checking in the backend, run `yarn backend:type-check`.
- To run linting in the backend, run `yarn backend:lint`.
- To run formatting in the backend, run `yarn backend:format`.

## Environment variables

- Copy the template env file: `cp .env.template .env` and add values for the \<placeholder\> variables in the `.env` file.
- (Optional) If you want to test PDF file conversion during development, you will need a Cloudmersive API key, which you can get [here](https://www.cloudmersive.com/).
- (Optional) If you want to test push notificatons during development, you will need a Firebase Cloud Messaging Server key, which you can get [here](https://console.firebase.google.com).

## Developing locally on your mobile device

- Make sure your computer and mobile device are in the same network.
- Make sure your computer's firewall is not blocking incoming requests.
- Check your WiFi inet address using e.g. `ipconfig getifaddr en0` and replace the `API_URL` env variable with http://<your_wifi_inet>:8000/
- That's it, now you should be able to connect on the dev server locally with your mobile device at http://<your_wifi_inet>:3001/

## Troubleshooting

### My frontend dependencies are not getting loaded from the built image?

1. Run `docker-compose build frontend`
2. Run `docker-compose up -V`, (same as [`--renew-anow-volumes`](https://docs.docker.com/compose/reference/up/)) this forces the anonymous `node_modules` volume to update its contents from the freshly built image.
3. 🍻

---

![Skole's landing page](landing-page.png)
