<h1 align="center">LOFT</h1>
<p align="center">This is a Docker Compose boilerplate for fake REST API with json-schema-faker and faker.js</p>

<p align="center">
<img width="150" height="150" src="https://raw.githubusercontent.com/docker/compose/master/logo.png" alt="Docker compose logo">
<img width="300" height="150" src="https://raw.githubusercontent.com/json-schema-faker/json-schema-faker/master/logo/JSF_logo.png" alt="JSON Schema faker">&nbsp;
<img width="300" height="150" src="https://raw.githubusercontent.com/Marak/faker.js/master/logo.png" alt="faker.js">&nbsp;
</p>

---

## Requirements:
- Docker

## Usage:
1. Init the project:

```bash
make setup
```

2. Start the project:

```bash
make up
```

3. Navigate to [http://0.0.0.0:13000](http://0.0.0.0:13000)


## Commands:

- Initialize the project:

```bash
make setup
```

- Start the project:

```bash
make up
```

- (Re)generate data:

```bash
make generate
```

- Perform cleaning:

```bash
make clean
```
