# Skole 🎓

## Requirements

- [Docker](https://www.docker.com/)

## Get the development environment up and running

1. Clone this repository with: `git clone --recurse-submodules <link>`

2. `cd skole`

3. [Follow the instructions for environment variables](#environment-variables)

4. Build the images: `docker-compose build`

5. Setup the backend for development:

       docker-compose run --rm backend sh -c \
           'python manage.py migrate \
            && python manage.py compilemessages \
            && python manage.py loaddata test-data.yaml'

6. Run the app: `docker-compose up`

7. Access the application from [localhost:3001](http://localhost:3001), log in with username: `testuser2` password: `password`  
   Access Django admin from [localhost:8000](http://localhost:8000), log in with username: `admin` password: `admin`  
   Access GraphiQL from [localhost:8000/graphql](http://localhost:8000/graphql)

## Useful commands

- To build images, run `yarn build`.
- To start containers in development, run `yarn start`.
- To start containers in production, run `yarn prod`.
- To make migrations, run `yarn backend:make-migrations`.
- To migrate db, run: `yarn backend:migrate`.
- To create superuser, run `yarn backend:create-superuser`.
- To import test data, run `yarn backend:import-test-data`.
- To run formatting in the backend, run `yarn backend:format`.
- To run tests and type checks in the backend, run `yarn backend:test`.
- To make messages in the backend, run `yarn backend:makemessages`.
- To compile messages in the backend, run `yarn backend:compilemessages`.
- To generate GraphQL code in the frontend, run `yarn frontend:gen`.

## Environment variables

- Copy the template env file: `cp .env.template .env` and add values for the \<placeholder\> variables in the `.env` file.
- If you want to test PDF file conversion during development, you will need a Cloudmersive API key, which you can get [here](https://www.cloudmersive.com/).  
  Note that this is optional and the application will work fine without it.

## Developing locally on your mobile device

- Make sure your computer and mobile device are in the same network.
- Make sure your computer's firewall is not blocking incoming requests.
- Check your WiFi inet address using e.g. `ipconfig getifaddr en0` and replace the `API_URL` env variable with http://<your_wifi_inet>:8000/
- That's it, now you should be able to connect on the dev server locally with your mobile device at http://<your_wifi_inet>:3001/
