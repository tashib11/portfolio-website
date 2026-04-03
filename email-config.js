// EmailJS Configuration and Contact Form Handler

// Initialize EmailJS with your public key
emailjs.init('5ySi9pV5-xxYb2F0J'); // Public key for EmailJS

// Handle contact form submission
document.addEventListener('DOMContentLoaded', function () {
  const contactForm = document.getElementById('contactForm');

  if (contactForm) {
    contactForm.addEventListener('submit', function (e) {
      e.preventDefault();

      // Show loading state
      const submitBtn = contactForm.querySelector('button[type="submit"]');
      const originalText = submitBtn.textContent;
      submitBtn.textContent = 'Sending...';
      submitBtn.disabled = true;

      // Prepare template parameters
      const templateParams = {
        from_name: document.getElementById('from_name').value,
        from_email: document.getElementById('from_email').value,
        message: document.getElementById('message').value,
        to_email: 'tashibul.is@gmail.com',
      };

      // Send email using EmailJS
      emailjs.send('service_6itr7p0', 'template_0qjwbaw', templateParams).then(
        function (response) {
          console.log('SUCCESS!', response.status, response.text);

          // Reset form
          contactForm.reset();

          // Show success message
          alert('✓ Message sent successfully! I will get back to you soon.');

          // Reset button
          submitBtn.textContent = originalText;
          submitBtn.disabled = false;
        },
        function (error) {
          console.log('FAILED...', error);
          alert(
            '✗ Failed to send message. Please try again or contact me directly at tashibul.is@gmail.com',
          );

          // Reset button
          submitBtn.textContent = originalText;
          submitBtn.disabled = false;
        },
      );
    });
  }
});
