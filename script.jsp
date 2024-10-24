<script>
    document.addEventListener('DOMContentLoaded', function () {
        const sections = document.querySelectorAll('section');
        const fadeInElements = document.querySelectorAll('.fade-in');

        function checkPosition() {
            fadeInElements.forEach(el => {
                const rect = el.getBoundingClientRect();
                if (rect.top < window.innerHeight && rect.bottom >= 0) {
                    el.classList.add('visible');
                }
            });
        }

        window.addEventListener('scroll', checkPosition);
        checkPosition();
    });
</script>
