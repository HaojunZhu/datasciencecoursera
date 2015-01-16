## Below are a pair of functions that cache the inverse of matrix, rather than computing
## it repeatedly. 

## The following function creates a special matrix.

makeCacheMatrix <- function(x = matrix()) {
	m = NULL
  	set = function(y){
 		 x = y
 		 m =-NULL
	}
	get = function() x
	setmatrix = function(solve) m = solve
	getmatrix = function() m
	list(set=set, get=get,
   		setmatrix=setmatrix,
   		getmatrix=getmatrix)

}


## The following function solve for the inverse of the matrix created with the function above.
## If the inverse has already been calculated, it gets the inverse from the cache, otherwise, 
## it solve for the inverse. 

cacheSolve <- function(x, ...) {
	m = x$getmatrix()
	if(!is.null(m)){
		message("getting cached data")
      	return(m)
	}
	matrix = x$get()
	m = solve(matrix, ...)
	x$setmatrix(m)
	m
}
