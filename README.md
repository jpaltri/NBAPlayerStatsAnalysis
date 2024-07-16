# Contract Year Phenomenon in the NBA

This repository contains an analysis of the Contract Year Phenomenon in the NBA. The study examines whether NBA players increase their performance during contract years and decrease it afterward.

## Table of Contents

1. [Abstract](#abstract)
2. [Introduction](#introduction)
3. [Background](#background)
4. [Variables](#variables)
5. [Data Source](#data-source)
6. [Data Tables and Presentation of Results](#data-tables-and-presentation-of-results)
7. [Analysis](#analysis)
8. [Results](#results)
9. [Conclusion](#conclusion)
10. [Installation](#installation)
11. [Usage](#usage)

## Abstract

In this study, we investigate the Contract Year Phenomenon in the NBA by analyzing the performance of free agents over a three-year period, focusing on the contract year in the middle. Our hypothesis was that players increase their productivity in their contract year and decrease it once the contract is secured. Contrary to our expectations, our analysis using regression, descriptive statistics, and correlation matrices found no significant change in player performance during the contract year. Thus, we conclude that the Contract Year Phenomenon is not a reliable predictor of player performance.

## Introduction

In the NBA, long-term guaranteed contracts are thought to encourage players to boost their effort before securing a new contract and potentially reduce it afterward. This phenomenon mirrors real-life employee behavior around salary negotiations. Our team hypothesized that player productivity would spike in contract years and drop after the contract is signed. This paper aims to evaluate the reality of this hypothesis by analyzing player data from three NBA seasons.

## Background

Understanding the NBA's economic backdrop is crucial. The league is one of the most profitable in the USA, exemplified by the Brooklyn Nets' $3.2 billion sale in 2019. With rising revenues, general managers fear overpaying for top talent who might underperform post-contract. This study aims to determine if general managers' concerns are valid by analyzing player performance data, particularly around contract years.

## Variables

### Dependent Variable
- **Player Efficiency Rating (PER):** Measures a player’s per-minute productivity.

### Independent Variables
- **True Shooting (TS%):** Efficiency in shooting.
- **Box Plus/Minus (BPM):** Player’s contribution to the team.
- **Win Shares per 48 Minutes (WS/48):** Player's contribution to team wins.
- **Usage (USG%):** Player's role in the team's offense.
- **Minutes Played:** Time spent on the court.

## Data Source

We collected data from Basketball Reference, focusing on player statistics across the 2017-2018, 2018-2019, and 2019-2020 seasons. Data was organized into spreadsheets and imported into R for analysis.

## Data Tables and Presentation of Results

### Descriptive Statistics

- **2017-2018 Season:** Players with two years remaining on their contract.
- **2018-2019 Season:** Contract year for the same players.
- **2019-2020 Season:** First year post-contract.

Key performance variables like PER and USG showed a slight decrease from the contract year to the following year, suggesting some drop in performance.

### Regression Results

Separate regressions for each season indicated that:
- **Usage:** Positively correlated with PER.
- **Position:** Positive but inconsistent correlation with PER.
- **Age and Height:** No significant correlation with PER.

## Analysis

Regression analyses indicated that variables like usage significantly relate to PER, while age and height do not. This suggests that player effort (usage) is a better predictor of performance than physical attributes or position.

### Correlation Matrices

- **2017-2018:** Initial performance metrics.
- **2018-2019:** Metrics during the contract year.
- **2019-2020:** Metrics after the new contract.

No significant change in the relationship between usage and PER was observed, contradicting the Contract Year Phenomenon hypothesis.

## Results

The analysis did not support the hypothesis that players perform significantly better in their contract year. Although there was a noticeable drop in performance metrics after the contract year, this does not align consistently with the Contract Year Phenomenon.

## Conclusion

Our analysis of NBA free agents over three seasons found no significant evidence supporting the Contract Year Phenomenon. While there are intuitive reasons to believe in this phenomenon, our data suggests it is not a reliable predictor of player performance. Further studies over different periods might provide additional insights.

## Installation

To set up the project, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/NBAPlayerStatsAnalysis.git
    cd NBAPlayerStatsAnalysis
    ```

2. Install the required R packages:
    ```R
    install.packages(c("dplyr", "ggplot2", "readr", "stargazer"))
    ```

## Usage

1. Place the datasets (`2017.csv`, `2018.csv`, `2019.csv`) in the root directory of the project.

2. Run the main analysis script:
    ```R
    source("main.R")
    ```
