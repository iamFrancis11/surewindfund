(function () {
  var toggle = document.querySelector('.nav-toggle'), nav = document.getElementById('nav');
  toggle.addEventListener('click', function () {
    var open = nav.classList.toggle('open');
    toggle.setAttribute('aria-expanded', open);
  });
  nav.addEventListener('click', function (e) {
    if (e.target.tagName === 'A') { nav.classList.remove('open'); toggle.setAttribute('aria-expanded', false); }
  });

  document.getElementById('year').textContent = new Date().getFullYear();

  var form = document.getElementById('contact-form'),
      status = document.getElementById('form-status'),
      msg = form.elements['message'], count = document.getElementById('count');
  msg.addEventListener('input', function () { count.textContent = msg.value.length + ' / 180'; });

  form.addEventListener('submit', function (e) {
    e.preventDefault();
    status.className = '';
    var name = form.elements['name'].value.trim(), email = form.elements['email'].value.trim();
    if (!name || !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(email)) {
      status.className = 'err';
      status.textContent = 'Enter your full name and a valid email address.';
      return;
    }
    status.textContent = 'Sending...';
    fetch(form.action, { method: 'POST', body: new FormData(form) })
      .then(function (r) { return r.json(); })
      .then(function (d) {
        status.className = d.ok ? 'ok' : 'err';
        status.textContent = d.ok ? 'Thanks. We will be in touch soon.' : (d.error || 'Could not send. Email invest@surewinefund.com instead.');
        if (d.ok) { form.reset(); count.textContent = '0 / 180'; }
      })
      .catch(function () {
        status.className = 'err';
        status.textContent = 'Could not send. Email invest@surewinefund.com instead.';
      });
  });
})();
