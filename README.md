# Run gcloud commands

Allows you to run `gcloud` commands in github actions. It will authorize you via a service account and run the given command on the given project.

This is useful for deploying for example:

```yaml
name: Checkout! Deploy! Rejoice!
on:
  push:
    branches:
      - master

jobs:
  deploy_to_gae:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: deploy
        uses: Adzz/deploy_to_gae_action@v1.1
        with:
          credentials: ${{ secrets.SERVICE_ACCOUNT }}
          project: ${{ secrets.GAE_PROJECT }}
          command: app deploy --quiet --promote
```
