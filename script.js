//about -- skill and education 
var tablinks=document.getElementsByClassName("tab-links");
var tabcontents=document.getElementsByClassName("tab-contents");

function openTab(tabname){
    for ( tablink of tablinks){  // In simple terms forIN iterates over the KEYS IN the array(index)/object(key), whereas forOF iterates over the VALUES OF the array(value).
        tablink.classList.remove("active-link");
    }
    for ( tabcontent of tabcontents){
        tabcontent.classList.remove("active-tab");
    }
    // document.getElementById(tabname).classList.add("active-link"); hobe na cz id name unique hote hoi
    event.currentTarget.classList.add("active-link")

    document.getElementById(tabname).classList.add("active-tab");
}

//------about page done-------

// sidemenu---------
var sidemeu= document.getElementById("sidemenu");
function openMenu(){
    sidemeu.style.right="0";
}
function closeMenu(){
    sidemeu.style.right="-200px";
}
// -----sidemeu created-------

//header text dynamic approach

var typed= new Typed(".text",{
    strings:["Full stack developer","Android developer","Web developer"],
    typeSpeed:80,backSpeed:50,backDelay:900,
    loop: true
});