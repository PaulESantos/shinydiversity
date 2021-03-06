# Home Module UI funciton
homeUI <- function(id) {
    # Create a namespace function using the provided ID
    ns <- NS(id)

    # NOTE: All referenced input variables must be wrapped with a call to ns(), ex. ns("someInputID")
    render("README.md", output_format = "html_document", quiet = TRUE)

    # Define the UI for the app
    tagList(
        fluidPage(
            fluidRow(
                column(12, includeHTML("README.html"))
            )
        )
    )
}
