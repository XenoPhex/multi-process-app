# multi-process-app
This is a simple multi-process/multi-buildpack application that runs on [Cloud Foundry](https://github.com/cloudfoundry). It's purpose is to help test the [CF CLI](https://github.com/cloudfoundry/cli) and the [CF V3 API](v3-apidocs.cloudfoundry.org).

## Requirements
- CF CLI Version `6.37.0+`
- A Cloud Foundry with API `3.27.0+`

## How to Use
After you've logged into a Cloud Foundry Foundation and targeted an organization and space, run the following commands:
```
$ git clone https://github.com/XenoPhex/multi-process-app.git
$ cd multi-process-app
$ ./deploy.sh
```

### Notes
- After running the `deploy.sh` script, a `deploy.log` will exist with the package upload and staging logs.
- **The `deploy.log` is always deleted at the start of the `deploy.sh` script.** If you require the information from this log file, please copy/move it before running the `./deploy.sh` again.
