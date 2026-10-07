# Online Bookstore & Cities Web Service

An educational bookstore project built with C# and ASP.NET Web Forms.
It includes a separate SOAP web service for country and city selection
during checkout.

## Features

- Welcome page with navigation to the bookstore.
- Book catalog with images, summaries, and ratings.
- Search by book title and filter by category.
- Session-based shopping cart with item removal.
- Customer information, order recording, and confirmation page.
- Administration pages for managing books, authors, and categories.
- Sales reports for today, a selected date, or a date range.
- Contact form that saves messages to the database.
- Country and city selection through a separate SOAP service.
- Custom-designed thank-you card.

## Tech Stack

- C#
- ASP.NET Web Forms
- .NET Framework 4.7.2
- HTML and CSS
- Microsoft Access databases
- ADO.NET / OleDb
- ASMX SOAP Web Service
- Visual Studio and IIS Express

## Project Structure

- CitiesWebService/
  - CitiesWebService.sln
  - CitiesWebService/: SOAP service project
- NewWebAapplication/
  - NewWebAapplication.sln
  - NewWebAapplication/: bookstore project

## Databases

- Database10.accdb: books, authors, categories, users, customers,
  orders, order details, and contact messages.
- Database12.accdb: countries and cities.

All stored personal, account, and payment-form data is fictitious
and was created for learning and testing.

## Running Locally

### Requirements

- Windows
- Visual Studio with ASP.NET and web development tools
- .NET Framework 4.7.2 targeting pack
- Microsoft ACE OLEDB provider compatible with the application's
  process architecture

### Start the Cities Service

1. Open CitiesWebService/CitiesWebService.sln.
2. Restore NuGet packages.
3. Set WebService1.asmx as the start page.
4. Run the project.
5. Confirm that GetCountryNames and GetCitiesNames return data.

The bookstore is configured to use:
https://localhost:44307/WebService1.asmx

If the service runs at a different address, update its URL in the
bookstore's Web.config application settings.

### Start the Bookstore

1. Keep the cities service running.
2. Open NewWebAapplication/NewWebAapplication.sln in another
   Visual Studio window.
3. Restore NuGet packages.
4. Set adminPages/WelcomePage.aspx as the start page.
5. Run the project.
6. Enter the bookstore, add a book to the cart, and test country
   and city selection during checkout.

## Manual Verification

The prepared local copy was manually checked for:

- Successful country and city service responses.
- Welcome page navigation.
- Book and image display.
- Shopping cart flow.
- Country and city selection during checkout.

## Current Limitations

This is a learning project and is not ready for production use.

- Login verifies both username and password using a parameterized query.
  Administrator access is controlled by the IsAdmin database field.
  Further authentication hardening is needed before production use.تمم
- Passwords are currently stored as plain text.
- SQL queries require parameterization.
- Checkout totals must be recalculated on the server.
- Order saving requires transaction handling.
- Uploaded files require stronger validation.
- The payment form is a demonstration; no payment gateway is integrated.
- Automated tests are not included.

## Learning Outcomes

The project demonstrates database-backed web development,
CRUD operations, session management, sales reporting,
and integration between a web application and a SOAP service.