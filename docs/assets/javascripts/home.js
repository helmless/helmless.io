document.addEventListener('DOMContentLoaded', function() {
  const featureCards = document.querySelector('.feature-cards');
  
  // Create intersection observer for feature cards
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('animate');
        // Once animation is triggered, stop observing
        observer.unobserve(entry.target);
      }
    });
  }, {
    threshold: 0.3, // Trigger when 30% of the element is visible
    rootMargin: '-50px' // Adjust when the animation triggers
  });

  // Start observing the feature cards
  if (featureCards) {
    observer.observe(featureCards);
  }
});