# Agify API - Age prediction from a first name

## Installation 
    
In order to run this application, you'll have to install the dependencies first, which are located in the pubspec.yaml file.
Execute this command in order to install them:
```bash
flutter pub get
```

## Usage

In order to use this application, you'll have to run the following command:
```bash
flutter run -d [device-id]
```
You can check your device id with:
```bash
flutter devices
```

## The logic behind the application

We are using ![Agify API](https://agify.io/) in order to predict the age of a person based on their first name. The returning response from the API is a JSON object which we unpack, and use the 'name' and 'age' fields in order to display the result to the user.

## State management

We are using BLoC (Business Logic Component) as a state management solution. The BLoC pattern is a way to separate your UI from the business logic of your application. 
We've split the app into five different folders:

1. **blocs**: Contains the BLoC classes.
2. **models**: Contains the model classes.
3. **repositories**: Contains the repository classes.
4. **screens**: Contains the UI classes.
5. **widgets**: Contains the widgets used in the UI.

The BLoC classes are responsible for managing the state of the application. They receive events from the UI, process them, and emit new states. The UI classes listen to the BLoC classes and rebuild themselves when a new state is emitted. This is mentioned in the ![official documentation](https://bloclibrary.dev/architecture/).


## Demo

https://github.com/tmukh/agify_app/assets/63726184/e5528a26-c5cc-41ae-b6d3-67b83a058839

