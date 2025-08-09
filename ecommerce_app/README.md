# Ecommerce Flutter App — Clean Architecture
This project is a sample Ecommerce app built using Flutter and structured following Clean Architecture principles. It demonstrates how to organize your codebase with:

Contracts (Abstract classes/interfaces)

Repository pattern

Local & Remote Data Sources

Dependency Inversion

Network connection checking

## Architecture Layers

```
📦lib
 ┣ 📂core
 ┃ ┣ 📂error
 ┃ ┃ ┣ 📜exceptions.dart
 ┃ ┃ ┗ 📜failures.dart
 ┃ ┣ 📂platform
 ┃ ┃ ┗ 📜network_info.dart
 ┃ ┗ 📂utils
 ┃ ┃ ┗ 📜api_client_helper.dart
 ┣ 📂features
 ┃ ┗ 📂products
 ┃ ┃ ┣ 📂data
 ┃ ┃ ┃ ┣ 📂datasources
 ┃ ┃ ┃ ┃ ┣ 📜product_local_data_source.dart
 ┃ ┃ ┃ ┃ ┗ 📜product_remote_data_source.dart
 ┃ ┃ ┃ ┣ 📂models
 ┃ ┃ ┃ ┃ ┗ 📜product_model.dart
 ┃ ┃ ┃ ┗ 📂repositories
 ┃ ┃ ┃ ┃ ┗ 📜product_repository_impl.dart
 ┃ ┃ ┣ 📂domain
 ┃ ┃ ┃ ┣ 📂entities
 ┃ ┃ ┃ ┃ ┗ 📜product.dart
 ┃ ┃ ┃ ┣ 📂repositories
 ┃ ┃ ┃ ┃ ┗ 📜product_repository.dart
 ┃ ┃ ┃ ┗ 📂usecases
 ┃ ┃ ┃ ┃ ┣ 📜create_product.dart
 ┃ ┃ ┃ ┃ ┣ 📜delete_product.dart
 ┃ ┃ ┃ ┃ ┣ 📜update_product.dart
 ┃ ┃ ┃ ┃ ┣ 📜view_all_products.dart
 ┃ ┃ ┃ ┃ ┗ 📜view_specific_product.dart
 ┃ ┃ ┗ 📂presentation
 ┃ ┃ ┃ ┗ 📂bloc
 ┃ ┃ ┃ ┃ ┣ 📜product_bloc.dart
 ┃ ┃ ┃ ┃ ┣ 📜product_event.dart
 ┃ ┃ ┃ ┃ ┗ 📜product_state.dart
 ┗ 📜main.dart
 ```