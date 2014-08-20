checkDependencies <- function (vectorOfPackageNames)
{
    for(i in seq_along(vectorOfPackageNames))
    {
        currpack=vectorOfPackageNames[[i]]
        #try to load the package...
        if(!require(currpack, character.only = TRUE))
        {
            install.packages(currpack)
            #check if success
            if(!require(currpack, character.only = TRUE))
            {
                stop(paste("FAIL: unable to install package", currpack))
            }
        }
        cat("SUCCESS: package",currpack,"loaded")
    }
}
