function scrollToElement(id) {
    const element = document.getElementById(id);
    if (element) {
        element.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
}

document.addEventListener("turbo:load", function() {

    // 各リンクにクリックイベントを設定
    document.getElementById('scroll-button-home-page').addEventListener('click', function(event) {
        event.preventDefault(); // デフォルトのアンカー動作を停止
        scrollToElement('home-page');
    });

    document.getElementById('scroll-button-services-page').addEventListener('click', function(event) {
        event.preventDefault();
        scrollToElement('services-page');
    });

    document.getElementById('scroll-button-company-page').addEventListener('click', function(event) {
        event.preventDefault();
        scrollToElement('company-page');
    });

    document.getElementById('scroll-button-contact-page').addEventListener('click', function(event) {
        event.preventDefault();
        scrollToElement('contact-page');
    });
});
