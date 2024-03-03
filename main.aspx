<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="portfolio.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

    <style>
    .table {
        width: 100%; /* You can adjust this value as needed */
        border-collapse: collapse;
    }

    .table th, .table td {
        padding: 10px;
        border: 1px solid #ddd; /* Add borders if needed */
    }

    .colorful-text {
        color: #b54769; /* You can use any color code or name */
    }
     .colorful-header {
        background-color: #ee56df; /* Background color for header */
        color: #fff; /* Text color for header */
        font-weight: bold; /* Make header text bold if needed */
    }
</style>

  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>personal website</title>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="https://kit.fontawesome.com/e97e6dfe0e.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>  <!--for header text-->
</head>
<body>
    <form id="form1" runat="server">
         <div id="header">
        <div class="container">
            <nav>
                <div class="l">
    <h1 style="font-size: 35px;"  class ="logo"><span style="color: #12f7ff;">T</span>ashib </h1>
                    
                </div>
                <div class="it">
                    <ul id="sidemenu">
                        <li><a href="#header">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#project">Projects</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <i class="fa-solid fa-xmark" onclick="closeMenu()"></i>
                       </ul>
                </div>
             
               <i class="fa-solid fa-bars" onclick="openMenu()"></i>
            </nav>
        </div>



      <div class="header-row">

        <div class="header-col1">
            <img src="images/myf.jpg" />
        </div>
            <div class="header-col2">
        <div class="header-text">
            <p style="font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size:32px;">Hello I'm <br></p>
                <h1> <span style="color: #ff004f;" >Md Tashibul </span> Islam </h1>
                <h4 style="color:#ababab; font-size: 28px;">Student, <br/> Computer Science and Engineering  </h4>
                <h3>And I'm a <span class="text"></span></h3>
                <div class="social-icons">
                    <a href="https://github.com/tashib11"><i class="fa-brands fa-github"></i></a>
                    <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                </div>
   
        </div>
                    
        <div id="admin">
<asp:Button ID="adminButton" runat="server" class="btn btn2" Text="Admin" OnClick="adminButton_Click" UseSubmitBehavior="false" />
      </div>

    </div>

</div>

        </div>
       
     
  
<!--about-->
        <div id="about">
            <div class="container">
                <h1 class="sub-title" >About me</h1>
      <div class="row">
          <div class="about_col_1">
                <p>
I have always been fascinated by the way technology shapes our world and the possibilities it holds for the future. 
I am eager to leverage this knowledge to contribute to innovative solutions. I am equally enthusiastic about collaboration. 
I enjoy working alongside diverse individuals who bring unique perspectives to the table.. I am committed to staying abreast
of the latest advancements, whether it's exploring a new programming language, diving into emerging technologies, or mastering a cutting-edge framework.
</p>
          </div>

                    <div class="about_col_2">
      
               
                <div class="tab-titles">
                    <p class="tab-links active-link" onclick="openTab('skills',event)"  >Skills</p>
                    <p class="tab-links" onclick="openTab('education',event)">Education</p>
                </div>
                <div class="tab-contents  active-tab" id="skills" >

                      <!--carefull-->
      
<div class="row">
    <div class="col-md-8 mx-auto">
        <asp:GridView ID="CoursesGridView" CssClass="table" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Field" HeaderText="Field" ItemStyle-CssClass="colorful-text" HeaderStyle-CssClass="colorful-header"/>
                <asp:BoundField DataField="Description" HeaderText="Proficiency"  HeaderStyle-CssClass="colorful-header" />
            </Columns>
        </asp:GridView>
    </div>
</div>

                    <!--carefull-->


                </div>
                <div class="tab-contents" id="education">

                  <!-- Timeline section -->

    <section id="timeline">
     

      
        <div class="history-tl-container">

          <ul class="timeline-ul">
                
                 
                   
            <li class="timeline-li">
                <div class="timestamp">
                    <h1>BSc in Computer Science and Engineering</h1>
                    <h3>Khulna University of Engineering & Technology, Khulna, Bangladesh (<a href="https://www.kuet.ac.bd/" class="edu">KUET</a>) </h3>
                
                    <p class="time"><b>2020-2024</b></p>
                </div>
            </li>
            <li class="timeline-li">
                <div class="timestamp">
                  <h1>Higher Secondary Certificate(H.S.C)</h1>
                    <h3>Notre Dame College, Dhaka  (<a href="https://ndc.edu.bd/" class="edu">NDC</a>)</h3>
                    <p class="time"><b>2018-2020</b></p>
                </div>
            </li>
            <li class="timeline-li">
              <div class="timestamp">
                <h1> Secondary School Certificate(S.S.C)</h1>
                  <h3>Haydarabad RKP High School, Tongi, Gazipur</h3>
                  <p class="time"><b>2016-18</b></p>
              </div>
          </li>


        </ul>
          
        </div>
 

    </section>
                </div>
                    </div>
                </div>
            </div>
        </div>
   
        <!---------Project-->

       <div id="project">
            <div class="container">
                <h1 class="sub-title">Projects</h1>
                <div class="work-list">
                    
                    <div class="work">
                        <img src="images/work-1.png"/>
                        <div class="layer">
                            <h2>Social Media App</h2>
                            <h3> <br/>NAME: KanectUs</h3> 
                      <a href=https://www.youtube.com/embed/Zscg8aC4A9M?si=IRvIw-Gmc7tzM5LK" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"">     <p> <span>Demo</span> </p> </a> 
                        <br/>    <p>download this android app code contents from the given github link</p>
                            <a href="https://github.com/tashib11/ConnectUs_socialApp"><i class="fa-solid fa-up-right-from-square"></i></a>
                        </div>
                        
                    </div>

                    <div class="work">
                        <img src="images/work-3.png"/>
                        <div class="layer">
                            <h2>Ecommerce website</h2><br>
                            <h3>Name:TechTrove</h3>
                            <a href=https://www.youtube.com/embed/Zscg8aC4A9M?si=IRvIw-Gmc7tzM5LK" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"">     <p> <span>Demo</span> </p> </a> 
                            <br/> 
                            <p>download this website's entire  code contents from the given github link</p>
                            <a href="https://github.com/tashib11/TechTrove"><i class="fa-solid fa-up-right-from-square"></i></a>
                        </div>
            </div>

         


            <div class="work">
                <img src="images/dbms2.png"/>
                <div class="layer">
                    <h2>Databse Management</h2><br/>
                    <h3>Name:Mobile Shop</h3>
                    <a href=https://www.youtube.com/embed/Zscg8aC4A9M?si=IRvIw-Gmc7tzM5LK" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"">     <p> <span>Demo</span> </p> </a> 
                    <br/> 
                    <p>download this website's entire  code contents from the given github link</p>
                    <a href="#"><i class="fa-solid fa-up-right-from-square"></i></a>
                </div>
    </div>

    <div class="work">
        <img src="images/portfolioo.png"/>
        <div class="layer">
            <h2>Portfolio </h2><br/>
          
            <br/> 
            <p>download this Portfolio's entire  code contents from the given github link</p>
            <a href="https://github.com/tashib11/portfolio-website"><i class="fa-solid fa-up-right-from-square"></i></a>
        </div>
</div>

            <div class="work">
                <img src="images/bnk6.png"/>
                <div class="layer">
                    <h2>Simple OOP based console App</h2><br/>
                    <h3>Name:Bank Management</h3> <br/>
                    <p>download this website's entire  code contents from the given github link</p>
                    <a href="https://github.com/tashib11/21project_Bank_Credit_card"><i class="fa-solid fa-up-right-from-square"></i></a>
                </div>


    </div>
        </div>
</div>

</div>
        <!--    contact-->
       
        <div id="contact">
            <div class="container">
                <p class="touch">Get in touch...</p>
                <div class="row">
                    <div class="contact-left">
                        <h1 style="color: #ababab;" class="sub-title ">Contact Me</h1>
                        <p><i class="fa-solid fa-paper-plane"></i>islam2007011@stud.kuet.ac.bd</p>
                        <p><i class="fa-solid fa-square-phone"></i> 01643600620</p>
                        <div class="social-icons" >
                            <a href="https://www.facebook.com/profile.php?id=100081121423761&mibextid=ZbWKwL"><i class="fa-brands fa-facebook"></i></a>
                              <a href="https://github.com/tashib11"><i class="fa-brands fa-github"></i></a>
                            <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                        </div>
                        <a href="CV.pdf" download class="btn btn2">Download CV</a>  <!--noted-->
                    </div>

                    <div class="contact-right">
                      
                            <asp:TextBox ID="nameTextBox" runat="server" placeholder="Your name" Required="true"></asp:TextBox>
                            <asp:TextBox ID="emailTextBox" runat="server" placeholder="Your email" Required="true" TextMode="Email"></asp:TextBox>
                            <asp:TextBox ID="messageTextBox" runat="server" placeholder="write message" TextMode="MultiLine" Rows="6" Required="true"></asp:TextBox>
                        <asp:Button ID="txtSubmit" runat="server" class="btn btn2"   Text="Send"   OnClick="txtSubmit_Click"  /> 


                         <!--   <button type="submit CssClass="submit-btn" class="btn btn2">Send</button> -->
                  <br />

                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                            </div>
                </div>
            </div>
            <button class="scroll-up-button">
                <i class="arrow-up"></i>
               </button>
               <div class="copyright">
                <p>Created by  <span > Md Tashibul Islam </span> | © All rights reserved </p>
            </div>
        </div>
        
    </form>
             <script src="js/script.js"></script>

</body>
</html>
