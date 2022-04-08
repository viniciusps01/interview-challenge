# Clean Architecture + TDD + SOLID + Dependency Injection + GitFlow + Mobx

![shopping_app_final_result](/images/final-result.png)

# Flutter Interview Challenge

This app is part of an interview process. It took me about one week to finish. I hope you enjoyed it and
I'm looking forward to get your feedback about it.

# The Flutter Challenge

We have our partners need to manage their store's shopping cart and they want this solution to be a mobile app.

So, once we know how to create Flutter mobile apps, we just need to create it as the following:

- The first page of the app will present a list of products ( the data source is all up to you, can be a backend service or a local storage, you decide ).
  - Each product is a card, and the screen presentation for all the cards is also up to you to decide.
  - Each card has a add button and a remove button.
  - The page also haave a floating button representing the shopping cart with the number of products that are in the cart with no number being shown if the cart is empty
- When we touch the floating button we navigate to a new screen that show us all the items in the cart where each item is represented for the same card bellow
  - In the cart page we may have a button to empty the cart and be automatically redirected to the products page.

# Development

Now I'll go though the development phase.

## Architecture

As developer we know that we should fight for the architecture, since I was working alone this fight was
gone briefly. I've decide to go with Clean Architecture. The reasons included:

- Since the requirements aren't well defined, this architecture will make sure that changes can be hold with ease.
- Scalability will not be problem
- Easy to setup tests
- No need to think about data sources at the beginning of the project
- No need to worry about state management at the beginning of project
- so on

## Test Methodology

I've chosen TDD (Test Driven Development) because it's really great. Because of time constraints I have
worked just with unit tests.

## Entities and Use Cases

The next step on the development phase was define entities and use cases.

### Entities

- Cart
- CartItem
- Product

### Use Cases

- AddItemToCart
- RemoveItemFromCart
- GetAllProducts
- ClearCart
- RetrieveCart

## Version Control

For versioning my code I'd decide to use Git and GitFlow.

## Dependency Injection

In order to inject dependencies I've chosen Get_it just because I've used in the past and
it proved to work great.

## State Management

I've chosen Mobx because I got a suggestion to use it. Before this project I didn't knew
nothing about this sate management solution and that's the reason why there are some
boilerplate code in my controllers.

## Mockups

After finishing the data and domain layers and after worked on the controllers from the
Presentation layer I did create some simple mockups using Figma.

![shopping_app_mockups](/images/mockups.jpg)

[Mockups](https://www.figma.com/file/XPyOVNnLjZAcbHJylsBN5v/Flutter-Challenge?node-id=0%3A1)

## UI

After creating the mockups I did create my pages, widgets and components. Then I integrate them
with the controllers.

## Problem

Besides having some boilerplate code on my controllers I have to mention one other problem related to
the achitecture. If don't look closely to the source code, and even you do, you may not notice one
'small problem'. The fact is that I'm using my Dtos (children of my entities) inside my Domain. The thing
is that Domain shouldn't know nothing about Data or Presentation layer. I've noticed this problem and
decided to not solve it (because of time constraints).

### How to Solve This

#### Solving 1

- Create Dto interfaces in the Domain layer. Each Dto should accept their related Entity via constructor or via function argument.
- Implement Domain's Dtos in the Data layer.
- Then when needing some Json Serialization for instance, we should just use those Dtos.

#### Solving 2

Another way of solving this would be just puting the Dto logic directly inside the entity. This approach, otherwise, would be seen as a 'dirty' one by some people.

## Final Result

I think that the final result is acceptable, considering the time constraints. What about you, plese, let me know.

![shopping_app_final_result](/images/final-result.png)
