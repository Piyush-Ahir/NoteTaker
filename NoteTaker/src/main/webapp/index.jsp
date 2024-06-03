<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Note Taking</title>
    <%@include file="all_js_css.jsp"%>
    <style>
        .inner-cover {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        .lead {
            max-width: 600px;
           
        }
    </style>
</head>
<body>
    <div class="container m-3">
        <%@include file="navbar.jsp"%>
        <br>
        <br>
        <main role="main" class="inner-cover m-3">
            <h1 class="cover-heading">Trace Your Progress</h1>
            <div class="lead m-3">
                Welcome to TaskMaster, your ultimate solution for staying organized and productive. 
                Whether you're a busy professional, a dedicated student, an inspiring teacher, an IT specialist, 
                a gym trainer, or a trainee, TaskMaster is designed to simplify your life. Our intuitive to-do list 
                and note-taking platform helps you manage tasks efficiently, set priorities, and track progress with ease. 
                Stay on top of your responsibilities and achieve your goals with TaskMaster - where your productivity meets simplicity.
            </div>
            <p class="lead m-3" >
                <a href="addnotes.jsp" class="btn btn-lg btn-secondary">Start Here</a>
            </p>
        </main>
    </div>
</body>
</html>
