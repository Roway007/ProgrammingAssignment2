## Put comments here that give an overall description of what your
## functions do

##  La primera función, makeCacheMatrix crea una "matriz" especial, que es realmente una lista que contiene una función para:
## 1. establecer el valor de la matriz
## 2. obtener el valor de la matriz
## 3. establecer el valor de la inversa de la matriz
## 4. obtener el valor de la inversa de la matriz

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m 
    list(
        set = set, get = get, 
        setInverse = setInverse, 
        getInverse = getInverse)
}


## La función cacheSolve calcula la inversa de la "matriz" especial que se creó con la función makeCacheMatrix.
## Primero verifica si la inversa ya se ha calculado y si es así, obtiene la inversa de la caché y omite el cálculo.
## De lo contrario, calcula la inversa de la matriz y establece el valor de la inversa en el caché a través de la función setInverse.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m
}
