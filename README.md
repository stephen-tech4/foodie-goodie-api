# Foodie Goodie API

Welcome to Foodie Goodie API, a Ruby on Rails application that serves as the backend for a delightful food-related platform. This API is built with Rails 7.1, Ruby 3.1.0, GraphQL, GraphiQL, Postgresql, and utilizes the Faker gem for generating sample data.

## Prerequisites
Before you begin, ensure you have the following installed on your local machine:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (version 3.1.0)
- [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html#installing-rails) (version 7.1)
- [PostgreSQL](https://www.postgresql.org/download/)
- [Bundler](https://bundler.io/) (to manage gem dependencies)

## Getting Started

1. Clone the repository to your local machine:

   ```
   git clone https://github.com/stephen-tech4/foodie-goodie-api.git

2. Navigate to the project directory

    ```
   cd foodie-goodie-api

3. Install gem dependencies

    ```
   bundle install

4. Set up database and seed sample data

    ```
   rails db:create
   rails db:migrate
   rails db:seed

5. Start the Rails server

    ```
   rails server
   
6. Access GraphQL API and GraphiQL interface at <http:localhost:3000/graphiql>

Happy coding and bon appétit! 🍔🍕🍰