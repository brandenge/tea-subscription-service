<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

</div align="center">
  <h3 align="center">Tea Subscription Service</h3>

  <p align="center">
    <a href="https://github.com/brandenge/tea-subscription-service/issues">Report Bug</a>
    ·
    <a href="https://github.com/brandenge/tea-subscription-service/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#database-schema">Database Schema</a></li>
    <li><a href="#endpoints">Endpoints</a></li>
    <li><a href="#testing">Testing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

## About The Project

This project is a Ruby on Rails API for a tea subscription service where customers can subscribe to different kinds of teas. It exposes the 3 endpoints that return JSON formatted per the convention outlined by the [JSON API Specification](https://json-schema.org/).

A summary of the endpoints is as follows:

1) Subscriptions index - returning data for all of the subscriptions,
2) Activate (create) subscription
3) Cancel subscription

- [GitHub Repository][github-repo]

### Built With

- [![Ruby][ruby-shield]][ruby-url]
- [![Ruby on Rails][rails-shield]][rails-url]
- [![PostgreSQL][postgres-shield]][postgres-url]
- [![Postman][postman-shield]][postman-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

### Prerequisites

- Ruby version 2.7.2
- Rails version 7.0.6
- PostgreSQL version 14.8

### Installation

Run all commands from the application's root directory.

- Clone the repo with (for SSH): `git@github.com:brandenge/tea-subscription-service.git`
- Install Ruby gems with `bundle install`
- Create database, run migrations, and seed database with: `rails db:{drop,create,migrate,seed}`
- Start server with: `rails server`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Database Schema

![Database Schema Diagram](app/images/database-schema.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Endpoints

<details>
    <summary>GET
        <code>/subscriptions</code>
        - Subscriptions Index - return data for all subscriptions
    </summary>

```json
GET /subscriptions
HTTP 200 OK
Allow: GET
Content-Type: application/json
Vary: Accept

{
    "data": [
        {
            "id": "2",
            "type": "subscription",
            "attributes": {
                "customer_id": 1,
                "tea_id": 2,
                "title": "Huangjin Gui",
                "price": 2847,
                "status": "Cancelled",
                "frequency": 5,
                "created_at": "2023-07-27T15:57:53.727Z",
                "updated_at": "2023-07-27T15:57:53.727Z"
            },
            "relationships": {
                "customer": {
                    "data": {
                        "id": "1",
                        "type": "customer"
                    }
                },
                "tea": {
                    "data": {
                        "id": "2",
                        "type": "tea"
                    }
                }
            }
        },
        {
            "id": "3",
            "type": "subscription",
            "attributes": {
                "customer_id": 2,
                "tea_id": 2,
                "title": "Rougui",
                "price": 3800,
                "status": "Active",
                "frequency": 23,
                "created_at": "2023-07-27T15:57:53.729Z",
                "updated_at": "2023-07-27T15:57:53.729Z"
            },
            "relationships": {
                "customer": {
                    "data": {
                        "id": "2",
                        "type": "customer"
                    }
                },
                "tea": {
                    "data": {
                        "id": "2",
                        "type": "tea"
                    }
                }
            }
        },
        {
            "id": "4",
            "type": "subscription",
            "attributes": {
                "customer_id": 3,
                "tea_id": 3,
                "title": "Sun Moon Lake",
                "price": 2064,
                "status": "Active",
                "frequency": 28,
                "created_at": "2023-07-27T15:57:53.732Z",
                "updated_at": "2023-07-27T15:57:53.732Z"
            },
            "relationships": {
                "customer": {
                    "data": {
                        "id": "3",
                        "type": "customer"
                    }
                },
                "tea": {
                    "data": {
                        "id": "3",
                        "type": "tea"
                    }
                }
            }
        },
        {
            "id": "5",
            "type": "subscription",
            "attributes": {
                "customer_id": 4,
                "tea_id": 4,
                "title": "Serendib",
                "price": 2748,
                "status": "Active",
                "frequency": 8,
                "created_at": "2023-07-27T15:57:53.734Z",
                "updated_at": "2023-07-27T15:57:53.734Z"
            },
            "relationships": {
                "customer": {
                    "data": {
                        "id": "4",
                        "type": "customer"
                    }
                },
                "tea": {
                    "data": {
                        "id": "4",
                        "type": "tea"
                    }
                }
            }
        },
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "customer_id": 1,
                "tea_id": 1,
                "title": "Patchouli",
                "price": 2791,
                "status": "Cancelled",
                "frequency": 15,
                "created_at": "2023-07-27T15:57:53.722Z",
                "updated_at": "2023-07-27T16:00:54.256Z"
            },
            "relationships": {
                "customer": {
                    "data": {
                        "id": "1",
                        "type": "customer"
                    }
                },
                "tea": {
                    "data": {
                        "id": "1",
                        "type": "tea"
                    }
                }
            }
        },
        {
            "id": "6",
            "type": "subscription",
            "attributes": {
                "customer_id": 1,
                "tea_id": 1,
                "title": "Tea Subscription Title",
                "price": 600,
                "status": "Active",
                "frequency": 5,
                "created_at": "2023-07-27T16:00:59.754Z",
                "updated_at": "2023-07-27T16:00:59.754Z"
            },
            "relationships": {
                "customer": {
                    "data": {
                        "id": "1",
                        "type": "customer"
                    }
                },
                "tea": {
                    "data": {
                        "id": "1",
                        "type": "tea"
                    }
                }
            }
        }
    ]
```

</details>

<details>
    <summary>POST
        <code>/subscriptions</code>
        - Create/Activate Subscription - creates a new subscription and sets it to 'Active' status by default
    </summary>

```json
POST /subscriptions
HTTP 201 OK
Allow: POST
Content-Type: application/json
Vary: Accept

{
    "data": {
        "id": "6",
        "type": "subscription",
        "attributes": {
            "customer_id": 1,
            "tea_id": 1,
            "title": "Tea Subscription Title",
            "price": 600,
            "status": "Active",
            "frequency": 5
        }
    }
}
```

</details>

<details>
    <summary>PUT
        <code>/subscriptions/:id</code>
        - Cancel Subscription - updates the subscription's status to 'Cancelled'. It does not delete the subscription so that the same subscription can be renewed again later.
    </summary>

```json
GET /subscriptions/1
HTTP 200 OK
Allow: PUT
Content-Type: application/json
Vary: Accept

{
    "data": {
        "id": "1",
        "type": "subscription",
        "attributes": {
            "customer_id": 1,
            "tea_id": 1,
            "title": "Patchouli",
            "price": 2791,
            "status": "Cancelled",
            "frequency": 15
        }
    }
}
```

</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Testing

The test suite is built with the following gems and tools:

1) `rspec-rails` - RSpec test framework for Ruby
2) `simplecov` - SimpleCov for test coverage reports
3) `factory_bot_rails` - FactoryBot to replace fixtures and dynamically create sample data
4) `faker` - Faker to generate random data
5) `capybara` - Capybara to test HTTP responses
6) `shoulda-matchers` - For additional built-in test methods that extend RSpec and Capybara
7) Postman - for live endpoint testing

To run the RSpec test suite, navigate to the application's root directory and run:

```sh
bundle exec rspec
```

To open the full SimpleCov coverage report in your browser, navigate to the application's root directory and run:

```sh
open coverage/index.html
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

Potential features, functionality, or refactors for the future:

- Add error handling and sad-path testing
- Add Swagger API documentation
- Additional endpoints for customers and teas
- Consume an API (such as the [Spoonacular API](https://spoonacular.com/food-api/docs)) for additional data

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

## Contact

- Branden Ge: [![LinkedIn][linkedin-shield]][branden-li-url] [![GitHub][github-shield]][branden-github-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[contributors-shield]: https://img.shields.io/github/contributors/brandenge/tea-subscription-service.svg?style=for-the-badge
[contributors-url]: https://github.com/brandenge/tea-subscription-service/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/brandenge/tea-subscription-service.svg?style=for-the-badge
[forks-url]: https://github.com/brandenge/tea-subscription-service/network/members
[stars-shield]: https://img.shields.io/github/stars/brandenge/tea-subscription-service.svg?style=for-the-badge
[stars-url]: https://github.com/brandenge/tea-subscription-service/stargazers
[issues-shield]: https://img.shields.io/github/issues/brandenge/tea-subscription-service.svg?style=for-the-badge
[issues-url]: https://github.com/brandenge/tea-subscription-service/issues
[license-shield]: https://img.shields.io/github/license/brandenge/tea-subscription-service.svg?style=for-the-badge
[license-url]: https://github.com/brandenge/tea-subscription-service/LICENSE.txt

[github-repo]: https://github.com/brandenge/tea-subscription-service

[ruby-shield]: https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[ruby-url]: https://ruby-doc.org

[rails-shield]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=rubyonrails&logoColor=white
[rails-url]: https://guides.rubyonrails.org/

[postgres-shield]: https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white
[postgres-url]: https://www.postgresql.org/

[postman-shield]: https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white
[postman-url]: https://www.postman.com/

[linkedin-shield]: https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white
[github-shield]: https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white


[branden-li-url]: https://www.linkedin.com/in/brandenge/
[branden-github-url]: https://github.com/brandenge
