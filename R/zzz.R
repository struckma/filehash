.onLoad <- function(lib, pkg) {
        assign("defaultType", "DB1", .filehashOptions)
        assign("db1LockMaxAttempts", "4", .filehashOptions)
        assign("db1LockSleepDuration", "0.5", .filehashOptions)

        for(type in c("DB1", "RDS")) {
                cname <- paste("create", type, sep = "")
                iname <- paste("initialize", type, sep = "")
                r <- list(create = get(cname, mode = "function"),
                          initialize = get(iname, mode="function"))
                assign(type, r, .filehashFormats)
        }
}

.onAttach <- function(lib, pkg) {
        dcf <- read.dcf(file.path(lib, pkg, "DESCRIPTION"))
        msg <- gettextf("%s: %s (%s)", dcf[, "Package"], dcf[, "Title"],
                        as.character(dcf[, "Version"]))
        packageStartupMessage(paste(strwrap(msg), collapse = "\n"))
}

.filehashOptions <- new.env()

.filehashFormats <- new.env()
