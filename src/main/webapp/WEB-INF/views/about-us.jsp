<!-- Purple Team: D. Bonis, R. Duvall, M. Guthman, O.Tsolmon -->

<!-- Author: M.Guthman
Date: 09/04/2023 -->

<!DOCTYPE html>
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <head>
        <title>About Us</title>
        <link rel="stylesheet" type="text/css" href="css/aboutUsPageStyle.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.typekit.net/lot0wjb.css">
    </head>

    <body>
        <header>
            <a href="home"><img id=logo src="_images/MB_Title_Logo_3.png"></img></a>
            <!-- USER ICON-->
            <a href="login"><i class="fa fa-user-circle-o"
                    style="float: right; font-size: 56px; color: #554D41"></i></a>
            <div class="navbar">

                <div class="nav-grid-container">

                    <div class="nav-grid-item">

                    </div>

                    <div class="nav-grid-item">

                        <a href="about-us" target="_self">ABOUT US</a>
                    </div>

                    <div class="nav-grid-item">

                        <a href="attractions" target="_self">ATTRACTIONS</a>

                    </div>

                    <div class="nav-grid-item">

                        <a href="lookup" target="_self">FIND RESERVATION</a>

                    </div>

                    <div class="nav-grid-item">

                        <a href="reservation" target="_blank">MAKE RESERVATION</a>

                    </div>

                </div>
            </div>
        </header>

        <div class="about-header">
            <img id="about-us-main" src="_images/about-us-main.jpg">
        </div>
        <div class="wrapper">
            <div class="card">
                <div class="card-image">
                    <figcaption>Our Team</figcaption>
                    <img onmouseover="fade(this)" onmouseout="normal(this)" src="_images/about-us-1.jpg" />
                </div>
                <div class="card-content">
                    <p class="text" style="opacity: 0;">Each member dedicated to the Moffat Bay Lodge brings a unique set of
                        skills and a wealth of
                        knowledge, ensuring that every guest's stay is not only the height of comfort but a truly
                        extraordinary experience. From our seasoned guides who know the wilderness fully, to our
                        culinary masterminds who craft delectable dishes, every aspect of your visit is carefully
                        curated.
                        <br/>
                        <br/>
                        We believe in more than just accommodation; we believe in creating amazing memories that will
                        last a lifetime. With warmth, professionalism, and a deep-rooted connection to this stunning
                        landscape, the Moffat Bay Lodge team is focused on giving you the vacation you deserve.
                    </p>
                </div>
            </div>
            <div class="card">
                <div class="card-image">
                    <figcaption>Our History</figcaption>
                    <img onmouseover="fade(this)" onmouseout="normal(this)" src="_images/about-us-2.jpg" />
                </div>
                <div class="card-content">
                    <p id="history" class="text" style="opacity: 0;">Founded by a visionary team of hospitality experts and conservation
                        enthusiasts, Moffat Bay Lodge
                        was conceived with a single mission: to provide guests with an unparalleled experience that
                        seamlessly integrates with the breathtaking surroundings. Drawing inspiration from the rich
                        surrounding natural beauty of the Washington Coast and the newly built Moffat Bay Marina, The
                        Lodge design pays homage to the area's legacy of natural beauty on the private Island of
                        Joviedsa.
                        <br/>
                        <br/>
                        Blending traditional and contemporary elegance, each detail from the locally sourced
                        construction materials to the mindfully curated interior design does nothing but reflect Moffat
                        Bay's dedication to preserving all the natural wonders of the surrounding area for many more
                        generations to come. </p>
                </div>
            </div>
            <div class="card">
                <div class="card-image">
                    <figcaption>Our Beauty</figcaption>
                    <img onmouseover="fade(this)" onmouseout="normal(this)" src="_images/about-us-3.jpg" />
                </div>
                <div class="card-content">
                    <p class="text" style="opacity: 0;">Nestled on the tranquil shores of Joviedsa Island, our lodge is a haven
                        for those seeking
                        solace and rejuvenation amidst the breathtaking wonders of the natural world. At Moffat Bay
                        Lodge, we understand that our unique location is more than just a backdrop - it's a living,
                        breathing testament to the awe-inspiring power of nature. Surrounded by the rugged elegance
                        of the Washington Coast, Moffat Bay Lodge stands as a sanctuary for those looking to merge
                        luxury living with a natural beauty. Our pristine setting is a harmonious blend of dense
                        forests, crystal-clear waters, and majestic wildlife, all of which create an environment
                        that is as enchanting as it is invigorating.</p>
                </div>
            </div>
        </div>
        
        <script>
            // 
            function fade(x) {
                x.style.opacity = 0.1;
                var content = document.getElementsByClassName('text');
                for (var i = 0; i < content.length; i++) {
                    content[i].style.opacity = "1";
                }
        
            }
        
            function normal(x) {
                x.style.opacity = 1.0;
                var content = document.getElementsByClassName('text');
                for (var i = 0; i < content.length; i++) {
                    content[i].style.opacity = "0";
        
                }
            }
        
        </script>

        <div>
            <footer>
                <p>Moffat Bay Lodge </br>
                    1234 Moffat Bay AVE</br>
                    Joviedsa Island, WA 98550 </br>
                    1-800-555-1234
                </p>

                <div class="social-media">
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-snapchat"></a>
                </div>

                <p class="copyright">Copyright &copy; 2023 Moffat Bay</p>

            </footer>
        </div>

    </body>

</html>