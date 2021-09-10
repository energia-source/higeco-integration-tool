# Higeco - Integration tool

Using the [Higeco APIs](https://now.energia-europa.com/docapi/) and [SMB protocol](https://en.wikipedia.org/wiki/Server_Message_Block) we download data in a domain server.

## Getting Started

These instructions will get you a copy of the project up and running on your server. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must have credentials to perform the login on the server where Higeco APIs are hosted.

### Installing

Modify configuration.env with the specified variables which are mandatories.
The ID log is the file name. The file is overwritten whenever the program will be executed.
Here there is an example table with the requested variable and their description.

| Variable             | Value                                                |
|----------------------|------------------------------------------------------|
| USERNAME             | Credential username                                  |
| PASSWORD             | Credential password                                  |
| SAMPLING             | Sampling time of downloaded data during the last 24H |
| EXPRESSIONMATCHES    | Bash log-name expression selector                    |
| DOMAIN               | Domain name                                          |
| DOMAIN_SHARED        | Name of the folder in server that use SMB protocol   |
| DOMAIN_USERNAME      | Domain username                                      |
| DOMAIN_PASSWORD      | Domain password                                      |
| CRONTAB              | Crontab expression to specify the execution tiem     |


## Docker cli

```
docker run -dit --restart always --env-file configuration.env --privileged ubyte/higeco-integration-tool:latest

```

## Built With

* [Docker](https://www.docker.com/) - Get Started with Docker
* [Alpine Linux](https://alpinelinux.org/) - Alpine Linux

## Contributing

Please read [CONTRIBUTING.md](https://github.com/energia-source/higeco-integration-tool/blob/main/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/energia-source/higeco-integration-tool/tags). 

## Authors

* **Paolo Fabris** - *Initial work* - [energia-europa.com](https://www.energia-europa.com/)

See also the list of [contributors](https://github.com/energia-source/higeco-integration-tool/blob/main/CONTRIBUTORS.md) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
