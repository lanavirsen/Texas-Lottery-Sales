# :tickets: Texas Lottery Sales Project

## Introduction

In this project, I'm exploring the dataset **"Texas Lottery® Sales by Fiscal Month/Year, Game and Retailer"**.

The project consists of three distinct parts:

- API querying with SoQL
- Local data processing with Python and Dask
- Data visualization with Tableau

### Objectives

- **Retrieving specific data using SoQL queries:**
    - Total ticket sales per fiscal year.
    - Cities with the highest ticket sales.
    - Game categories that generate the most ticket sales.
    - Counties with the most efficient ticket sales (highest net to gross sales ratio).

- **Analyzing trends with Python:**
    - Seasonal sales trends.
    - Ticket prices over time and their seasonal variations.

- **Creating an interactive dashboard with the following features:**
    - Geographical visualization of lottery sales, allowing for filtering by Game Type, Measurement Type, and Month.
    - Trends for gross and net sales, as well as for cancelled tickets, promotional tickets, and ticket returns over the entire registered period.
    - List of top cities for the selected County, Game Type, Measure Type and Month.
    - Percentage of net sales to gross sales.


### Tools

**API querying with SoQL**:
- **SoQL (Socrata Query Language)**: Used for querying the API to retrieve data.
- **Web Browser**: Utilized for running SoQL queries directly via URL.

**Local data processing with Python and Dask**:
- **Python**: Primary programming language used for data manipulation and analysis.
- **Dask**: Parallel computing library that scales Python code from single machines to large clusters, used for handling large datasets that do not fit into memory.
- **Pandas**: Python library for data manipulation and analysis, used for cleaning and transforming the dataset.
- **Matplotlib/Seaborn**: Visualization libraries in Python, employed for creating plots and graphs to explore data trends.
- **NumPy**: A fundamental package for scientific computing in Python.
- **Jupyter Notebook**: Interactive computing environment used for documenting the data analysis process.

**Data visualization with Tableau**:
- **Tableau Desktop**: Used for creating interactive and insightful visualizations.
- **Tableau Public**: Used for sharing visualizations publicly.

### Data Source

The dataset **"Texas Lottery® Sales by Fiscal Month/Year, Game and Retailer"** has been provided by **Texas Lottery Commission**.

- [Dataset link on data.texas.gov](https://data.texas.gov/dataset/Texas-Lottery-Sales-by-Fiscal-Month-Year-Game-and-/beka-uwfq/about_data) 
- Access & Use: This dataset is intended for public access and use.
- Copyright and Trademark Notice: [Link to texaslottery.com](https://www.texaslottery.com/export/sites/lottery/Misc/copyright.html) 

#### Disclosure

The dataset utilized in this project was sourced from the Texas Open Data Portal, which is publicly available and free to use. It's important to note, however, that the Texas Lottery Commission holds copyright and trademark protections over various elements associated with their data and brand. This encompasses all logos, text, content, including underlying HTML code, designs, and graphics depicted on their Internet website, safeguarded under United States and international copyright and trademark laws and treaties.

I do not claim any rights over these elements, and no such material has been reproduced within this project. The use of the dataset is for analytical and educational purposes only, adhering to the guidelines stipulated by the Texas Open Data Portal and respecting the copyright and trademark notice issued by the Texas Lottery Commission. Any specific trademarks or service marks mentioned within the dataset are duly recognized as the property of the Texas Lottery Commission, and their use in this project does not imply any affiliation with or endorsement by the Commission.

#### Dataset Versions

This project leveraged two distinct versions of the Texas Lottery® Sales dataset to accommodate different aspects of the analysis:

**API Access via SoQL Queries**

For real-time data analysis and access, a portion of this project utilized the Texas Lottery® Sales dataset through API calls. These calls were made using the Socrata Open Data API (SODA) and structured with SoQL (Socrata Query Language). This method enabled dynamic data retrieval, ensuring the most current data was analyzed.

It's noteworthy that the dataset is subject to ongoing updates, which means the query results obtained during the project may differ if re-executed at a later date. For those replicating this methodology, ensure to substitute `[APP_TOKEN]` with your valid app token to authenticate your API requests.

- Data Last Updated: March 14, 2024
- Data Coverage: 
    - Start Date: September 2020
    - End Date: March 2024
 
**Local Dataset Copy**

Due to server response limitations and to ensure uninterrupted data analysis, a local copy of the Texas Lottery® Sales dataset was downloaded and used for extensive data manipulation and analysis within Python. This approach was adopted to mitigate potential server timeouts and connectivity issues encountered during direct API access, allowing for a more stable and efficient data analysis process.

- Data Last Updated: January 25, 2024
- Data Coverage: 
    - Start Date: September 2020
    - End Date: January 2024

Unfortunately, due to the large size of the dataset file (7.5 GB), it cannot be included in the project's repository because of GitHub's file size limitations.

### Outcome

#### Retrieving Specific Data Using SoQL Queries

**Total ticket sales per fiscal year**:

- For fiscal year 2021, the total gross ticket sales amounted to approximately **$8.18 billion**.
- For fiscal year 2022, the total was approximately **$8.35 billion**.
- For fiscal year 2023, it was around **$8.78 billion**.
- For fiscal year 2024 (which was partially reported at the time of this analysis), the total is approximately **$4.61 billion**.

**Cities with the highest ticket sales**:

- In **Houston**, the total net ticket sales reached approximately **$3.05 billion**, making it the city with the highest net ticket sales in 2021-2014 fiscal years so far according to the dataset.
- **San Antonio** follows with total net ticket sales amounting to approximately **$2.30 billion**.
- **Austin** comes in third, with net ticket sales totaling approximately **$1.39 billion**.
- **Dallas** is fourth on the list, with total net ticket sales of approximately **$1.24 billion**.
- Finally, **Fort Worth** ranks fifth, with net ticket sales amounting to approximately **$712.43 million**.

**Game categories that generate the most ticket sales**:

- **Scratch Tickets**: Dominating the list, Scratch Tickets generated a whopping total of approximately **$23.83 billion** in gross ticket sales. This category leads by a significant margin.
- **Powerball®**: Coming in second, Powerball® amassed around **$1.71 billion** in gross sales.
- **Mega Millions®**: Following closely, Mega Millions® recorded about **$1.49 billion** in gross sales.
- **Pick 3™**: This game category garnered approximately **$1.07 billion** in sales.
- **Lotto Texas®**: With about **$682.74 million** in gross sales, Lotto Texas® ranks in the middle of the list.
- **Daily 4™**: This category saw gross sales of around **$527.14 million**.
- **Texas Two Step®**: With approximately **$229.05 million** in sales, this game falls towards the lower end of the list.
- **Cash Five®**: Grossing about **$205.39 million**, Cash Five® ranks just above the last on the list.
- **All or Nothing™**: The least in terms of gross sales on this list, All or Nothing™ brought in about **$170.47 million**.

**Counties with the most efficient ticket sales (highest net to gross sales ratio)**:

- In **Crockett County**, the efficiency ratio of net to gross ticket sales is approximately **0.9990**.
- **Hudspeth County** follows closely with an efficiency ratio of approximately **0.9988**.
- **Reagan County** shows an efficiency ratio of about **0.9987**.
- **Foard County**'s efficiency ratio is approximately **0.9985**.
- Lastly, **Sutton County** has an efficiency ratio of roughly **0.9985** as well.

#### Analyzing Trends with Python

**Seasonal sales trends**:

![Figure 1](https://github.com/lanavirsen/Texas-Lottery-Sales/blob/main/images/Figure1.png)

*Figure1: Total net ticket sales amount over time (seasonal trends).*

Seasonal trends observed from 2021 to 2023 indicate the following patterns: sales drop significantly in February but rise again in March. From March onwards, sales decrease, reaching a local minimum in June. There is an increase in July followed by another decrease. Typically, there is another peak in sales from November to January.

**Ticket prices over time:**

![Figure 2](https://github.com/lanavirsen/Texas-Lottery-Sales/blob/main/images/Figure2.png)

*Figure 2: Average ticket price over time.*

**Seasonal trends of ticket prices**:

![Figure 3](https://github.com/lanavirsen/Texas-Lottery-Sales/blob/main/images/Figure3.png)

*Figure 3: Average ticket price over time (seasonal trends).*

According to our plot for the years 2021-2023, we can observe a rapid increase in ticket prices starting from January and peaking between April and June. From there, the price remains relatively stable or slightly decreases until the next winter.

#### Creating an Interactive Dashboard

![Figure 4](https://github.com/lanavirsen/Texas-Lottery-Sales/blob/main/images/Figure4.png)

*Figure 4: Screenshot of the interactive Tableau dashboard.*

[Click here to view the interactive Tableau visualization](https://public.tableau.com/views/WorkinProgress_17110691588590/MasterView?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link) 

**The dashboard consists of the following features:**
*(From top to bottom)*

- **Sales Performance**: A horizontal bar chart of measure types.
- **Lottery Sales by Geography**: A geographical visualization. Clicking on a county selects it and filters the rest of the information on the dashboard by that county. Multiple counties can be selected by holding down Ctrl (on Windows).
- **Sales by City**: A list of cities sorted by the value for the selected measure type.
- **Filters**: A slider for Month/Year and dropdown filters for measure type and game type.
- **County**: A list of the currently selected counties.
- **Performance**: The percentage of net sales to gross sales.
- **Sales Trends** and **Ticket Adjustments Trends**: Trends for gross and net sales, as well as for cancelled tickets, promotional tickets, and ticket returns over the entire registered period.

## Table of Contents

[API Querying with SoQL](#api-querying-with-soql)

- [1. Temporal Sales Analysis](#1-temporal-sales-analysis)
  - [1.1. What are the total gross ticket sales per fiscal year?](#11-what-are-the-total-gross-ticket-sales-per-fiscal-year)
  - [1.2. How do ticket sales vary from month to month within a given calendar year, for example 2023?](#12-how-do-ticket-sales-vary-from-month-to-month-within-a-given-calendar-year-for-example-2023)
- [2. Geographical Distribution](#2-geographical-distribution)
   - [2.1. Which retailer location cities have the highest net ticket sales?](#21-which-retailer-location-cities-have-the-highest-net-ticket-sales)
   - [2.2. How do ticket sales compare across different counties?](#22-how-do-ticket-sales-compare-across-different-counties)
- [3. Game Category Analysis](#3-game-category-analysis)
   - [3.1. Which game categories generate the most gross ticket sales?](#31-which-game-categories-generate-the-most-gross-ticket-sales)
- [4. Retailer Performance](#4-retailer-performance)
   - [4.1. Which retailer locations have the highest number of cancelled tickets?](#41-which-retailer-locations-have-the-highest-number-of-cancelled-tickets)
- [5. Sales Efficiency](#5-sales-efficiency)
   - [5.1. Which counties have the most efficient (highest net to gross sales ratio) ticket sales?](#51-which-counties-have-the-most-efficient-highest-net-to-gross-sales-ratio-ticket-sales)
- [6. Longitudinal Studies](#6-longitudinal-studies)
   - [6.1. How has the average Scratch ticket price changed over the years?](#61-how-has-the-average-scratch-ticket-price-changed-over-the-years)

[Local Data Processing with Python and Dask](#local-data-processing-with-python-and-dask)

- [7. Setting up the Environment](#7-setting-up-the-environment)
- [8. Loading and Preprocessing the Data](#8-loading-and-preprocessing-the-data)
  - [8.1. Importing Libraries](#81-importing-libraries)
  - [8.2. Starting a Local Dask Client](#82-starting-a-local-dask-client)
  - [8.3. Loading the Dataset](#83-loading-the-dataset)
  - [8.4. Initial Inspection](#84-initial-inspection)
  - [8.5. Pruning Irrelevant Features](#85-pruning-irrelevant-features)
  - [8.6. Data Types Check](#86-data-types-check)
  - [8.7. Summary Statistics](#87-summary-statistics)
  - [8.8. Missing Values](#88-missing-values)
  - [8.9. Duplicate Rows](#89-duplicate-rows)
  - [8.10. Inspecting Categories](#810-inspecting-categories)
- [9. Analyzing Seasonal Trends](#9-analyzing-seasonal-trends)
  - [9.1. Seasonal Sales Trends](#91-seasonal-sales-trends)
  - [9.2. Ticket Price Over Time](#92-ticket-price-over-time)
  - [9.3. Ticket Price Seasonal Trends](#93-ticket-price-seasonal-trends)
- [10. Optimization and Export for Tableau](#10-optimization-and-export-for-tableau)
  - [10.1. Aggregation](#101-aggregation)
  - [10.2. Imputing Missing Values](#102-imputing-missing-values)
  - [10.3. Creating a Pivot Table](#103-creating-a-pivot-table)
 
[Data Visualization with Tableau](#data-visualization-with-tableau)

## Project Workflow
## API Querying with SoQL

#### Objectives

- What are the total gross ticket sales per fiscal year?
- How do ticket sales vary from month to month within a given calendar year?
- Which cities have the highest net ticket sales?
- How do ticket sales compare across different counties?
- Which games generate the most gross ticket sales?
- Which retailer locations have the highest number of cancelled tickets?
- Which counties have the most efficient (highest net to gross sales ratio) ticket sales?
- How has the average Scratch ticket price changed over the years?

### 1. Temporal Sales Analysis

#### 1.1. What are the total gross ticket sales per fiscal year?
  
**Full query:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=fiscal_year,sum(gross_sales_amount)&$group=fiscal_year`

**Explanation of the query parameters:**

- `https://data.texas.gov/resource/beka-uwfq.json?`: Base URL pointing to the dataset.
- `$$app_token=[APP_TOKEN]`: Authentication token parameter. Replace `[APP_TOKEN]` with your actual app token.
- `$select=fiscal_year,SUM(gross_sales_amount)`: Select statement specifying the fiscal year and the sum of gross sales amounts.
- `$group=fiscal_year`: Groups the results by fiscal year to aggregate sales per year.

**Output (a JSON array):**  

```json
[{"fiscal_year":"2021","sum_gross_sales_amount":"8180088862.5"}
,{"fiscal_year":"2022","sum_gross_sales_amount":"8346950771.5"}
,{"fiscal_year":"2023","sum_gross_sales_amount":"8780576798.5"}
,{"fiscal_year":"2024","sum_gross_sales_amount":"4608850575.0"}]  
```
  
**Explanation of the output:**

- For fiscal year 2021, the total gross ticket sales amounted to approximately $8.18 billion.
- For fiscal year 2022, the total was approximately $8.35 billion.
- For fiscal year 2023, it was around $8.78 billion.
- For fiscal year 2024 (which was partially reported at the time of this analysis), the total is approximately $4.61 billion.

#### 1.2. How do ticket sales vary from month to month within a given calendar year, for example 2023?

**Full query:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=cal_month,sum(gross_sales_amount) AS monthly_gross_sales&$where=cal_year=2023&$group=cal_month&$order=cal_month`

**Explanation of the query parameters:**

- `https://data.texas.gov/resource/beka-uwfq.json?`: Base URL pointing to the dataset.
- `$$app_token=[APP_TOKEN]`: Authentication token parameter. Replace `[APP_TOKEN]` with your actual app token.
- `$select=cal_month,SUM(gross_sales_amount) AS monthly_gross_sales`: Select statement specifying the calendar month and the sum of gross sales amounts for each month, with the sum labeled as `monthly_gross_sales`.
- `$where=cal_year=2023`: Filter condition to only include records from the calendar year 2023.
- `$group=cal_month`: Groups the results by calendar month to aggregate sales per month.
- `$order=cal_month`: Orders the results by calendar month to ensure the data is presented in chronological order.

**Output (a JSON array):**  

```json
[{"cal_month":"1","monthly_gross_sales":"816381955.5"}
,{"cal_month":"2","monthly_gross_sales":"664391839.0"}
,{"cal_month":"3","monthly_gross_sales":"752724555.5"}
,{"cal_month":"4","monthly_gross_sales":"746097356.0"}
,{"cal_month":"5","monthly_gross_sales":"705854424.5"}
,{"cal_month":"6","monthly_gross_sales":"664843320.5"}
,{"cal_month":"7","monthly_gross_sales":"807352378.5"}
,{"cal_month":"8","monthly_gross_sales":"729110080.0"}
,{"cal_month":"9","monthly_gross_sales":"673858739.5"}
,{"cal_month":"10","monthly_gross_sales":"737204162.5"}
,{"cal_month":"11","monthly_gross_sales":"656532242.5"}
,{"cal_month":"12","monthly_gross_sales":"741223398.5"}]  
```

**Explanation of the output:**

- In January 2023, the gross ticket sales amounted to approximately $816 million.
- In February, the sales were around $664 million.
- March saw a rise in sales, reaching approximately $753 million.
- April's sales were slightly lower than March, with about $746 million.
- May experienced a slight decrease in sales to approximately $706 million.
- June's sales dropped further to around $665 million.
- July saw a significant increase in sales, with approximately $807 million.
- August's sales decreased to about $729 million.
- In September, the sales were approximately $674 million.
- October saw an increase in sales to about $737 million.
- November's sales were approximately $657 million.
- December ended the year with sales of about $741 million.
  
### 2. Geographical Distribution

#### 2.1. Which retailer location cities have the highest net ticket sales?

We will examine the top 5 cities based on their net ticket sales.

**Full query:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=location_city,SUM(net_sales_amount) AS total_net_sales&$group=location_city&$order=total_net_sales DESC&$limit=5`

**Explanation of the query parameters:**

- `https://data.texas.gov/resource/beka-uwfq.json?`: Base URL pointing to the dataset.
- `$$app_token=[APP_TOKEN]`: Authentication token parameter. Replace `[APP_TOKEN]` with your actual app token.
- `$select=location_city,SUM(net_sales_amount) AS total_net_sales`: Select statement specifying to return the `location_city` and the sum of `net_sales_amount` for each city, aliased as `total_net_sales`.
- `$group=location_city`: Groups the results by `location_city` to aggregate net sales by city.
- `$order=total_net_sales DESC`: Orders the results by `total_net_sales` in descending order, so the cities with the highest net ticket sales are listed first.
- `$limit=5`: Limits the results to the top 5 cities with the highest net ticket sales. You can adjust this number based on how many top cities you want to retrieve.

**Output (a JSON array):**  

```json
[{"location_city":"Houston","total_net_sales":"3052477751.5"}
,{"location_city":"San Antonio","total_net_sales":"2304777688.0"}
,{"location_city":"Austin","total_net_sales":"1385808871.0"}
,{"location_city":"Dallas","total_net_sales":"1242925746.5"}
,{"location_city":"Fort Worth","total_net_sales":"712430232.0"}]
```

**Explanation of the output:**

- In Houston, the total net ticket sales reached approximately $3.05 billion, making it the city with the highest net ticket sales in 2021-2014 fiscal years so far according to the dataset.
- San Antonio follows with total net ticket sales amounting to approximately $2.30 billion.
- Austin comes in third, with net ticket sales totaling approximately $1.39 billion.
- Dallas is fourth on the list, with total net ticket sales of approximately $1.24 billion.
- Finally, Fort Worth ranks fifth, with net ticket sales amounting to approximately $712.43 million.

#### 2.2. How do ticket sales compare across different counties?

To answer this question, we'll examine the top 3 Texas counties with the highest gross ticket sales, followed by the top 3 counties with the lowest sales.

**Full query for the top 3 counties with highest sales:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=location_county_desc,SUM(gross_sales_amount) AS total_gross_sales&$group=location_county_desc&$order=total_gross_sales DESC&$limit=3`

**Explanation of the query parameters:**

- `https://data.texas.gov/resource/beka-uwfq.json?`: Base URL pointing to the dataset.
- `$$app_token=[APP_TOKEN]`: Authentication token parameter. Replace `[APP_TOKEN]` with your actual app token.
- `$select=location_county_desc,SUM(gross_sales_amount) AS total_gross_sales`: Select statement specifying the county description (`location_county_desc`) and the sum of gross sales amounts (`gross_sales_amount`), with the sum being labeled as `total_gross_sales`.
- `$group=location_county_desc`: Groups the results by county description to aggregate sales per county.
- `$order=total_gross_sales DESC`: Orders the results by the `total_gross_sales` in descending order, so the counties with the highest sales come first.
- `$limit=3`: Limits the results to the top 3 counties with the highest gross ticket sales.

**Full query for the top 3 counties with lowest sales:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=location_county_desc,SUM(gross_sales_amount) AS total_gross_sales&$group=location_county_desc&$order=total_gross_sales ASC&$limit=3`

The primary difference between the two queries lies in the ordering of the results, which is dictated by the `$order` parameter:

- In the first query, the `$order` parameter is set as `total_gross_sales DESC`. This orders the results in **descending** order, meaning the counties with the highest sums of gross ticket sales are listed first.

- In the second query, the `$order` parameter is adjusted to `total_gross_sales ASC`. This changes the order to **ascending**, ensuring that the counties with the lowest sums of gross ticket sales are placed at the top of the results list.

**Output for the top 3 counties with highest sales (a JSON array):**  

```json
[{"location_county_desc":"Harris","total_gross_sales":"4349056056.0"}
,{"location_county_desc":"Dallas","total_gross_sales":"2731095608.5"}
,{"location_county_desc":"Bexar","total_gross_sales":"2614080971.5"}]
```

**Explanation of the output:**

- In Harris County, the total gross ticket sales amounted to approximately $4.35 billion. This indicates that Harris County had the highest gross ticket sales among all counties in the registered years so far (2021-2024 fiscal years).
- In Dallas County, the total gross ticket sales were about $2.73 billion. This places Dallas County as the second highest in terms of gross ticket sales.
- In Bexar County, the gross ticket sales reached approximately $2.61 billion, making it the third highest county in terms of gross ticket sales.

**Output for the top 3 counties with lowest sales (a JSON array):**  

```json
[{"location_county_desc":"Unknown","total_gross_sales":"0"}
,{"location_county_desc":"Loving","total_gross_sales":"80649"}
,{"location_county_desc":"Roberts","total_gross_sales":"95122.0"}]
```

**Explanation of the output:**

- The label "Unknown" reported total gross ticket sales of $0. This suggests that there were either missing values or aggregate data, possibly due to confidentiality reasons. 
- Loving County had total gross ticket sales amounting to $80,649. This positions Loving County as having the lowest gross ticket sales among all the counties, not counting the "Unknown" label. 
- Roberts County experienced gross ticket sales of $95,122, making it the second lowest in terms of gross ticket sales.

### 3. Game Category Analysis

#### 3.1. Which game categories generate the most gross ticket sales?

**Full query:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=game_category,SUM(gross_sales_amount) AS total_gross_sales&$group=game_category&$order=total_gross_sales DESC`

**Explanation of the query parameters:**

- `https://data.texas.gov/resource/beka-uwfq.json?`: Base URL pointing to the dataset.
- `$$app_token=[APP_TOKEN]`: Authentication token parameter. Replace `[APP_TOKEN]` with your actual app token.
- `$select=game_category,SUM(gross_sales_amount) AS total_gross_sales`: Select statement that specifies the game category and calculates the sum of gross sales amounts, naming the result `total_gross_sales`.
- `$group=game_category`: Groups the results by `game_category` to aggregate sales for each category.
- `$order=total_gross_sales DESC`: Orders the results by `total_gross_sales` in descending order, so the categories with the most sales are listed first.

**Output (a JSON array):**

```json
[{"game_category":"Scratch Tickets","total_gross_sales":"23832861029"}
,{"game_category":"Powerball®","total_gross_sales":"1709397856"}
,{"game_category":"Mega Millions®","total_gross_sales":"1485710293"}
,{"game_category":"Pick 3™","total_gross_sales":"1073700841.5"}
,{"game_category":"Lotto Texas®","total_gross_sales":"682737445"}
,{"game_category":"Daily 4™","total_gross_sales":"527138149.0"}
,{"game_category":"Texas Two Step®","total_gross_sales":"229054091"}
,{"game_category":"Cash Five®","total_gross_sales":"205393967"}
,{"game_category":"All or Nothing™","total_gross_sales":"170473336"}]
```

**Explanation of the output:**

- **Scratch Tickets**: Dominating the list, Scratch Tickets generated a whopping total of approximately $23.83 billion in gross ticket sales. This category leads by a significant margin.
- **Powerball®**: Coming in second, Powerball® amassed around $1.71 billion in gross sales.
- **Mega Millions®**: Following closely, Mega Millions® recorded about $1.49 billion in gross sales.
- **Pick 3™**: This game category garnered approximately $1.07 billion in sales.
- **Lotto Texas®**: With about $682.74 million in gross sales, Lotto Texas® ranks in the middle of the list.
- **Daily 4™**: This category saw gross sales of around $527.14 million.
- **Texas Two Step®**: With approximately $229.05 million in sales, this game falls towards the lower end of the list.
- **Cash Five®**: Grossing about $205.39 million, Cash Five® ranks just above the last on the list.
- **All or Nothing™**: The least in terms of gross sales on this list, All or Nothing™ brought in about $170.47 million.  

### 4. Retailer Performance

#### 4.1. Which retailer locations have the highest number of cancelled tickets?

We'll examine the top 5 Texas locations with the highest number of cancelled tickets.

**Full query:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=location_name,SUM(cancelled_amount)&$group=location_name&$order=SUM(cancelled_amount) ASC&$limit=5`

**Explanation of the query parameters:**

- `https://data.texas.gov/resource/beka-uwfq.json?`: Base URL pointing to the dataset.
- `$$app_token=[APP_TOKEN]`: Authentication token parameter. Replace `[APP_TOKEN]` with your actual app token.
- `$select=location_name,SUM(cancelled_amount)`: Select statement specifying to retrieve the retailer location name (`location_name`) and the sum of the dollar amounts of tickets that were printed then cancelled (`cancelled_amount`).
- `$group=location_name`: Groups the results by `location_name` to aggregate the sum of cancelled amounts per location.
- `$order=SUM(cancelled_amount) ASC`: Orders the results in ascending order based on the sum of `cancelled_amount`. This approach ensures that locations with the largest absolute values of cancellations, which are recorded as negative numbers, appear first.
- `$limit=5`: Limits the number of results to the top 5 locations with the highest sum of cancelled amounts.

**Output (a JSON array):**

```json
[{"location_name":"QUICK N FAST","SUM_cancelled_amount":"-154736.0"}
,{"location_name":"BROWNIE'S","SUM_cancelled_amount":"-59011.5"}
,{"location_name":"QUICK SHOP","SUM_cancelled_amount":"-55596.0"}
,{"location_name":"HANNA MART","SUM_cancelled_amount":"-36153.0"}
,{"location_name":"CORNER MARKET","SUM_cancelled_amount":"-32127.0"}]
```

**Explanation of the output:**

- At "QUICK N FAST", the total cancelled amount for tickets is -$154,736.0.
- "BROWNIE'S" has a total cancelled amount of -$59,011.5.
- "QUICK SHOP" follows closely with a total cancelled amount of -$55,596.0.
- "HANNA MART" sees a total cancelled amount of -$36,153.0.
- "CORNER MARKET" has a total cancelled amount of -$32,127.0.

### 5. Sales Efficiency

#### 5.1. Which counties have the most efficient (highest net to gross sales ratio) ticket sales?

We'll examine the top 5 counties with the most efficient (highest net to gross sales ratio) ticket sales.

**Full query:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=location_county_desc,SUM(net_sales_amount)/SUM(gross_sales_amount) AS efficiency&$where=gross_sales_amount > 0&$group=location_county_desc&$order=efficiency DESC&$limit=5`

**Explanation of the query parameters:**

- `https://data.texas.gov/resource/beka-uwfq.json?`: Base URL pointing to the dataset.
- `$$app_token=[APP_TOKEN]`: Authentication token parameter. Replace `[APP_TOKEN]` with your actual app token.
- `$select=location_county_desc,SUM(net_sales_amount)/SUM(gross_sales_amount) AS efficiency`: Select statement specifying to retrieve the county description (`location_county_desc`) and calculate the efficiency as the ratio of the sum of `net_sales_amount` to the sum of `gross_sales_amount`, naming this ratio `efficiency`.
- `$where=gross_sales_amount > 0`: The `WHERE` clause is used to exclude records where `gross_sales_amount` is 0 to avoid division by zero.
- `$group=location_county_desc`: Groups the results by `location_county_desc` to aggregate the sums and calculate the efficiency per county.
- `$order=efficiency DESC`: Orders the results in descending order based on the calculated `efficiency`, so that the counties with the highest net to gross sales ratio are at the top.
- `$limit=5`: Limits the number of results to the top 5 counties with the highest efficiency.

**Output (a JSON array):**

```json
[{"location_county_desc":"Crockett","efficiency":"0.99903765802507936276"}
,{"location_county_desc":"Hudspeth","efficiency":"0.99880552364512340345"}
,{"location_county_desc":"Reagan","efficiency":"0.99872510533160849667"}
,{"location_county_desc":"Foard","efficiency":"0.99855432574211077490"}
,{"location_county_desc":"Sutton","efficiency":"0.99848747163064856552"}]
```

**Explanation of the output:**

- In Crockett County, the efficiency ratio of net to gross ticket sales is approximately 0.9990.
- Hudspeth County follows closely with an efficiency ratio of approximately 0.9988.
- Reagan County shows an efficiency ratio of about 0.9987.
- Foard County's efficiency ratio is approximately 0.9985.
- Lastly, Sutton County has an efficiency ratio of roughly 0.9985 as well.

#### Now, let's examine the top 5 counties with the least efficient ticket sales for comparison. 

**Full query:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=location_county_desc,SUM(net_sales_amount)/SUM(gross_sales_amount) AS efficiency&$where=gross_sales_amount > 0&$group=location_county_desc&$order=efficiency ASC&$limit=5`

**Explanation of the modified parameter:**

- `$order=efficiency ASC`: This modification changes the order of the results to ascending based on the calculated `efficiency`, so that the counties with the lowest net to gross sales ratio appear at the top. The rest of the query remains the same as before, designed to calculate the efficiency ratio while avoiding division by zero and grouping the results by county.

**Output (a JSON array):**

```json
[{"location_county_desc":"Delta","efficiency":"0.98134347804179293566"}
,{"location_county_desc":"Red River","efficiency":"0.98511239966078769065"}
,{"location_county_desc":"Roberts","efficiency":"0.98560269969092323542"}
,{"location_county_desc":"Motley","efficiency":"0.98839188190052309447"}
,{"location_county_desc":"Jack","efficiency":"0.98886581284673775591"}]
```

**Explanation of the output:**

- Delta County is identified as having the least efficient ticket sales, with an efficiency ratio of approximately 0.9813. This indicates that around 1.9% of gross ticket sales are not retained as net sales, possibly due to costs, losses, or other deductions.
- Red River County follows, with a slightly higher efficiency ratio of about 0.9851.
- In Roberts County, the efficiency ratio is approximately 0.9856.
- Motley County shows an efficiency ratio of roughly 0.9884.
- Jack County has the efficiency ratio at approximately 0.9889.

### 6. Longitudinal Studies

#### 6.1. How has the average Scratch ticket price changed over the years?

To answer this question, we'll examine year-over-year change in the average price of Scratch Tickets from 2021 through 2024 fiscal years.

**Full query:**

`https://data.texas.gov/resource/beka-uwfq.json?$$app_token=[APP_TOKEN]&$select=fiscal_year,AVG(instant_price_point) AS average_price&$where=game_category='Scratch Tickets'&$group=fiscal_year&$order=fiscal_year`

**Explanation of the query parameters:**

- `https://data.texas.gov/resource/beka-uwfq.json?`: Base URL pointing to the dataset.
- `$$app_token=[APP_TOKEN]`: Authentication token parameter. Replace `[APP_TOKEN]` with your actual app token.
- `$select=fiscal_year,AVG(instant_price_point) AS average_price`: Select statement specifying the fiscal year and the average of the instant ticket price points (average price per ticket for Scratch Tickets).
- `$where=game_category='Scratch Tickets'`: Filters the data to include only rows where the game category is "Scratch Tickets".
- `$group=fiscal_year`: Groups the results by fiscal year to calculate the average price per year.
- `$order=fiscal_year`: Orders the results by fiscal year in ascending order, so the data will be sorted from the earliest year to the most recent.

**Output (a JSON array):**

```json
[{"fiscal_year":"2021","average_price":"11.1593610952983956"}
,{"fiscal_year":"2022","average_price":"12.7482468234278887"}
,{"fiscal_year":"2023","average_price":"14.5867137375332776"}
,{"fiscal_year":"2024","average_price":"15.2910005781842130"}]
```

**Explanation of the output:**

- For fiscal year 2021, the average price of Scratch Tickets was approximately $11.16.
- For fiscal year 2022, the average price increased to approximately $12.75.
- For fiscal year 2023, the average price further rose to approximately $14.59.
- For fiscal year 2024, the average price of Scratch Tickets has reached approximately $15.29.

## Local Data Processing with Python and Dask

#### Objectives

- Preprocessing the Data
- Analyzing Seasonal Trends:
    - Examining seasonal sales trends
    - Analyzing ticket prices over time and identifying seasonal variations
- Optimization and Export for Tableau:
    - Aggregating data to reduce dataset size
    - Imputing missing values and ensuring data completeness

## 7. Setting up the Environment

The following command installs the Python libraries required for this project:

```
pip install dask pandas numpy matplotlib seaborn ipython "dask[distributed]" "dask[dataframe]"
```

## 8. Loading and Preprocessing the Data
### 8.1. Importing Libraries

```python
# Importing the Dask Client for distributed computing.
from dask.distributed import Client

# Dask DataFrame module for parallel computing with large datasets.
import dask.dataframe as dd

# The garbage collection module to manage memory and perform cleanup.
import gc

# Essential tool to work with tabular data structures in Python.
import pandas as pd

# For numerical computations.
import numpy as np 

# For plotting graphs.
import matplotlib.pyplot as plt

# To format the axis tick labels.
from matplotlib.ticker import FuncFormatter

# To handle date formatting on the x-axis.
import matplotlib.dates as mdates

# For more advanced data visualization.
import seaborn as sns

# Configuring Jupyter to display plots inline.
%matplotlib inline 

# Setting the option to display all columns.
pd.set_option('display.max_columns', None)

# Setting the option to display all rows.
pd.set_option('display.max_rows', None)

# Setting display option to avoid scientific notation.
pd.set_option('display.float_format', lambda x: '%.0f' % x)
```

### 8.2. Starting a Local Dask Client

The dataset under analysis, containing nearly 30 million rows or 7.5 GB in size, presents a significant challenge for in-memory processing on a standard personal computer.

To address this, I'm going to use **Dask** - an open-source parallel computing library for large-scale data operations. Dask breaks down large datasets into manageable chunks and processes them in parallel, significantly speeding up data computations and analysis.

As I initialize a Dask Client, I'll specify a local directory for storing intermediate data. This is useful for handling large datasets or complex computations, as it allows Dask to efficiently manage temporary data and spill over to disk if the memory is insufficient.

```python
# Initializing the Dask client with additional configurations.
client = Client(
    # Directory for intermediate data.
    local_directory='C:/PLACEHOLDER/PATH',
    memory_limit='4GB',  # Setting a memory limit for each worker.
    n_workers=4,  # Number of workers.
    processes=True,  # Using processes instead of threads.
    threads_per_worker=1  # Number of threads per worker.
)

client
```

Output:

```
Client

Client-ID: [REDACTED]

Connection method: Cluster object
Cluster type: distributed.LocalCluster
Dashboard: http://[LOCALHOST]/status
```

#### Processes vs. Threads

**Processes**: In Python, using processes means that each worker runs in its own independent memory space. This allows for true parallelism because each process is a separate instance of the Python interpreter, and they can run on multiple CPU cores simultaneously.

**Threads**: When using threads, multiple threads run within the same process and share the same memory space. However, Python's Global Interpreter Lock (GIL) allows only one thread to execute Python bytecode at a time, which can limit the performance benefits of multithreading for CPU-bound tasks.

### 8.3. Loading the Dataset

Dask provides a DataFrame interface that closely mirrors Pandas, allowing users to perform data manipulation and analysis in a familiar way but on larger-than-memory datasets.

Initially, when I tried to load the dataset into a Dask DataFrame, I encountered a ValueError:

```python
dask_dataframe = dd.read_csv('Texas_Lottery_Sales_by_Fiscal_Month_Year_Game_and_Retailer.csv')
```

Output:

```
ValueError: Mismatched dtypes found in `pd.read_csv`/`pd.read_table`.

+-----------------------------+---------+----------+
| Column                      | Found   | Expected |
+-----------------------------+---------+----------+
| Retailer Location Address 2 | object  | float64  |
| Scratch Game Number         | float64 | int64    |
| Ticket Price                | float64 | int64    |
+-----------------------------+---------+----------+

The following columns also raised exceptions on conversion:

- Retailer Location Address 2
  ValueError("could not convert string to float: 'SUITE 180'")

Usually this is due to dask's dtype inference failing, and
*may* be fixed by specifying dtypes manually by adding:

dtype={'Retailer Location Address 2': 'object',
       'Scratch Game Number': 'float64',
       'Ticket Price': 'float64'}

to the call to `read_csv`/`read_table`.

```

I'm going to follow the recommendation and specify dtypes in my `read_csv()` call.

```python
# Defining the data types for the columns causing issues.
dtype = {
    'Retailer Location Address 2': 'object',
    'Scratch Game Number': 'float64',
    'Ticket Price': 'float64'
}

# Loading the dataset into a Dask DataFrame.
dask_dataframe = dd.read_csv(
    'Texas_Lottery_Sales_by_Fiscal_Month_Year_Game_and_Retailer.csv',
    dtype=dtype
)
```

If data is not evenly partitioned, some operations might load too much data into memory at once.

I repartition the data to have more, smaller partitions:

```python
dask_dataframe = dask_dataframe.repartition(
    npartitions=dask_dataframe.npartitions * 2
)

# Persisting the DataFrame after repartitioning.
dask_dataframe = dask_dataframe.persist()
```

`persist()` computes the data in the DataFrame and stores it in memory. Unlike lazy evaluation (the default behavior in Dask), where computations are deferred until explicitly triggered by an action like `compute()`, persisting the DataFrame ensures that the data is actively held in memory.

The benefits of persisting include improved performance, avoiding recomputations, and added stability.

### 8.4. Initial Inspection

The dataset columns' description, provided by **data.texas.gov**:

| Column Name                                                                                                                       | Description                                                                                                                                     | Type        |
| --------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| Row ID                                                                                                                            | Unique key.                                                                                                                                     | Plain Text  |
| Fiscal Year                                                                                                                       | The fiscal year (Sept-Aug, i.e. Sept 2021-Aug 2022 = 2022, Sept 2022-Aug 2023= 2023 etc.) the pack settled/tickets were sold.                   | Number      |
| Fiscal Month                                                                                                                      | The fiscal month number (Sept-Aug, Sept =1, Oct=2, etc.) the pack settled/tickets were sold.                                                    | Number      |
| Fiscal Month Name and Number                                                                                                      | The fiscal month number and name (Sept - Aug, Sept =1, Oct=2, etc.) the pack settled/tickets were sold.                                         | Plain Text  |
| Calendar Year                                                                                                                     | The calendar year the pack settled/tickets were sold.                                                                                           | Number      |
| Calendar Month                                                                                                                    | The calendar month number the pack settled/tickets were sold.                                                                                   | Number      |
| Calendar Month Name and Number                                                                                                    | The calendar month number and name the pack settled/tickets were sold.                                                                          | Plain Text  |
| Month Ending Date                                                                                                                 | The month end date the pack settled/tickets were sold.                                                                                          | Date & Time |
| Game Category                                                                                                                     | The type of lottery game; i.e. Scratch, Lotto Texas®, Powerball®, etc.                                                                          | Plain Text  |
| Scratch Game Number                                                                                                               | The game number of the scratch ticket.                                                                                                          | Number      |
| Ticket Price                                                                                                                      | The price per ticket.                                                                                                                           | Number      |
| Retailer License Number                                                                                                           | The retailer license number that sold the ticket.                                                                                               | Number      |
| Retailer Location Name                                                                                                            | The retailer location name that sold the ticket.                                                                                                | Plain Text  |
| Retailer Number and Location Name                                                                                                 | The retailer location number/location name that sold the ticket. This number is the store number assigned to the location by the owning entity. | Plain Text  |
| Retailer Location Address 1                                                                                                       | The address line 1 of the retailer location that sold the ticket.                                                                               | Plain Text  |
| Retailer Location Address 2                                                                                                       | The address line 2 of the retailer location that sold the ticket.                                                                               | Plain Text  |
| Retailer Location City                                                                                                            | The city of the retailer location that sold the ticket.                                                                                         | Plain Text  |
| Retailer Location State                                                                                                           | The state of the retailer location that sold the ticket.                                                                                        | Plain Text  |
| Retailer Location Zip Code                                                                                                        | The zip code of the retailer location that sold the ticket.                                                                                     | Plain Text  |
| Retailer Location Zip Code +4                                                                                                     | The zip code +4 of the retailer location that sold the ticket.                                                                                  | Plain Text  |
| Retailer Location County                                                                                                          | The county of the retailer location that sold the ticket.                                                                                       | Plain Text  |
| Owning Entity Retailer Number                                                                                                     | This is the retailer number of the retailer owning entity who is financially responsible for the location where the pack settled/tickets sold.  | Number      |
| Owning Entity Retailer Name                                                                                                       | This is the name of the retailer owning entity who is financially responsible for the location where pack settled/tickets sold.                 | Plain Text  |
| Owning Entity/Chain Head Number and Name                                                                                          | This is the name and retailer number of the owning entity of the location financially responsible for the pack settled/tickets sold.            | Plain Text  |
| Gross Ticket Sales Amount                                                                                                         | This is the gross sales amount of the pack settled/tickets sold.                                                                                | Number      |
| Promotional Tickets Amount                                                                                                        | This is the dollar amount of free tickets given away as part of a promotion approved by the Lottery.                                            | Number      |
| Cancelled Tickets Amount                                                                                                          | This is the dollar amount of tickets that were printed then cancelled by retailer due to some sort of issue; e.g. printer jam, etc.             | Number      |
| Ticket Adjustments Amount                                                                                                         | This is the dollar amount of ticket adjustments made to the retailer's account; e.g. retailer request for adjustment for damaged tickets, etc.  | Number      |
| Ticket Returns Amount                                                                                                             | This is the dollar amount in ticket returns processed at the lottery warehouse and adjusted to retailer's account.                              | Number      |
| Net Ticket Sales Amount                                                                                                           | This is the net sales amount of the pack settled/tickets sold minus any promotional, cancelled, adjusted or returned tickets.                   | Number      |

#### Dataset Shape

```python
# Number of columns.
num_columns = len(dask_dataframe.columns)
print(f"Number of Columns: {num_columns}")

# Number of rows.
num_rows = dask_dataframe.shape[0].compute()
print(f"Number of Rows: {num_rows}")
```

Output:

```
Number of Columns: 30
Number of Rows: 29614426
```

Our dataset has 30 columns and almost 30 million rows (entries). 

#### Viewing the First Few Rows

I examine the first few rows of the dataset to get a sense of the data structure and contents.

```python
dask_dataframe.head()
```

Output:

|     |      Row ID       | Fiscal Year | Fiscal Month | Fiscal Month Name and Number | Calendar Year | Calendar Month | Calendar Month Name and Number | Month Ending Date |  Game Category  | Scratch Game Number | Ticket Price | Retailer License Number | Retailer Location Name | Retailer Number and Location Name | Retailer Location Address 1 | Retailer Location Address 2 | Retailer Location City | Retailer Location State | Retailer Location Zip Code | Retailer Location Zip Code +4 | Retailer Location County | Owning Entity Retailer Number | Owning Entity Retailer Name | Owning Entity/Chain Head Number and Name | Gross Ticket Sales Amount | Promotional Tickets Amount | Cancelled Tickets Amount | Ticket Adjustments Amount | Ticket Returns Amount | Net Ticket Sales Amount |
| :-: | :---------------: | :---------: | :----------: | :--------------------------: | :-----------: | :------------: | :----------------------------: | :---------------: | :-------------: | :-----------------: | :----------: | :---------------------: | :--------------------: | :-------------------------------: | :-------------------------: | :-------------------------: | :--------------------: | :---------------------: | :------------------------: | :---------------------------: | :----------------------: | :---------------------------: | :-------------------------: | :--------------------------------------: | :-----------------------: | :------------------------: | :----------------------: | :-----------------------: | :-------------------: | :---------------------: |
|  0  | 182339-23985-4739 |    2023     |      1       |         01-September         |     2022      |       9        |          09-September          |    09/30/2022     | Scratch Tickets |        2327         |      3       |         182339          |    DAPS STOP N SHOP    |     182339 - DAPS STOP N SHOP     |       600 US HWY 84 W       |             NaN             |         Teague         |           TX            |           75860            |              NaN              |        Freestone         |            182339             |      DAPS STOP N SHOP       |        182339 - DAPS STOP N SHOP         |            450            |             0              |            0             |             0             |           0           |           450           |
|  1  | 182339-23985-4744 |    2023     |      1       |         01-September         |     2022      |       9        |          09-September          |    09/30/2022     | Scratch Tickets |        2354         |      20      |         182339          |    DAPS STOP N SHOP    |     182339 - DAPS STOP N SHOP     |       600 US HWY 84 W       |             NaN             |         Teague         |           TX            |           75860            |              NaN              |        Freestone         |            182339             |      DAPS STOP N SHOP       |        182339 - DAPS STOP N SHOP         |            500            |             0              |            0             |             0             |           0           |           500           |
|  2  | 182339-23985-4748 |    2023     |      1       |         01-September         |     2022      |       9        |          09-September          |    09/30/2022     | Scratch Tickets |        2373         |      3       |         182339          |    DAPS STOP N SHOP    |     182339 - DAPS STOP N SHOP     |       600 US HWY 84 W       |             NaN             |         Teague         |           TX            |           75860            |              NaN              |        Freestone         |            182339             |      DAPS STOP N SHOP       |        182339 - DAPS STOP N SHOP         |            750            |             0              |            0             |             0             |           0           |           750           |
|  3  | 182339-23985-4750 |    2023     |      1       |         01-September         |     2022      |       9        |          09-September          |    09/30/2022     | Scratch Tickets |        2367         |      20      |         182339          |    DAPS STOP N SHOP    |     182339 - DAPS STOP N SHOP     |       600 US HWY 84 W       |             NaN             |         Teague         |           TX            |           75860            |              NaN              |        Freestone         |            182339             |      DAPS STOP N SHOP       |        182339 - DAPS STOP N SHOP         |           2500            |             0              |            0             |             0             |           0           |          2500           |
|  4  | 182339-23985-4754 |    2023     |      1       |         01-September         |     2022      |       9        |          09-September          |    09/30/2022     | Scratch Tickets |        2358         |      50      |         182339          |    DAPS STOP N SHOP    |     182339 - DAPS STOP N SHOP     |       600 US HWY 84 W       |             NaN             |         Teague         |           TX            |           75860            |              NaN              |        Freestone         |            182339             |      DAPS STOP N SHOP       |        182339 - DAPS STOP N SHOP         |           4000            |             0              |            0             |             0             |           0           |          4000           |

### 8.5. Pruning Irrelevant Features

For large datasets, especially those that are close to or exceed the system's memory capacity, it can be beneficial to remove unnecessary columns early. This can reduce memory usage and improve processing speed.

Columns that I consider redundant or irrelevant to this project's analysis:

- `Fiscal Month Name and Number`
- `Calendar Month Name and Number`
- `Month Ending Date`
- `Scratch Game Number`
- `Retailer License Number`
- `Retailer Number and Location Name`
- `Retailer Location Address 1`
- `Retailer Location Address 2`
- `Retailer Location State`
- `Retailer Location Zip Code`
- `Retailer Location Zip Code +4`
- `Owning Entity Retailer Number`
- `Owning Entity Retailer Name`
- `Owning Entity/Chain Head Number and Name`
- `Ticket Adjustments Amount`

Regarding the `Retailer Location State` column, the assumption is that the entire dataset belongs to Texas. However, this assumption requires verification before the column can be safely removed.

```python
# Counting the number of unique values in the "Retailer Location State" column.
unique_states = dask_dataframe['Retailer Location State'].nunique().compute()
unique_states
```

Output:

```
2
```

There are two unique values in the `Retailer Location State` column.

Let's check what they are.

```python
# Getting the unique values.
unique_states = dask_dataframe['Retailer Location State'].unique().compute()

# Converting to a list for easier viewing.
unique_states_list = unique_states.tolist()
print("Unique values in the 'Retailer Location State' column: "
      f"{unique_states_list}")
```

Output:

```
Unique values in the 'Retailer Location State' column: ['TN', 'TX']
```

The other state is Tennessee.

Checking how many rows are attributed to it in the dataset:

```python
state_counts = dask_dataframe['Retailer Location State'].value_counts().compute()
state_counts
```

Output:

```
Retailer Location State
TN           1
TX    29614425
Name: count, dtype: int64[pyarrow]
```

There is one row corresponding to the State of Tennessee. Given that all other rows are related to Texas, this lone Tennessee row can be considered an outlier and removed. Consequently, the `Retailer Location State` column becomes redundant and can also be safely removed.

```python
# Filtering the DataFrame to exclude rows where "Retailer Location State" is "TN".
filtered_dask_dataframe = dask_dataframe[
    dask_dataframe['Retailer Location State'] != 'TN'
]
```

Dropping the rest of the columns I listed for removal earlier.

```python
columns_to_remove = [
    'Fiscal Year',
    'Fiscal Month',
    'Fiscal Month Name and Number',
    'Calendar Month Name and Number',
    'Month Ending Date',
    'Scratch Game Number',
    'Retailer License Number',
    'Retailer Location Name',
    'Retailer Number and Location Name',
    'Retailer Location Address 1',
    'Retailer Location Address 2',
    'Retailer Location State',
    'Retailer Location Zip Code',
    'Retailer Location Zip Code +4',
    'Owning Entity Retailer Number',
    'Owning Entity Retailer Name',
    'Owning Entity/Chain Head Number and Name',
    'Ticket Adjustments Amount'
]

# Dropping the specified columns from the DataFrame.
reduced_dask_dataframe = filtered_dask_dataframe.drop(columns=columns_to_remove)

# Persisting the reduced DataFrame to compute the operation and optimize
# further computations.
reduced_dask_dataframe = reduced_dask_dataframe.persist()
```

Checking the result:

```python
reduced_dask_dataframe.head()
```

Output:

|  | Row ID | Calendar Year | Calendar Month | Game Category | Ticket Price | Retailer Location City | Retailer Location County | Gross Ticket Sales Amount | Promotional Tickets Amount | Cancelled Tickets Amount | Ticket Returns Amount | Net Ticket Sales Amount |
|:---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 0 | 182339-23985-4739 | 2022 | 9 | Scratch Tickets | 3 | Teague | Freestone | 450 | 0 | 0 | 0 | 450 |
| 1 | 182339-23985-4744 | 2022 | 9 | Scratch Tickets | 20 | Teague | Freestone | 500 | 0 | 0 | 0 | 500 |
| 2 | 182339-23985-4748 | 2022 | 9 | Scratch Tickets | 3 | Teague | Freestone | 750 | 0 | 0 | 0 | 750 |
| 3 | 182339-23985-4750 | 2022 | 9 | Scratch Tickets | 20 | Teague | Freestone | 2500 | 0 | 0 | 0 | 2500 |
| 4 | 182339-23985-4754 | 2022 | 9 | Scratch Tickets | 50 | Teague | Freestone | 4000 | 0 | 0 | 0 | 4000 |

### 8.6. Data Types Check

Ensuring that each column is of the correct data type:

```python
reduced_dask_dataframe.dtypes
```

Output:

```
Row ID                        string[pyarrow]
Calendar Year                           int64
Calendar Month                          int64
Game Category                 string[pyarrow]
Ticket Price                          float64
Retailer Location City        string[pyarrow]
Retailer Location County      string[pyarrow]
Gross Ticket Sales Amount             float64
Promotional Tickets Amount            float64
Cancelled Tickets Amount              float64
Ticket Returns Amount                 float64
Net Ticket Sales Amount               float64
dtype: object
```

Data types validated.

### 8.7. Summary Statistics

Generating summary statistics for numerical columns to understand their distribution, identify any obvious outliers, or spot missing values:

```python
reduced_dask_dataframe.describe().compute()
```

Output:

|  | Calendar Year | Calendar Month | Ticket Price | Gross Ticket Sales Amount | Promotional Tickets Amount | Cancelled Tickets Amount | Ticket Returns Amount | Net Ticket Sales Amount |
|:---:|---:|---:|---:|---:|---:|---:|---:|---:|
| count | 29614425 | 29614425 | 23421561 | 29614425 | 29614425 | 29614425 | 29614425 | 29614425 |
| mean | 2022 | 7 | 13 | 970 | -1 | -0 | -5 | 963 |
| std | 1 | 4 | 16 | 6829 | 45 | 15 | 52 | 6826 |
| min | 2020 | 1 | 1 | 0 | -101149 | -37451 | -29900 | -21050 |
| 25% | 2021 | 6 | 5 | 375 | 0 | 0 | 0 | 375 |
| 50% | 2022 | 9 | 10 | 750 | 0 | 0 | 0 | 750 |
| 75% | 2023 | 12 | 20 | 1875 | 0 | 0 | 0 | 1875 |
| max | 2024 | 12 | 100 | 14750793 | 0 | 0 | 0 | 14750793 |

From these summary statistics, the following columns appear right-skewed, indicating a concentration of lower values with fewer higher value outliers:

- `Ticket Price`
- `Gross Ticket Sales Amount`
- `Net Ticket Sales Amount`

And the following columns appear left-skewed, with a majority of values clustering towards the higher end and some extreme lower value outliers:

- `Promotional Tickets Amount`
- `Cancelled Tickets Amount`
- `Ticket Returns Amount`

However, it's important to note that the presence of extreme outliers in these columns, potentially with the exception of `Ticket Price`, might significantly influence these assessments. Such outliers can distort the mean and give an exaggerated sense of skewness. Therefore, these summary statistics alone might not fully capture the distribution patterns of the listed columns. Visualizing the data distributions could provide a more nuanced understanding of their characteristics.

### 8.8. Missing Values

#### Identifying Missing Values

Checking for missing values in each column:

```python
reduced_dask_dataframe.isnull().sum().compute()
```

Output:

```
Row ID                              0
Calendar Year                       0
Calendar Month                      0
Game Category                       0
Ticket Price                  6192864
Retailer Location City              0
Retailer Location County            0
Gross Ticket Sales Amount           0
Promotional Tickets Amount          0
Cancelled Tickets Amount            0
Ticket Returns Amount               0
Net Ticket Sales Amount             0
dtype: int64
```

As we can see, there is a large number of missing values in the column `Ticket Price`.

To understand this issue better, I'm going to analyze the distribution of null values within the `Game Category` column. This investigation will help identify if missing values are concentrated in specific categories and guide my approach to addressing these gaps.

```python
# Grouping by "Game Category" and counting missing values in "Ticket Price"
# for each category.
missing_values_distribution = (
    reduced_dask_dataframe
    .groupby('Game Category')['Ticket Price']
    .apply(lambda x: x.isna().sum(), meta=('x', 'int64'))
    .compute()
)

# Displaying the result.
missing_values_distribution
```

Output:

```
Game Category
Cash Five®         761313
Powerball®         833643
Daily 4™           736048
All or Nothing™    731573
Texas Two Step®    768234
Pick 3™            754808
Mega Millions®     832923
Lotto Texas®       774322
Scratch Tickets         0
Name: x, dtype: int64
```

```python
# Grouping by "Game Category" and counting non-missing values in "Ticket Price"
# for each category.
nonnull_values_distribution = (
    reduced_dask_dataframe
    .groupby('Game Category')['Ticket Price']
    .apply(lambda x: x.notna().sum(), meta=('x', 'int64'))
    .compute()
)

# Displaying the result.
nonnull_values_distribution
```

Output:

```
Game Category
Cash Five®                0
Powerball®                0
Daily 4™                  0
All or Nothing™           0
Texas Two Step®           0
Pick 3™                   0
Mega Millions®            0
Lotto Texas®              0
Scratch Tickets    23421561
Name: x, dtype: int64
```

The missing values in the `Ticket Price` column are because this column is only populated for the `Scratch Tickets` game category.

### 8.9. Duplicate Rows

#### Checking for Duplicates

Unlike Pandas, Dask DataFrames do not have a direct equivalent to the `duplicated()` method. My initial attempts to count the duplicated rows resulted in exceeding the memory budget:

```python
deduplicated_df = reduced_dask_dataframe.drop_duplicates().persist()
row_count = reduced_dask_dataframe.shape[0].compute()
deduplicated_row_count = deduplicated_df.shape[0].compute()
number_of_duplicates = row_count - deduplicated_row_count
print(f"Number of Duplicate Rows: {number_of_duplicates}")
```

```python
duplicates_count = reduced_dask_dataframe.groupby('Row ID').size().compute()
duplicates_count = duplicates_count[duplicates_count > 1]
print(f"Number of Duplicate 'Row ID's: {len(duplicates_count)}")
```

After encountering those limitations, I adopted the Map-Reduce approach. I used `map_partitions` to apply a function to each partition of my DataFrame and then aggregated the results. The idea here is to identify duplicates within each partition first (map step) and then combine these results to identify global duplicates (reduce step).

Before doing this, I ran `gc.collect()`, which triggers Python's garbage collection process. This process reclaims memory by clearing unused objects. The number returned represents the count of unreachable objects found and freed during that garbage collection cycle.

```python
gc.collect()
```

Output:

```
3573
```

```python
# Defining a function to apply to each partition.
def find_duplicates(partition):
    # Finding duplicated "Row ID" within the partition.
    duplicated = partition[partition.duplicated('Row ID')]
    return duplicated

# Applying the function to each partition and computing to get results.
duplicates_per_partition = (
    reduced_dask_dataframe
    .map_partitions(find_duplicates)
    .compute()
)

# Now "duplicates_per_partition" contains all duplicates found in each chunk.
duplicates_per_partition
```

Output:

| Row ID | Calendar Year | Calendar Month | Game Category | Ticket Price | Retailer Location City | Retailer Location County | Gross Ticket Sales Amount | Promotional Tickets Amount | Cancelled Tickets Amount | Ticket Returns Amount | Net Ticket Sales Amount |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|

The output is an empty table, meaning there were no duplicates found in the partitions. 

### 8.10. Inspecting Categories

Inspecting unique values in the `Game Category` column:

```python
unique_game_categories = (
    reduced_dask_dataframe['Game Category'].unique().compute()
)
unique_game_categories
```

Output:

```
0    Scratch Tickets
1     Mega Millions®
2            Pick 3™
3       Lotto Texas®
4           Daily 4™
5    All or Nothing™
6    Texas Two Step®
7         Cash Five®
8         Powerball®
Name: Game Category, dtype: object
```

There is no inconsistency.

Checking the number of unique values in the `Retailer Location City` column:

```python
unique_cities = (
    reduced_dask_dataframe['Retailer Location City'].nunique().compute()
)
print(f"Number of unique Retailer Location Cities: {unique_cities}")
```

Output:

```
Number of unique Retailer Location Cities: 1242
```

The column contains 1 242 unique values. While inspecting and standardizing these values manually is impractical due to their volume, converting all city names to a uniform text case (e.g., all lowercase or all uppercase) could  create issues in Tableau downstream. Given these potential complications and the fact that I won't be using the column in my Python analysis, I have decided to leave the `Retailer Location City` column unchanged and handle any inconsistencies directly in Tableau.

Let's take a look at the `Retailer Location County` column.

```python
# Getting the number of unique values in "Retailer Location County" column.
unique_counties = (
    reduced_dask_dataframe['Retailer Location County'].nunique().compute()
)
unique_counties
```

Output:

```
250
```

Our dataset contains 250 unique counties, whereas the state of Texas actually has 254 counties. Before exporting the aggregated dataset for use in Tableau, I will add the missing counties and impute the missing values. This will ensure a complete and accurate geographical visualization.

## 9. Analyzing Seasonal Trends

I'll focus here on the types of temporal analysis that aren't going to be covered by the Tableau dashboard downstream.

### 9.1. Seasonal Sales Trends

Preparing data for plotting:

```python
# Groupping by "Calendar Year" and "Calendar Month",
# then summing "Gross Ticket Sales Amount".
aggregated_sales = (
    reduced_dask_dataframe
    .groupby(['Calendar Year', 'Calendar Month'])
    ['Net Ticket Sales Amount']
    .sum()
    .compute()
)

# Resetting index to convert the Series to a DataFrame.
aggregated_sales = aggregated_sales.reset_index()

# Combining "Calendar Year" and "Calendar Month" into a single datetime column
# for easier plotting.
aggregated_sales['Date'] = pd.to_datetime(
    aggregated_sales['Calendar Year'].astype(str)
    + '-'
    + aggregated_sales['Calendar Month'].astype(str)
)

# Sorting the DataFrame by "Date" to ensure the line chart follows
# a chronological order.
aggregated_sales = aggregated_sales.sort_values('Date')

# Extracting month and day for seasonal trend plotting.
aggregated_sales['Month'] = aggregated_sales['Date'].dt.month
aggregated_sales['Year'] = aggregated_sales['Date'].dt.year
```

Plotting:

```python
# Setting up the seaborn style.
sns.set(style="whitegrid", rc={"axes.facecolor": "whitesmoke"})

# Creating a figure.
plt.figure(figsize=(10, 6))

# Defining the time segments, excluding the incomplete year 2020.
years = aggregated_sales['Year'].unique()
for year in years:
    if year > 2020 and year <= 2023:  # Filtering years within the range.
        subset = aggregated_sales[aggregated_sales['Year'] == year]
        sns.lineplot(
            data=subset,
            x='Month',
            y='Net Ticket Sales Amount',
            label=f'{year}'
        )

# Formatting the plot.
plt.title('Total Net Ticket Sales Amount Over Time (Seasonal Trends)', fontsize=16)
plt.xlabel('')
plt.ylabel('Net Ticket Sales Amount, $', fontsize=14)
plt.xticks(
    ticks=range(1, 13),
    labels=[
        'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ],
    fontsize=12
)
plt.yticks(fontsize=12)

# Formatting y-axis to avoid scientific notation.
plt.gca().yaxis.set_major_formatter(FuncFormatter(lambda x, _: f'{x:,.0f}'))

plt.grid(True, color='white')
sns.despine(left=True, bottom=True)  # Removing the frame.
plt.legend(title='Year', fontsize=12, title_fontsize=14)  # Adding legend.
plt.tight_layout()
plt.show()
```

Output:

![Figure 1](https://github.com/lanavirsen/Texas-Lottery-Sales/blob/main/images/Figure1.png)

Seasonal trends observed from 2021 to 2023 indicate the following patterns: sales drop significantly in February but rise again in March. From March onwards, sales decrease, reaching a local minimum in June. There is an increase in July followed by another decrease. Typically, there is another peak in sales from November to January.

### 9.2. Ticket Price Over Time

Let's take a look at how `Ticket Price` changed over the years.

Preparing data for plotting:

```python
# Groupping by "Calendar Year" and "Calendar Month", then computing
# the average "Ticket Price".
average_price = (
    reduced_dask_dataframe
    .groupby(['Calendar Year', 'Calendar Month'])
    ['Ticket Price']
    .mean()
    .compute()
)

# Resetting index to convert the MultiIndex DataFrame to a flat DataFrame.
average_price = average_price.reset_index()

# Creating a "Date" column that combines "Calendar Year" and "Calendar Month"
# for plotting.
average_price['Date'] = pd.to_datetime(
    average_price['Calendar Year'].astype(str)
    + '-'
    + average_price['Calendar Month'].astype(str)
)

# Sorting by date to ensure the line chart follows chronological order.
average_price = average_price.sort_values(by='Date')
```

Plotting:

```python
# Setting up the seaborn style.
sns.set(style="whitegrid", rc={"axes.facecolor": "whitesmoke"})

# Creating a figure.
plt.figure(figsize=(10, 6))

# Plotting.
sns.lineplot(data=average_price, x='Date', y='Ticket Price')

# Formatting the plot.
plt.title('Average Ticket Price Over Time', fontsize=16)
plt.xlabel('Date', fontsize=14)
plt.ylabel('Average Ticket Price, $', fontsize=14)

# Customizing the x-axis date format.
date_format = mdates.DateFormatter("%b %Y")
plt.gca().xaxis.set_major_formatter(date_format)

plt.xticks(rotation=45, fontsize=12)
plt.yticks(fontsize=12)
plt.grid(True, color='white')
sns.despine(left=True, bottom=True)  # Removing the frame.

plt.tight_layout()
plt.show()
```

Output:

![Figure 2](https://github.com/lanavirsen/Texas-Lottery-Sales/blob/main/images/Figure2.png)

### 9.3. Ticket Price Seasonal Trends

Preparing data for plotting. I'll use the already existing `average_price` DataFrame.

```python
# Extracting month and day for seasonal trend plotting.
average_price['Month'] = average_price['Date'].dt.month
average_price['Year'] = average_price['Date'].dt.year
```

Plotting:

```python
# Setting up the seaborn style.
sns.set(style="whitegrid", rc={"axes.facecolor": "whitesmoke"})

# Creating a figure.
plt.figure(figsize=(10, 6))

# Defining the time segments, excluding the incomplete year 2020.
years = average_price['Year'].unique()
# Sorting years to ensure the legend matches the plot order.
for year in sorted(years, reverse=True):
    if year > 2020 and year <= 2023:  # Filtering years within the range.
        subset = average_price[average_price['Year'] == year]
        sns.lineplot(data=subset, x='Month', y='Ticket Price', label=f'{year}')

# Formatting the plot.
plt.title('Average Ticket Price Over Time (Seasonal Trends)', fontsize=16)
plt.xlabel('')
plt.ylabel('Average Ticket Price, $', fontsize=14)
plt.xticks(
    ticks=range(1, 13),
    labels=[
        'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ],
    fontsize=12
)
plt.yticks(fontsize=12)
plt.grid(True, color='white')
sns.despine(left=True, bottom=True)  # Removing the frame.

# Customizing legend to match the plot order.
handles, labels = plt.gca().get_legend_handles_labels()
order = [labels.index('2023'), labels.index('2022'), labels.index('2021')]
plt.legend(
    [handles[i] for i in order], [labels[i] for i in order],
    title='Year',
    fontsize=12,
    title_fontsize=14
)

plt.tight_layout()
plt.show()
```

Output:

![Figure 3](https://github.com/lanavirsen/Texas-Lottery-Sales/blob/main/images/Figure3.png)

According to our plot for the years 2021-2023, we can observe a rapid increase in ticket prices starting from January and peaking between April and June. From there, the price remains relatively stable or slightly decreases until the next winter.
