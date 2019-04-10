# samlapi

## Usage
You can use Shibboleth login for both API and CLI access to AWS.  Clone/download the source, and build the docker image:

```
docker build --tag aws-login .
```

that will be maintained by the Cloud Services team that can be used for this and it is as simple as running the following command:

```
docker run -it --rm -v ~/.aws:/root/.aws aws-login
```

After this command has been run it will prompt you for your netid and password.  This will be used to login you into Shibboleth/CAS Server. You will get a push from DUO.  Once you have confirmed the DUO notification, you will be prompted to select the role you wish to use for login, if you have only one role it will choose that automatically.  The credentials will be placed in the default credential file (~/.aws/credentials) and can be used as follows:

```
aws --profile saml s3 ls
```

## More Info

http://blogs.cornell.edu/cloudification/2016/07/05/using-shibboleth-for-aws-api-and-cli-access/

Base Image can be found here: https://github.com/CU-CommunityApps/docker-xvfb-firefox.
