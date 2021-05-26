# REST API Integration Testing Using Apickli
**A simple project demonstrating the usage of the apickli framework for REST API integration testing.**

## Apickli
Apickli is a REST API integration testing framework that makes API testing easy and less time-consuming.

## How to Use:
1. Add apickli dependency in the package.json file.
2. Add cucumber dependency in the package.json file.
3. Install project dependencies using npm install.
<br/>```Command: npm install```
4. Add apickli-gherkin steps and support code files in your project.
<br/>```Filenames: apickli-gherkin.js & init.js```
5. Define test scenarios in feature files.
<br/>```Example: httpbin.feature```
6. Run tests with cucumber.js

## How to Run Test Cases

**Run the test cases using any of the below-mentioned commands in terminal or PowerShell:**

> **Note:** These commands need to run inside the root folder of this project i.e. inside the **apickli-rest-api-integration-testing** folder.

**To run all the test cases**
  <br/>```./node_modules/.bin/cucumber-js test/features/*.feature```

**To run all the test cases in a particular feature file**
  <br/>```./node_modules/.bin/cucumber-js test/features/httpbin.feature```