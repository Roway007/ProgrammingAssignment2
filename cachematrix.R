## Put comments here that give an overall description of what your
## functions do

##  La primera función, makeCacheMatrix crea una "matriz" especial, que es realmente una lista que contiene una función para
## 1. establecer el valor de la matriz
## 2. obtener el valor de la matriz
## 3. establecer el valor de la inversa de la matriz
## 4. obtener el valor de la inversa de la matriz

makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
    set <- function(y) {
        x <<- y
        j <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) j <<- inverse
    getInverse <- function() j 
    list(
        set = set, get = get, 
        setInverse = setInverse, 
        getInverse = getInverse)
}


## 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
