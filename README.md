# Mr. Tea

[![Contributors][contributors-shield]][contributors-url]
[![Issues][issues-shield]][issues-url]
[![Stargazers][stars-shield]][stars-url]
[![Forks][forks-shield]][forks-url]
</br>
![Version][version-badge]
[![Ruby Style Guide][rubocop-badge]][rubocop-url]


## Table of Contents

- [Overview](#overview)
- [Tools Utilized](#framework)
- [Contributors](#contributors)
- [Project Configurations](#setup)
- [Endpoint Documentation](#endpoint-documentation)


------

### <ins>Overview</ins>
<img src="https://user-images.githubusercontent.com/58891447/140989998-e000a641-cafc-4419-b914-8550f345d069.gif" width=50%/>  

</br>

**Mr. Tea** is the final take-home challenge for Mod 4 of 4 for Turing School's Back End Engineering Program.

The challenge was to project-plan and build a [JSON API 1.0 spec](https://jsonapi.org/)-compliant REST API that models a tea subscription service, which could be consumed by a separate front end web application framework.

Learning goals and areas of focus consisted of:
- Showcasing a strong understanding of `Rails` conventions
- Creating `RESTful` routes
- Producing well-organized, `object-oriented` code
- Utilizing `test-driven development`
- Producing clear `documentation`

Project specs:
- [Technical Requirements](https://mod4.turing.edu/projects/take_home/take_home_be)
- [Evaluation Rubric](https://mod4.turing.edu/projects/take_home/take_home_rubric)


### <ins>Framework</ins>
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white" />
  <img src="https://img.shields.io/badge/JavaScript-f74114.svg?&style=flaste&logo=JavaScript&logoColor=white" />
</p>

#### Tools
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/Git-33b818.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-f74114.svg?&style=flat&logo=postman&logoColor=white" />
</p>

#### Gems
<p>
  <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  </br>
  <img src="https://img.shields.io/badge/factory--bot-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/faker-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/database--cleaner-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  </br>
  <img src="https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/webmock-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/vcr-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  </br>
  <img src="https://img.shields.io/badge/jsonapi--serializer-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

#### Development Principles
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />  
</p>

### <ins>Contributors</ins>

👤  **Taylor Varoglu**
- Github: [Taylor Varoglu](https://github.com/tvaroglu)
- LinkedIn: [Taylor Varoglu](https://www.linkedin.com/in/taylorvaroglu/)


## <ins>Setup</ins>

This project requires Ruby 2.7.2 and Rails 5.2.6.

* Fork and/or clone this repository
* Install gems and set up your database:
    * `$ bundle && bundle update`
    * `$ rails db:{create,migrate,seed}`
* Run the test suite with `$ bundle exec rspec -fd`
* Run your development server with `$ rails s`


### Project Configurations

* Ruby version:
    ```bash
    $ ruby -v
    ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
    ```

* [System dependencies](https://github.com/tvaroglu/mr_tea/blob/main/Gemfile):
    ```bash
    $ rails -v
    Rails 5.2.6
    ```

* Database creation:
    ```bash
    $ rails db:{create,migrate,seed}
    Created database 'mr_tea_development'
    Created database 'mr_tea_test'
    ```

* How to run the test suite:
    ```bash
    $ bundle exec rspec -fd
    ```

* [Local deployment](http://localhost:3000), for testing:
    ```bash
    $ rails s
    => Booting Puma
    => Rails 5.2.6 application starting in development
    => Run `rails server -h` for more startup options
    Puma starting in single mode...
    * Version 3.12.6 (ruby 2.7.2-p137), codename: Llamas in Pajamas
    * Min threads: 5, max threads: 5
    * Environment: development
    * Listening on tcp://localhost:3000
    Use Ctrl-C to stop
    ```


### <ins>Endpoint Documentation</ins>


The `base path` of each endpoint is:

```
/api/v1
```

- For `GET` requests, you can send the requests through your internet browser, or utilize an API client (i.e. [Postman](https://www.postman.com/))
- For `POST` or `PATCH` requests, you will need to use an API client to provide the required request body
<!-- TODO: add Postman collection after check-in -->
- A fully functional [Postman collection](#) is included with this repository, to further assist with UAT and endpoint exploration

#### Tea Endpoint
*Get all teas*
```
GET /api/v1/teas
```
**Example Response:**

200 (OK)
```json
{
    "data": [
        {
            "id": "5fa3fd48d5ba620017ec1c09",
            "type": "tea",
            "attributes": {
                "name": "green",
                "description": "Rich in antioxidants and reduces inflammation.",
                "temperature": 80,
                "brew_time": 2
            }
        },
        {
            "id": "5fa3fdb0d5ba620017ec1c0a",
            "type": "tea",
            "attributes": {
                "name": "black",
                "description": "Boosts heart health and lowers cholesterol.",
                "temperature": 85,
                "brew_time": 3
            }
        },
        {
            "id": "5fa3fe47d5ba620017ec1c0b",
            "type": "tea",
            "attributes": {
                "name": "chamomile",
                "description": "Lowers blood sugar and prevents osteoporosis.",
                "temperature": 93,
                "brew_time": 3
            }
        },
        {
            "id": "5fa3feb2d5ba620017ec1c0c",
            "type": "tea",
            "attributes": {
                "name": "hibiscus",
                "description": "Lowers blood pressure and boosts liver health.",
                "temperature": 93,
                "brew_time": 3
            }
        },
        {
            "id": "5fa3ff13d5ba620017ec1c0d",
            "type": "tea",
            "attributes": {
                "name": "jasmine",
                "description": "Relieves stress and helps in weight loss.",
                "temperature": 80,
                "brew_time": 2
            }
        },
        {
            "id": "5fa3ff74d5ba620017ec1c0e",
            "type": "tea",
            "attributes": {
                "name": "mate",
                "description": "Boosts energy and mental focus.",
                "temperature": 80,
                "brew_time": 3
            }
        },
        {
            "id": "5fa3ffbbd5ba620017ec1c0f",
            "type": "tea",
            "attributes": {
                "name": "oolong",
                "description": "Lowers risk of cancer and prevents diabetes.",
                "temperature": 80,
                "brew_time": 2
            }
        },
        {
            "id": "5fa40008d5ba620017ec1c10",
            "type": "tea",
            "attributes": {
                "name": "pu-erh",
                "description": "Protects bone health and reduces stress.",
                "temperature": 87,
                "brew_time": 3
            }
        },
        {
            "id": "5fa40087d5ba620017ec1c11",
            "type": "tea",
            "attributes": {
                "name": "peppermint",
                "description": "Relieves headaches and improves digestion.",
                "temperature": 93,
                "brew_time": 3
            }
        },
        {
            "id": "5fa40117d5ba620017ec1c12",
            "type": "tea",
            "attributes": {
                "name": "rooibos",
                "description": "Good for heart health, digestion and skin.",
                "temperature": 100,
                "brew_time": 5
            }
        }
    ]
}
```

#### Subscription Endpoints
*Create a new tea subscription for an existing customer*

**Example Request:**
```
POST /api/v1/customers/{:id}/subscriptions
```
With the following `JSON` body:
```json
{
    "title": "yellow",
    "description": "Strengthens bones and lowers cholesterol.",
    "temperature": 75,
    "brew_time": 3,
    "tea_id": "5fa402618765bf0017f09759",
    "price": 9.5,
    "frequency": "Weekly",
    "status": "Active",
    "customer_id": 3
}
```
**Example Response:**

201 (Created)
```json
{
    "data": {
        "id": "4",
        "type": "subscription",
        "attributes": {
            "customer_id": 3,
            "tea_id": "5fa402618765bf0017f09759",
            "title": "yellow",
            "description": "Strengthens bones and lowers cholesterol.",
            "temperature": 75,
            "brew_time": 3,
            "price": 9.5,
            "frequency": "Weekly",
            "status": "Active"
        }
    }
}
```
**Example Request:**
```
POST /api/v1/customers/{:id}/subscriptions
```
With the following `JSON` body:
```json
{}
```
**Example Response:**

422 (Unprocessable Entity)
```json
{
    "errors": [
        "Tea can't be blank",
        "Description can't be blank",
        "Temperature can't be blank",
        "Temperature is not a number",
        "Brew time can't be blank",
        "Brew time is not a number",
        "Price can't be blank",
        "Price is not a number",
        "Frequency can't be blank",
        "Status can't be blank"
    ]
}
```
**Example Request:**
```
POST /api/v1/customers/foo/subscriptions
```
**Example Response:**

404 (Not Found)
```json
{
    "errors": [
        "Couldn't find Customer with 'id'=foo"
    ]
}
```
---
*Cancel an existing tea subscription*

**Example Request:**
```
PATCH /api/v1/customers/{:customer_id}/subscriptions/{:id}
```
With the following `JSON` body:
```json
{
    "status": "Cancelled"
}
```
**Example Response:**

200 (OK)
```json
{
    "data": {
        "id": "4",
        "type": "subscription",
        "attributes": {
            "customer_id": 3,
            "tea_id": "5fa402618765bf0017f09759",
            "title": "yellow",
            "description": "Strengthens bones and lowers cholesterol.",
            "temperature": 75,
            "brew_time": 3,
            "price": 9.5,
            "frequency": "Weekly",
            "status": "Cancelled"
        }
    }
}
```
**Example Request:**
```
PATCH /api/v1/customers/{:customer_id}/subscriptions/{:id}
```
With the following `JSON` body:
```json
{
    "status": "Foo"
}
```
**Example Response:**

422 (Unprocessable Entity)
```json
{
    "errors": [
        "'Foo' is not a valid status"
    ]
}
```
**Example Request:**
```
PATCH /api/v1/customers/{:customer_id}/subscriptions/bar
```
**Example Response:**

404 (Not Found)
```json
{
    "errors": [
        "Couldn't find Subscription with 'id'=bar"
    ]
}
```
---
*Get all tea subscriptions for an existing customer*

**Example Request:**
```
GET /api/v1/customers/{:id}/subscriptions
```
**Example Response:**

200 (OK)
```json
{
    "data": [
        {
            "id": "4",
            "type": "subscription",
            "attributes": {
                "customer_id": 3,
                "tea_id": "5fa402618765bf0017f09759",
                "title": "yellow",
                "description": "Strengthens bones and lowers cholesterol.",
                "temperature": 75,
                "brew_time": 3,
                "price": 9.5,
                "frequency": "Weekly",
                "status": "Active"
            }
        },
        {
            "id": "5",
            "type": "subscription",
            "attributes": {
                "customer_id": 3,
                "tea_id": "5fa402618765bf0017f09759",
                "title": "yellow",
                "description": "Strengthens bones and lowers cholesterol.",
                "temperature": 75,
                "brew_time": 3,
                "price": 9.5,
                "frequency": "Weekly",
                "status": "Cancelled"
            }
        }
    ]
}
```


### Schema Diagram
<img src="https://user-images.githubusercontent.com/58891447/141157680-59fc564c-c0fb-46fe-8dd9-9cb5384b6f53.png" width=100%>


</br>

#### Acknowledgements:
- [T-API](https://tea-api-vic-lo.herokuapp.com/#):
  - Created by [Victoria Lo](https://github.com/victoria-lo/TAPI), this API feeds the `Tea` data behind the mock `Subscription` data for each `Customer`

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/tvaroglu/mr_tea.svg?style=flat
[contributors-url]: https://github.com/tvaroglu/mr_tea/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/tvaroglu/mr_tea.svg?style=flat
[forks-url]: https://github.com/tvaroglu/mr_tea/network/members
[stars-shield]: https://img.shields.io/github/stars/tvaroglu/mr_tea.svg?style=flat
[stars-url]: https://github.com/tvaroglu/mr_tea/stargazers
[issues-shield]: https://img.shields.io/github/issues/tvaroglu/mr_tea.svg?style=flat
[issues-url]: https://github.com/tvaroglu/mr_tea/issues
[rubocop-badge]: https://img.shields.io/badge/code_style-rubocop-brightgreen.svg?style=flat
[rubocop-url]: https://github.com/rubocop/rubocop
[version-badge]: https://img.shields.io/badge/API_version-V1-or.svg?&style=flat&logoColor=white
