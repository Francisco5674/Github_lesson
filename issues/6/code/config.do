/* ----------------------------------------------------------------------------
						Github lesson config file
						
	Code author: Roberto Gonzalez
	Date: November 23, 2024
---------------------------------------------------------------------------- */

clear all

/* Set up main directory */
if "`c(username)'" == "Rob_9" {
	global main "C:/Users/Rob_9/Dropbox/Github_lesson"
}

/* Set up global to source folder */
global src "${main}/source"

/* Set up global to issues folder */
global issues "${main}/issues"

/* Make folder related to issuea 6 */
capture mkdir "${issues}/6"

/* Set up global to code folder */
global code "${issues}/6/code"
capture mkdir "${code}" // Make directory for code

/* Set up results global and folder */
global results "${issues}/6/results"
capture mkdir "${results}"
