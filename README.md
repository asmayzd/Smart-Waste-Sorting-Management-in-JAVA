# Smart-Waste-Sorting-Management-in-JAVA

A Java object-oriented application simulating the intelligent management of waste sorting. Users deposit their waste in connected bins, earn loyalty points, and can redeem discounts at partner stores. Administrators and super administrators manage recycling centers, users, bins, and partnerships.

## Features

### User Features
- **Login and Registration** : Create and manage user accounts.
- **Waste Deposit** : Automatic verification of waste type and weight.
- **Points and Rewards** : Earn loyalty points for correct sorting.
- **Redeem Points** : Obtain discount vouchers at partner stores.
- **History** : View past deposits and vouchers used.

### Administrator Features
- **Manage Bins** : Add, modify, empty, or remove bins.
- **Manage Users** : Create, edit, delete, and transfer users between recycling centers.
- **View Statistics** : Total and average waste deposited at the center.
- **Manage Partnerships** : Add and track partner stores and contracts.
- **Manage Product Categories** : Create, modify categories and add products.

### Super Administrator Features
- **Manage All Recycling Centers** and their administrators.
- Add, remove, and transfer users between centers.
- Supervise the entire network of centers and view overall statistics.

## Project Structure

The project is divided into several packages:

- **application** : JavaFX main entry point.
- **classe** : Classes representing entities in the UML diagram.
- **DAO** : Data Access Objects for MySQL (CRUD operations).
- **FXML** : FXML files generated with Scene Builder.
- **IHM** : JavaFX controllers managing user interactions.
- **test** : Unit tests for business logic and DAOs.
- **MainTest** : Global tests for the whole application.

## Installation and Usage

1. Clone the repository:  
2. Import the project into your Java IDE (IntelliJ, Eclipse, NetBeans).
3. Set up the MySQL database tri_selectif with the required tables.
4. Run the application via the main class in the application package.

## Technologies Used
- **Java 17**
- **JavaFX** for the graphical interface
- **MySQL** for data management
- **Maven** for dependency management

## Challenges
- Integrating the graphical interface with existing business logic.
- Managing navigation between different screens.
- Keeping user and bin data consistent across views.

## Future Improvements
- Enhance the GUI with CSS styling.
- Automatic deletion of expired products.
- Add stricter rules for contract validity and discount management.

## Dev Team
Mattéo DABOUT
Emma DOSSANTOS
Aicha EISH
Baptiste ROBARD
Asma YAZIDI
