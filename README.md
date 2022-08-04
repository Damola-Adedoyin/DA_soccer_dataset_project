### Dataset Description 

The database was sourced from [**Kaggle**](https://www.kaggle.com/datasets/hugomathien/soccer), a popular platform for users to find and publish data sets, explore and build models in a web-based data-science environment, work with other data scientists and machine learning engineers, and enter competitions to solve data science challenges.

The European soccer database (which can be downloaded [**here**](https://d17h27t6h515a5.cloudfront.net/topher/2017/November/5a0a4cad_database/database.sqlite)) is stored in a SQLite database and contains the following structure (Schema):

**Table**|**Total Rows**|**Total Columns**
----|--------|--------
Country|11|2
League|11|3
Match|	25979	|115
Player|	11060|	7
Player_Attributes|	183978	|42
Team|	299	|5
Team_Attributes|	1458|	25

The following further explains what is contained within the tables of the database.
* over 25,000 matches and 10,000 players with their attributes from the popular EA Sports' FIFA video game
* 11 leagues across Europe span eight (8) seasons from 2008 to 2016
* Teams and Teams' attributes also included
* Betting odds from up to 10 providers including Bet365 (B365), BetWay (BW), etc.
* Other details also included in the database.


### Question(s) for Analysis
In an attempt to draw out some conclusions from the dataset, some explorations will be done for better understanding. For this course, the questions below will be explored.

1. Which teams scored the most goals each of the two seasons?
2. Which teams were relegated (to lower division) at the end of the 2014/2015 seasons?
3. Which teams got promoted (from lower division) into the 2015/2016 season?
4. What is the final standing/position of each team at the end of the 14/15 season?
5. Which attributes are most likely responsible for the home matches won?
