# Rideshare A/B Pricing Experiment Analysis

## Project Overview
This project evaluates the impact of an A/B pricing experiment on key rideshare outcomes, including ride completion rates, realized revenue, and surge pricing behavior. Using a synthetic dataset modeled after real rideshare activity, the analysis mirrors how marketplace analytics teams assess pricing strategy effectiveness in production environments.

The goal of this project is to demonstrate:
- Proper experimental design and metric definition
- Separation of experiment assignment from outcome variables
- End-to-end analytics workflow using SQL (BigQuery) and Tableau

---

## Experiment Design
Each ride request is randomly assigned to one of two pricing experiment groups at request time:

- **Group A (Control):** Baseline pricing strategy  
- **Group B (Treatment):** Alternative pricing strategy  

Ride outcomes (completed vs canceled) occur *after* assignment and are analyzed as dependent variables. This structure reflects standard A/B testing methodology used in marketplace and platform analytics.

---

## Key Metrics
The following metrics are evaluated across experiment groups:

- **Completion Rate:** Probability that a requested ride is successfully completed  
- **Completed Rides:** Total number of successfully completed rides  
- **Realized Revenue:** Revenue from completed rides only (canceled rides contribute $0)  
- **Average Surge Multiplier:** Calculated on completed rides only  
- **Time-of-Day Completion Patterns:** Completion probability by hour  
- **Geographic Ride Hotspots:** Spatial distribution of completed rides  

---

## Data Modeling (BigQuery)
All data modeling and metric logic were handled upstream in BigQuery to ensure accuracy and reproducibility.

Key modeling decisions include:
- Standardizing experiment assignment into clean A/B groups
- Treating ride completion as an outcome variable (not a group definition)
- Enforcing realized revenue logic so canceled rides contribute no revenue
- Producing a final, Tableau-ready analysis table for visualization

SQL scripts are organized in the `/sql` directory and follow a layered view approach:
1. Raw data reference  
2. Base cleaning and standardization  
3. Experiment-aware outcome modeling  
4. Final export table for visualization  

---

## Dashboard Overview (Tableau)
The Tableau dashboard presents experiment results across six complementary views:

1. **Completion Rate by Experiment Group**  
2. **Revenue by Experiment Group**  
3. **Completed Rides by Experiment Group**  
4. **Completion Rate by Hour of Day**  
5. **Average Surge Multiplier by Experiment Group**  
6. **Completed Ride Hotspots (Map)**  

<img width="1069" height="761" alt="image" src="https://github.com/user-attachments/assets/f6bb4e22-2e82-44e2-9e10-705722cb2523" />


---

## Tools Used
- **BigQuery (SQL):** Data cleaning, transformation, and metric definition  
- **Tableau Public:** Visualization and dashboard creation  

---

## Notes on Data
This dataset is **synthetic** and designed for educational and portfolio purposes. While the data itself is simulated, the experimental design, metric definitions, and analytical workflow closely reflect real-world rideshare and marketplace analytics practices.

---

## Links
- **Tableau Public Dashboard:** https://public.tableau.com/app/profile/harrison.nordstrom/viz/RideshareABTest/Dashboard1?publish=yes
- **LinkedIn:** www.linkedin.com/in/nordstromharrison

---

## About Me
I am an aspiring data analyst with experience in SQL, data visualization, and applied analytics. This project is part of a broader portfolio demonstrating my ability to reason through experimental design, build defensible metrics, and communicate insights clearly through data.

Feel free to connect with me on LinkedIn or explore the rest of my portfolio.
