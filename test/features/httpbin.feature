Feature:
	Httpbin.org exposes various resources for HTTP request testing
	As Httpbin client I want to verify that all API resources are working as they should

	# GET Request - Scenario highlighting the different ways using which we can set the headers and query parameters in input request
	Scenario: Setting headers and query parameters in GET request
		Given I set Custom-Header1 header to Cutom-Header1-Value
		And I set Custom-Header2 header to Cutom-Header2-Value
		And I set headers to
			| name       | value            |
      		| User-Agent | apickli          |
      		| Accept     | application/json |
		And I set query parameters to
			| parameter                | value                 |
      		| queryParameter1          | queryParameter1Value  |
      		| queryParameter2          | queryParameter2Value  |
		When I GET /get?queryParameter3=queryParameter3Value&queryParameter4=queryParameter4Value
		Then response body path <body path> should be <result>
		And  response header Content-Type should be application/json
		Examples:
			| body path                | result                 |
			| headers.Custom-Header1   | Cutom-Header1-Value    |
			| headers.Custom-Header2   | [A-Za-z0-9]            |
			| headers.User-Agent       | apickli                |
			| headers.Accept           | application/json       |
			| args.queryParameter1     | queryParameter1Value   |
			| args.queryParameter2     | [A-Za-z0-9]            |
			| args.queryParameter3     | queryParameter3Value   |
			| args.queryParameter4     | queryParameter4Value   |

	# POST Request - Scenario highlighting how to set body payload in input request
	Scenario: Setting body payload in POST request
		Given I set body to { "name": "test user", "age": 25, "phoneNumber": "+91-0000000000"}
		When I POST to /post
		Then response body path <body path> should be <result>
		Examples:
			| body path                | result                 |
			| json.age                 | [0-9]{1,3}             |
			| json.name                | test user              |
			| json.phoneNumber         | \+91-0000000000        |

	# PUT Request - Scenario highlighting how to set body payload in input request
	Scenario: Setting body payload in PUT request
		Given I set body to { "name": "test user", "age": 25, "phoneNumber": "+91-0000000000"}
		When I PUT /put
		Then response body path <body path> should be <result>
		Examples:
			| body path                | result                 |
			| json.age                 | [0-9]{1,3}             |
			| json.name                | test user              |
			| json.phoneNumber         | \+91-0000000000        |

	# DELETE Request - Scenario highlighting how to set body payload in input request
	Scenario: Setting body payload in DELETE request
		Given I set body to { "name": "test user", "age": 25, "phoneNumber": "+91-0000000000"}
		When I DELETE /delete
		Then response body path <body path> should be <result>
		Examples:
			| body path                | result                 |
			| json.age                 | [0-9]{1,3}             |
			| json.name                | test user              |
			| json.phoneNumber         | \+91-0000000000        |