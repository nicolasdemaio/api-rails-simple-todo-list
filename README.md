## README

### Simple API to manage Tasks.

Controller (handle requests)
Model with validations ('Task' in this example)
Active Record to persist model objects

| HTTP Method  |  Path | Purpose  |
|---|---|---|
|  GET | /tasks  | Fetch all tasks  |
| GET  |  /tasks/{id} | Fecth the task identified by ID  |
|  POST | /tasks  | Create task giving: 'title', 'description' and 'priority'  |
|DELETE| /tasks/{id}  | Delete the task identified by ID  |

Priority param must be 'LOW', 'MEDIUM' or 'HIGH'.


