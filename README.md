# Credit Card Sales Agent

The neuro-symbolic data interface to customer credit card transactions and (potential) merchant rewards data.
This interface is used by a credit card sales agent that helps customers determine which type of credit card is best suited for them based on the rewards they can earn.

The SQRL script ingests, transforms, and analyzes the data which is then exposed through a semantically annotated GraphQL API to the agent.

## Run Tests

```bash
docker run --rm -v $PWD:/build datasqrl/cmd:dev test -c package-test.json --snapshot test-snapshots
```

## Run Locally

Run neuro-symbolic interface with test data
```bash
docker run -it -p 8888:8888 -p 8081:8081 -p 9092:9092 --rm -v $PWD:/build datasqrl/cmd:dev run -c package-test.json
```

Run agent using the neuro-symbolic interface for data retrieval
```bash
docker run -it --rm -p 8080:8080 -v $PWD:/config/ -e OPENAI_API_KEY={ADD_YOUR_KEY} datasqrl/acorn /config/creditcard-rewards-agent.openai.json /config/creditcard-rewards.graphqls
```
