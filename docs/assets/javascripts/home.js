document.addEventListener('DOMContentLoaded', function() {
  const peekContainer = document.querySelector('.peek-container');
  const featureContent = document.querySelector('.feature-content');
  
  window.addEventListener('scroll', () => {
    const scrolled = window.scrollY;
    const vh = window.innerHeight;
    
    // When scrolled to feature section
    if (scrolled > vh * 0.5) {
      peekContainer.classList.add('scrolled');
      featureContent.classList.add('animate');
    }
  });
});