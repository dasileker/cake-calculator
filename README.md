# Cake Calculator

The Cake Calculator is a Ruby on Rails web application that helps users determine how many cakes they can bake based on a given recipe and the available ingredients. The application takes the recipe and the available ingredients as input and returns the maximum number of cakes that can be baked.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Technology Stack](#technology-stack)
- [Contributing](#contributing)
- [License](#license)


## Preview of The App:

# Screenshot.

<img src= "./app/assets/images/Capture d'écran 2023-03-15 154522.png">

## Installation

Before you can run the Cake Calculator, make sure you have Ruby, Rails, and other dependencies installed on your system. Follow these steps to install the application:

1. Extract the folder via Zip:

2. Change to the application directory:

- `cd cake`

3. Install the required gems:

- `bundle install`

4. Set up the database:

- `rails db:create db:migrate`

5. Start the Rails server:

- `rails s`


6. Open your web browser and navigate to `http://localhost:3000` to access the Cake Calculator application.

## Usage

To use the Cake Calculator, follow these steps:

1. Enter the recipe in the Recipe input field using the following format: `{ingredient1: amount1, ingredient2: amount2, ...}`.
Example: `{flour: 500, sugar: 200, eggs: 1}`

2. Enter the available ingredients in the Ingredients input field using the same format.
Example: `{flour: 1200, sugar: 1200, eggs: 5, milk: 200}`

3. Click the "Calculate" button to find out how many cakes you can bake.

## Features

- Simple and user-friendly interface
- Responsive design that works on various devices
- Clear input fields and instructions for entering recipes and ingredients
- Custom styling and SVG icons for a visually appealing user experience

## Technology Stack

- Ruby on Rails
- HTML
- CSS
- JavaScript
- SQLite (development)

## Contributing

If you'd like to contribute to the Cake Calculator project, please follow these steps:

1. Fork the repository
2. Create a new branch: `git checkout -b feature/my-feature`
3. Make your changes and commit them: `git commit -am "Add my feature"`
4. Push the changes to your fork: `git push origin feature/my-feature`
5. Create a pull request against the original repository

## License

The Cake Calculator is released under the [MIT License](https://opensource.org/licenses/MIT).

