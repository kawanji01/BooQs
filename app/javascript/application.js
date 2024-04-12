// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "custom/menu"
import "custom/image_upload"


function setupScroll(elementName) {
    const button = document.getElementById(`scroll-button-${elementName}`);
    if (button) {
        button.addEventListener('click', function(event) {
            event.preventDefault();  // ボタンのデフォルトの動作を阻止
            document.getElementById(elementName).scrollIntoView({
                behavior: 'smooth'
            });
        });
    }
}

document.addEventListener('DOMContentLoaded', function() {
    ['home', 'services', 'company', 'contact'].forEach(setupScroll);
});