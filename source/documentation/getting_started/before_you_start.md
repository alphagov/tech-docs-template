## PaaS requirements

To be hosted by Government PaaS, your application must:

* follow the [twelve-factor application](http://12factor.net/) principles (described in more detail below) - this will be the case if your app was written to be deployed to another PaaS like Heroku
* not require any backing service apart from a database (currently the only service available is PostgreSQL)
* not carry data at SECRET or above (this is currently out of scope for Government PaaS)
* be written in a language supported by the [default Cloud Foundry buildpacks](http://docs.cloudfoundry.org/buildpacks/):
    * Go
    * Nodejs
    * Java
    * PHP
    * Python
    * Ruby
    * or be a static HTML/CSS/Javascript site

Buildpacks provide runtime and framework support for your application. For most languages, you will need to provide configuration files to describe your app's dependencies. Note that most buildpacks will support a limited range of versions of the language.

### 12-factor application principles
These principles were formulated by Adam Wiggins, the cofounder of the [Heroku](https://www.heroku.com/) platform. They outline practices for modern apps to follow during development to make them scalable and easy to deploy. Your app must follow these practices to work on the Cloud Foundry technology which is used by the Government PaaS.

We have summarised the practices in the table below, and noted the relevance of each principle to the Government PaaS.

Visit the [12factor.net website](http://12factor.net/) to further ensure your application supports these practices.

|Principle  |Meaning  |Relevance to Cloud Foundry  |
|:---|:---|:---|
|One codebase many deploys  |Each of your applications needs its own source-controlled repository.  |You can push the same codebase to many Cloud Foundry applications with these commands: ``` $ cf push myapp-staging``` <br/> ```$ cf push myapp-production```  |
|Isolate dependencies |All required dependencies (eg a database or image library) must be vendored into your software system.|If you don’t declare your dependencies, you probably won’t be able to deploy your application on Cloud Foundry. How you specify dependencies depends on which language and buildpack you use. For example, the python buildpack expects you to provide a requirements.txt file which it will pass to pip.  |
|Store your configuration in the environment  | Ensure you separate the storage of your code and configuration (this is anything that may vary between environments, such as passwords). |Cloud Foundry provides environment variables to tell an application how to configure itself, e.g. VCAP_SERVICES tells applications what services are available and how to connect to them. You can create your own environment variables for each application. |
|Backing Services  |All your backing services (e.g. an email service or a monitoring system) should be loosely coupled to your code so you can easily change services if you need to. A change in service should not require a code change.|In Cloud Foundry, backing services are referred to as ‘services’. Users can create services, bind them to applications, and delete them.  |
|Strictly separate build, release and run stages  |There should be a strict separation between building, releasing and running the code.  |The build stage is carried out by the buildpack and Cloud Foundry refers to this as ‘staging’ an app. Cloud Foundry combines the release and run stage into a single 'push' stage. |
|Stateless processes  |Build stateless applications where intermediate data is stored in your backing services (eg your databases) and not in your running code. Also, have you applications run on many servers so you can ensure continuity in the event of server downtime.  | Cloud Foundry treats all application processes are stateless and expendable.|
|Port binding  |Your application should interface to the world via an API. You can have a separate URL for your customers than the one you use for internal calls. This means your app can be used as a backing service for another app via its URL.  | Cloud Foundry expects applications to have this and provides an environment variable called PORT for the application to use as part of its bootstrapping process. |
|Concurrency  | Ensure all your processes (e.g. web requests or API calls) are running separately so your application can scale easily.  | Cloud Foundry expects applications to behave according to this principle. To increase the number of processes running, use the ```cf scale``` command.|
|Disposability  | You should be able to rapidly release new code. Also, applications should be able to start back up fast and cleanly following shut down.  | Cloud Foundry expects applications to follow this principle.|
|Development parity  | Applications should be rapidly deployed from their development environment to production.  To ensure this rapid deployment, keep a developer’s environment similar to that of production (eg both environments should use the same backing services).  | CF helps you achieve this development/production parity by letting you create and deploy similar services for development, test and production environments|
|Logs  | Maintain and archive log files so you have visibility of how your application works over time.  |Cloud Foundry [describes how to log files here](https://docs.cloudfoundry.org/devguide/deploy-apps/streaming-logs.html). PaaS will offer the Loggregator function in beta. |
|Administrative processes  |Run one-off administrative processes (eg running analytics) in your production environment.  |  |
