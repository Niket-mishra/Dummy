<!DOCTYPE html>
<html>
<head>
    <title>Call Servlet from JSP</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <h1>Call Servlet Without Redirecting</h1>
    
    <!-- Button to trigger the AJAX call -->
    <button id="callServletBtn">Call Servlet</button>
    
    <!-- Container to display the result -->
    <div id="resultContainer"></div>

    <script>
        $(document).ready(function() {
            $("#callServletBtn").click(function() {
                // Make AJAX call to the servlet
                $.ajax({
                    url: "AdminController", // Servlet URL
                    type: "GET",
                    success: function(response) {
                        // Display response in the result container
                        $("#resultContainer").text(response);
                    },
                    error: function(xhr, status, error) {
                        // Handle error
                        console.error("Error:", error);
                    }
                });
            });
        });
    </script>
</body>
</html>
