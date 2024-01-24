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