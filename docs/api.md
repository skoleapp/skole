# API Docs

## Base path

- development: `http://localhost:8000/api`
- production: `http://api.skole.fi` ?

## User API

#### `/user/register`

- `POST`
- register new user
- allowed for unauthenticated users

---

#### `/user/login`

- `POST`
- login user
- allowed for unauthenticated users

---

#### `/user`

- `GET`
- return current user
- require authentication

---

#### `/user/:id`

- `GET` allowed for all
- `PUT/PATCH/DELETE` allowed for owner
- get user details, update/delete own user

---

#### `/user/me`

- same as `/user/:id`, always return current user

---

## TODO: Implement other APIs
