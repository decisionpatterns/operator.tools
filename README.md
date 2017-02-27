# operator.tools

# Utilities for working with R's operators

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/operator.tools)](https://cran.r-project.org/package=formula.tools)
[![License](https://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](https://www.gnu.org/licenses/gpl-2.0.html) 
[![Downloads](https://cranlogs.r-pkg.org/badges/formula.tools?color=brightgreen)](https://www.r-pkg.org/pkg/formula.tools)

This package provides an extensible collection of utilities for programatically working with operators that appear in language objects such as formulas, calls and expresions.  Various routines allow operations classifying and determining an operator type, translating between an operator and its underlying function, and inverting certain types of operators, etc. All of these can be applied to new/custom infix operators. 


## Installation 

### Stable Version 

    install.packages('formula.tools')

### Development Verison 

    devtools::install_github("decisionpatterns/formula.tools")
    
## Important Functions 

- *`operators`*: Get list of known operators
- *'setOperator`*: Register a new type of operator
  - *`removeOperator`*: UNregister an operator
- *'is.operator`*: Test if object is an operator
- *`can.operator`*: Can object be coerced to an operator
- *'as.operator`*: Coerce object to an operator if possible
- *`operator.type`*: get the type of an operator