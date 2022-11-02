![](https://img.shields.io/badge/Microverse-blueviolet)

# Blog Application ![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white) ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
 
> This project is a blog that allows the user to create posts, comment and like them. The whole project is based on the ERDiagram below:

![blog_app_diagram](./app/assets/images/blog_app_erd.png)

## Built With

- [x] Ruby (programming language)
- [x] Rails (framework)
- [x] PostgreSQL (database)
- [x] Linters: [Rubocop](https://rubocop.org/)
- [x] Linters: [Stylent](https://stylelint.io/)
- [x] Visual Studio Code (code editor)
- [x] RSpec (testings) 

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

- [x] A web browser like Google Chrome.
- [x] A code editor like Visual Studio Code with Git and Ruby.

You can check if Git is installed by running the following command in the terminal.
```
$ git --version
```

Likewise for Ruby installation.
```
$ ruby --version && irb
```

### Setup

Clone the repository using the GitHub link provided below.

### Install

In the terminal, go to your file directory and run this command.

```
$ git clone https://github.com/VitorGuedesMadeira/Blog-App.git
```
```
$ cd Blog-App
```
Run the following command to install all dependencies.
```
$ bundle install
```
```
$ code .
```

### Database

To create your local Database
```
$ rails db:create
```
```
$ rails db:migrate
```
To populate your Database
```
$ rails db:seed
```

### Run tests

Run the local server with:
```
$ rails server
```
Open it by accessing http://localhost:3000/ on your browser.

### Run tests

To install rspec, in the terminal kindly run this command

```
$ gem install rspec
```

To run tests, please run this command

```
$ rspec ./spec/#{filename}_spec.rb
```

### Usage

Kindly modify the files as needed.

## Author

👤 **Vitor Guedes Madeira**
- GitHub: [@vitorguedesmadeira](https://github.com/VitorGuedesMadeira)
- Twitter: [@CDahguedes](https://twitter.com/CDahguedes)
- LinkedIn: [Vitor Guedes](https://www.linkedin.com/in/vitor-guedes-madeira/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](hhttps://github.com/VitorGuedesMadeira/Capstone-Ruby/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/)
- Code Reviewers

## 📝 License

This project is [MIT](./MIT.md) licensed.
