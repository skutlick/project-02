# project-02
Project 2
Welcome to the ETL mini project for building a data pipeline. This project will involve extracting, transforming, and loading data using Python, Pandas, and Postgres. You will work with a partner to complete this project.

Project Overview
In this project, you will:
- Extract and transform data from Excel files into DataFrames.
- Export DataFrames as CSV files.
- Design an Entity-Relationship Diagram (ERD) and create table schemas.
- Upload the CSV data into a Postgres database.

Important Milestones
- Day 3: Ensure at least 50% of your project is complete by this day to stay on track.
- Collaboration: Regularly communicate with your partner and support each other.

Files and Setup
Files
- Starter Code and Resources (Contains crowdfunding.xlsx and contacts.xlsx)

Setup Instructions
Repository Creation:
- One member of your group should create a new GitHub repository named Crowdfunding_ETL.
- Add your partner as a collaborator.
- Do not use an existing repository.

Clone the Repository:
- Clone the new repository to your local machine.

Prepare Files:
- Rename ETL_Mini_Project_starter_code.ipynb to ETL_Mini_Project_[FirstInitial][LastName]_[FirstInitial]      [PartnerLastName].ipynb (e.g., ETL_Mini_Project_NRomanoff_JSmith.ipynb).
- Add the Jupyter notebook file and the Resources folder (containing crowdfunding.xlsx and contacts.xlsx) to your repository.

Push Changes:
- Commit and push the changes to GitHub.

Sync with Partner:
- Have your partner pull the latest changes to ensure both of you have the updated files.

Instructions
1. Create the Category and Subcategory DataFrames
- Category DataFrame:
  - Extract and transform data from crowdfunding.xlsx.
  - Columns:
      - category_id (sequential IDs: cat1, cat2, ...)
      - category (Category titles)
  - Export as category.csv.

Subcategory DataFrame:
- Extract and transform data from crowdfunding.xlsx.
- Columns:
  - subcategory_id (sequential IDs: subcat1, subcat2, ...)
  - subcategory (Subcategory titles)
- Export as subcategory.csv.

2. Create the Campaign DataFrame
- Extract and transform data from crowdfunding.xlsx.
- Columns:
  - cf_id
  - contact_id
  - company_name
  - description (formerly blurb)
  - goal (float type)
  - pledged (float type)
  - outcome
  - backers_count
  - country
  - currency
  - launch_date (formerly launched_at, converted to datetime)
  - end_date (formerly deadline, converted to datetime)
  - category_id (matching category_id in Category DataFrame)
  - subcategory_id (matching subcategory_id in Subcategory DataFrame)
- Export as campaign.csv.

3. Create the Contacts DataFrame
Choose between the following options:
Option 1: Python Dictionary Methods
- Import contacts.xlsx into a DataFrame.
- Convert each row to a dictionary, then to a new DataFrame.
- Split name into first_name and last_name.
- Export as contacts.csv.

Option 2: Regular Expressions
  - Import contacts.xlsx into a DataFrame.
  - Use regex to extract contact_id, name, and email.
  - Convert contact_id to integer.
  - Split name into first_name and last_name.
  - Export as contacts.csv.

4. Create the Crowdfunding Database
- ERD and Schema:
    - Sketch an ERD using QuickDBD.
    - Create a table schema for each CSV file.
    - Save schema as crowdfunding_db_schema.sql.

Database Setup:
- Create a Postgres database named crowdfunding_db.
- Use crowdfunding_db_schema.sql to create tables.
- Verify table creation with SELECT statements.
- Import each CSV file into the corresponding table.
- Verify data integrity with SELECT statements.

Hints
- To split columns: df[["new_column1","new_column2"]] = df["column"].str.split().
- Use numpy.arange to create sequential IDs.
- Use astype() to convert columns to float.
- Convert date columns to datetime using appropriate methods.
- Use pandas.DataFrame.merge() for merging DataFrames.
