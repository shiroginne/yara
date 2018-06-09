# YARA

YARA - Yet Another REST API application.

### Functionallity

Fetches dependencies for node.js pakages.

### Install

```
git clone https://github.com/shiroginne/yara
cd yara
bundle install
```

### Usage

Run the server
```
rails s
```

Send JSON requests
```
curl -H "Content-Type: application/json" -X GET localhost:3000/packages/forever/dependencies
```
