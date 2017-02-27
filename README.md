# operator.tools

## Utilities for working with R's operators

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/operator.tools)](https://cran.r-project.org/package=formula.tools)
[![License](https://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](https://www.gnu.org/licenses/gpl-2.0.html) 
[![Downloads](https://cranlogs.r-pkg.org/badges/formula.tools?color=brightgreen)](https://www.r-pkg.org/pkg/formula.tools)

This package provides an extensible collection of utilities for programming with operators that appear in language objects such as formulas, calls and expressions. Various routines allow operations classifying operators, translating between an operator and its underlying function, and inverting some types of operators, etc. All methods can be extended to custom infix operators.


## Installation 

### Stable Version 

    install.packages('formula.tools')

### Development Verison 

    devtools::install_github("decisionpatterns/formula.tools")
    
## Important Functions 

- **`operators`**: Get list of known operators
- **`setOperator`**: Register a new type of operator
  - **`removeOperator`**: UNregister an operator
- **`is.operator`**: Test if object is an operator
- **`can.operator`**: Can object be coerced to an operator
- **`as.operator`**: Coerce object to an operator if possible
- **`operator.type`**: get the type of an operator
