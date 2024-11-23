/* ----------------------------------------------------------------------------
						Github lesson config file
						
	Code author: Roberto Gonzalez
	Date: November 23, 2024
	
	Objective: Regress wine quality on wine characteristics
---------------------------------------------------------------------------- */

/* Read in data */
import delimited using "${src}/winequality-red.csv", clear case(lower)

/* regress outcome on covariates */
reghdfe quality fixedacidity volatileacidity citricacid residualsugar chlorides ///
	freesulfurdioxide totalsulfurdioxide density ph sulphates alcohol, noabsorb vce(robust)