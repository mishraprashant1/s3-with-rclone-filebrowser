<h1 align="center">S3 Mount with Rclone and Filebrowser in Docker 👋</h1>

> This setup mounts an `AWS S3` bucket on your docker container using `Rclone` and provides a web-based interface to browse the mounted content using `Filebrowser`. The setup uses `Docker` to create a lightweight containerized environment.

## ✨ Setup Instructions

There are 2 parts to this setup.

### Part 1: AWS Setup

- Login to your AWS account

- Create a new [bucket](https://ap-south-1.console.aws.amazon.com/s3/buckets?region=ap-south-1).

- Create a new user from [here](https://us-east-1.console.aws.amazon.com/iam/home?region=ap-south-1#/users). Attach `AmazonS3FullAccess` policy to access the S3 container and perform various operations like `upload` `download` `delete` etc.

- Create new access keys for that user with usecase as `Other` and update the access key and secret in the `.env` file.

- Update S3 bucket name and region in the `.env` file.

### Part 2: Local Setup

Download and install [Docker](https://docs.docker.com/engine/install/) Engine.

Run docker compose up command to build and start the Docker container for the services defined in the docker-compose file.
```sh
docker-compose up --build -d
```

You filebrowser should be up and accessible locally from [here](http://localhost:8080/).

#### Intial Creds:

Username: `admin`

Passwird: `admin`


## 🔥 Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes or improvements.

## 👨🏻‍💻 Author

👤 **Prashant Mishra**

- LinkedIn: [@prashant-manoj-mishra](https://www.linkedin.com/in/prashant-manoj-mishra/)
- Github: [@mishraprashant1](https://github.com/mishraprashant1)
- Twitter: [@iamjunooo](https://twitter.com/iamjunooo)
