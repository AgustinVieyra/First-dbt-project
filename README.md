The purpose of this project is transforming the raw data from a SQL database to be used to gather BI (Business Intelligence) insights for as e-commerce store know as Jaffle Shop.

This was made in a series of modular queries done in the DBT developing environment (saved as the Develop Branch), and then put to deployment (gathered in this same repository as the Master Branch).
This data is going to be used for a further BI examination using Chartio, Looker or Tableau (still a pending decision).
The database was stored in BigQuery.

The project comes with its own documentation made with help of dbt.

The code consists of three v tables relating the info of customers, orders and payments. And then displayed on the marts/dim_customers.sql file.

### Resources to know more about dbt:
- Learn more in the [docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for FAQ and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find the different [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
