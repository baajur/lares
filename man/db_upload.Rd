% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dropbox.R
\name{db_upload}
\alias{db_upload}
\title{Upload Dropbox File}
\usage{
db_upload(
  filename,
  dir,
  delete_file = FALSE,
  token_dir = NA,
  token_name = "token_pers.rds"
)
}
\arguments{
\item{filename}{String. File's name}

\item{dir}{String. Directory you wish to upload the file to}

\item{delete_file}{Boolean. Delete local file after uploading?}

\item{token_dir}{Character. Credential's local directory}

\item{token_name}{Character. RDS file name with your token's data}
}
\description{
This function lets the user download a file from Dropbox, specifying
its name and using a previously created token.
}
\seealso{
Other Tools: 
\code{\link{autoline}()},
\code{\link{bindfiles}()},
\code{\link{bring_api}()},
\code{\link{db_download}()},
\code{\link{export_plot}()},
\code{\link{export_results}()},
\code{\link{get_credentials}()},
\code{\link{h2o_predict_API}()},
\code{\link{h2o_predict_MOJO}()},
\code{\link{h2o_predict_binary}()},
\code{\link{h2o_predict_model}()},
\code{\link{h2o_selectmodel}()},
\code{\link{h2o_update}()},
\code{\link{haveInternet}()},
\code{\link{image_metadata}()},
\code{\link{importxlsx}()},
\code{\link{ip_country}()},
\code{\link{iter_seeds}()},
\code{\link{json2vector}()},
\code{\link{listfiles}()},
\code{\link{mailSend}()},
\code{\link{msplit}()},
\code{\link{myip}()},
\code{\link{pass}()},
\code{\link{quiet}()},
\code{\link{read.file}()},
\code{\link{statusbar}()},
\code{\link{tic}()},
\code{\link{try_require}()},
\code{\link{updateLares}()},
\code{\link{zerovar}()}

Other Dropbox: 
\code{\link{db_download}()}
}
\concept{Dropbox}
\concept{Tools}
