# create-npmrc

Github action to create .npmrc file for Github Package Registry dependency

## Inputs

## `org_name`

**Required** The name of user or organization owner of the repository.

## `auth_token`

**Required** The Auth Token is responsible to able the download of the files of the repository, is highly recommended pass the token through a Github secret.

<sub><sup>Secrets variables can be configured on repository settings > Secrets</sup></sub>

## `always_auth`

**Required** Force npm to always require authentication when accessing the registry.

## Example usage

```yml
uses: bikutadesu/create-npmrc@v1
with:
  org_name: EXAMPLE_ORG
  auth_token: GITHUB_TOKEN
  always_auth: true
```

## Example output

```npmrc
//npm.pkg.github.com/:_authToken=GITHUB_TOKEN
@EXAMPLE_ORG:registry=https://npm.pkg.github.com/
always-auth=true
```
