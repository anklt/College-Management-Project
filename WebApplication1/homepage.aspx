<%@ Page Title="Home" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/homepage.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <!-- Welcome Section -->
        <div class="jumbotron text-center">
            <h1 class="display-4">Welcome to MUS University</h1>
            <p class="lead">Where academic excellence meets holistic development.</p>
            <hr class="my-4">
            <p>Explore our programs, vibrant campus life, and the opportunities that shape your future.</p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn More</a>
        </div>

        <!-- Parallax Section -->
        <div class="parallax">
            <h1>Experience the Best of MUS University</h1>
        </div>

        <!-- Introduction and Highlights -->
        <div class="row mt-5 text-center fade-in-section">
            <div class="col-md-6">
                <div class="highlight-box">
                    <i class="fas fa-info-circle fa-2x mb-3"></i>
                    <h2>About Us</h2>
                    <p>At MUS University, we are committed to nurturing talent, fostering creativity, and preparing students for leadership roles in a global society.</p>
                    <a href="#" class="btn btn-secondary">Read More</a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="highlight-box">
                    <i class="fas fa-certificate fa-2x mb-3"></i>
                    <h2>Our Programs</h2>
                    <p>We offer a wide range of undergraduate, graduate, and research programs across various disciplines. Whether you are interested in science, arts, technology, or management, we have something for you.</p>
                    <a href="#" class="btn btn-secondary">View Programs</a>
                </div>
            </div>
        </div>

        <!-- Campus Life Section -->
        <div class="row mt-5 text-center fade-in-section">
            <div class="col-md-12">
                <h2>Life at MUS University</h2>
                <p class="mt-3">Our campus is a hub of academic, cultural, and social activities. With state-of-the-art facilities, student organizations, and numerous events throughout the year, MUS University offers a vibrant environment for personal and professional growth.</p>
                <a href="#" class="btn btn-outline-light mt-3">Explore Campus Life</a>
            </div>
        </div>

        <!-- Features Section with Background Images -->
        <div class="row text-center mt-5 fade-in-section">
            <div class="col-md-4 background-box" style="background-image: url('path-to-your-academics-image.jpg');">
                <i class="fas fa-graduation-cap fa-3x mb-3"></i>
                <h3>Academics</h3>
                <p>We strive for academic excellence with a focus on innovation, research, and interdisciplinary learning.</p>
                <a href="#" class="btn btn-outline-light">Academic Programs</a>
            </div>
            <div class="col-md-4 background-box" style="background-image: url('path-to-your-student-life-image.jpg');">
                <i class="fas fa-users fa-3x mb-3"></i>
                <h3>Student Life</h3>
                <p>Engage in clubs, sports, and events that make campus life enriching and unforgettable.</p>
                <a href="#" class="btn btn-outline-light">Student Life</a>
            </div>
            <div class="col-md-4 background-box" style="background-image: url('path-to-your-facilities-image.jpg');">
                <i class="fas fa-university fa-3x mb-3"></i>
                <h3>Facilities</h3>
                <p>From modern libraries to advanced labs, MUS University provides the best facilities for holistic education.</p>
                <a href="#" class="btn btn-outline-light">Campus Facilities</a>
            </div>
        </div>
    </div>

    <!-- JavaScript for fade-in effect -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var sections = document.querySelectorAll('.fade-in-section');

            var observer = new IntersectionObserver(function (entries) {
                entries.forEach(function (entry) {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('is-visible');
                    }
                });
            }, { threshold: 0.1 });

            sections.forEach(function (section) {
                observer.observe(section);
            });
        });
    </script>
</asp:Content>
