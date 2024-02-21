#First, let's make a simple S3 list.
s3_list <- list(name = "Bill", age = 30, gen = "M", speed = 15.1)
s3_list

#For fun, let's try adding a class to the S3 list.
class(s3_list) <- "runner"
attributes(s3_list)

#Now, for S4, we need to properly define the class for this list...
setClass("runner",
         slots = c(name = "character",
                    age = "numeric",
                    gen = "character",
                  speed = "numeric"))

#And now we can make said S4 list!
s4_list <- new("runner", name = "Bill", age = 30, gen = "M", speed = 15.1)
s4_list