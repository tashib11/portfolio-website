//about -- skill and education 
var tablinks=document.getElementsByClassName("tab-links");
var tabcontents=document.getElementsByClassName("tab-contents");

function openTab(tabname,event){
    for ( tablink of tablinks){  // In simple terms forIN iterates over the KEYS IN the array(index)/object(key), whereas forOF iterates over the VALUES OF the array(value).
        tablink.classList.remove("active-link");
    }
    for ( tabcontent of tabcontents){
        tabcontent.classList.remove("active-tab");
    }
    // document.getElementById(tabname).classList.add("active-link"); hobe na cz id name unique hote hoi
    event.currentTarget.classList.add("active-link")
/* if i not pass event as paramete , then here event will be depreciated,The event object is typically passed as an argument to the event handler function. If you're seeing a deprecation warning, it's likely because you're trying to access event without passing it as an argument to the function.
To resolve this,To resolve this, you should pass the event object as an argument to your openTab function. Here's how you can modify your function to accept the event object: */
    document.getElementById(tabname).classList.add("active-tab");
}

//kuet once visit then the color will be red
document.addEventListener('DOMContentLoaded', function() { //By wrapping the code in a DOMContentLoaded event listener, you ensure that the script doesn't run until the entire HTML document has been loaded and parsed. This guarantees that all elements are available in the DOM when the script attempts to access them, allowing the event listener to be added successfully.
    var kuLink = document.getElementById("kuet");
    kuLink.addEventListener('click', function() {
        this.style.color = "purple";
        
    });
});
document.addEventListener('DOMContentLoaded', function() { //By wrapping the code in a DOMContentLoaded event listener, you ensure that the script doesn't run until the entire HTML document has been loaded and parsed. This guarantees that all elements are available in the DOM when the script attempts to access them, allowing the event listener to be added successfully.
    var kuLink = document.getElementById("ndc");
    kuLink.addEventListener('click', function() {
        this.style.color = "purple";
        
    });
});

//------about page done-------

// sidemenu---------
var sidemeu= document.getElementById("sidemenu");
function openMenu(){
    sidemeu.style.right="0";
}
function closeMenu(){
    sidemeu.style.right="-150px";
}
// -----sidemeu created-------

//header text dynamic approach



var typed= new Typed(".text",{
    strings:["Full stack developer","Android developer","Web developer"],
    typeSpeed:80,backSpeed:50,backDelay:900,
    loop: true
});

// arrow creating
let lastScrollTop = 0;

window.addEventListener('scroll', function() {
    const scrollTop = document.documentElement.scrollTop;
    const contactSection = document.getElementById('contact');
    const btn = document.querySelector(".scroll-up-button");

    if (scrollTop > lastScrollTop || (contactSection && isInContactSection(contactSection))) {
        // Downscroll or in contact section, show the button
        btn.style.display = "block";
    } else {
        // Upscroll and not in contact section, hide the button
        btn.style.display = "none";
    }

    lastScrollTop = scrollTop <= 0 ? 0 : scrollTop; // For Mobile or negative scrolling
}, false);

const btn = document.querySelector(".scroll-up-button");
btn.addEventListener("click", () => {
    document.documentElement.scrollTo({
        top: 0, behavior: "smooth"
    });
});

function isInContactSection(contactSection) {
    const rect = contactSection.getBoundingClientRect();
    return (
        rect.top >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight)
    );
}

/*Sure, let's break down the JavaScript code you provided:

1. `let lastScrollTop = 0;` - This line declares a variable named `lastScrollTop` and initializes it to 0. This variable will keep track of the last known scroll position.

2. `window.addEventListener('scroll', function() {...}, false);` - This line adds an event listener to the window object. The event listener triggers whenever the user scrolls the page. The third argument `false` specifies that the event handler should be executed in the bubbling phase, not the capturing phase.

3. Inside the event listener function, `const scrollTop = window.pageYOffset || document.documentElement.scrollTop;` - This line gets the current vertical scroll position. It uses `window.pageYOffset` first, and if that's not available (which would be the case in older versions of Internet Explorer), it falls back to `document.documentElement.scrollTop`.

4. The next part of the function checks if the user is scrolling up or down:

   - `if (scrollTop > lastScrollTop) {...}` - If the current scroll position is greater than the last known scroll position, that means the user is scrolling down. So, the scroll-up button is displayed with `btn.style.display = "block";`.
   
   - `else {...}` - If the current scroll position is less than or equal to the last known scroll position, that means the user is scrolling up. So, the scroll-up button is hidden with `btn.style.display = "none";`.

5. `lastScrollTop = scrollTop <= 0 ? 0 : scrollTop;` - This line updates the last known scroll position. If the current scroll position is less than or equal to 0 (which means the user is at the very top of the page), it sets `lastScrollTop` to 0. Otherwise, it sets `lastScrollTop` to the current scroll position.

6. `const btn = document.querySelector(".scroll-up-button");` - This line selects the scroll-up button element from the DOM using its class name.

7. `btn.addEventListener("click", () => {...});` - This line adds a click event listener to the scroll-up button. When the button is clicked, the page smoothly scrolls to the top.*/