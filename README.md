# R package: standardev

[![Build Status](https://travis-ci.org/peter0083/standardev2.svg?branch=master)](https://travis-ci.org/peter0083/standardev2)

### Overview

This repo contains learning material which is not meant for production use. 
A simple R function that calculates standard deviation when given a numeric/integer vector.

### Installation

    1. go to https://github.ubc.ca/settings/tokens
    2. "Generate new token"
    3. check the box public_repo
    4. copy the token
    5. use the following command:
    
```{r}
devtools::install_github("ptylin/standardev", host ="github.ubc.ca/api/v3", auth_token="TOKEN_GOES_HERE")
```

### Usage

**standard_deviation:**

Please see example usage below:

First, build a vector for the numbers you want to calculate standard deviation
```{r}
vector_NHL_player_salaries <- c(4060000, 6590000, 5640000)
```

Secondly, use this vector as an input for standard_deviation function
```{r}
standard_deviation(vector_NHL_player_salaries)

```

**standard_error:**

Use the NHL vector mentioned above (or another vector of numbers) as an input for the standard_error function
```{r}
standard_error(vector_NHL_player_salaries)
```


