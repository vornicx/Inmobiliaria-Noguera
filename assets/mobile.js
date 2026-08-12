/* Inmobiliaria Noguera · mejoras táctiles no intrusivas.
   No contiene estado de negocio: solo adapta el viewport y traduce gestos a
   los mismos botones accesibles que ya usa la galería. */

const root = document.documentElement;
const modalRoot = document.querySelector('#modal-root');

function syncViewport() {
  const viewport = window.visualViewport;
  const height = viewport?.height || window.innerHeight;
  const offset = viewport?.offsetTop || 0;
  root.style.setProperty('--visual-viewport-height', `${Math.round(height)}px`);
  root.style.setProperty('--visual-viewport-offset', `${Math.round(offset)}px`);
}

syncViewport();
window.addEventListener('resize', syncViewport, { passive: true });
window.visualViewport?.addEventListener('resize', syncViewport, { passive: true });
window.visualViewport?.addEventListener('scroll', syncViewport, { passive: true });

if (modalRoot) {
  let startX = 0;
  let startY = 0;
  let startAt = 0;
  let tracking = false;

  modalRoot.addEventListener('pointerdown', (event) => {
    if (!event.target.closest('.gallery-modal') || event.target.closest('button, a')) return;
    if (event.pointerType === 'mouse' && event.button !== 0) return;
    startX = event.clientX;
    startY = event.clientY;
    startAt = performance.now();
    tracking = true;
  }, { passive: true });

  modalRoot.addEventListener('pointerup', (event) => {
    if (!tracking) return;
    tracking = false;
    const dx = event.clientX - startX;
    const dy = event.clientY - startY;
    const elapsed = performance.now() - startAt;
    const horizontal = Math.abs(dx) > Math.abs(dy) * 1.25;
    if (!horizontal || Math.abs(dx) < 44 || elapsed > 700) return;
    const selector = dx < 0 ? '[data-action="gallery-next"]' : '[data-action="gallery-prev"]';
    modalRoot.querySelector(selector)?.click();
  }, { passive: true });

  modalRoot.addEventListener('pointercancel', () => { tracking = false; }, { passive: true });

  /* Precarga la imagen visible y deja al navegador decodificarla antes de
     pintarla. Evita el pequeño salto de tamaño que Safari puede mostrar al
     cambiar rápidamente de foto. */
  const observer = new MutationObserver(() => {
    const image = modalRoot.querySelector('.gallery-modal img');
    if (!image) return;
    image.decoding = 'async';
    image.decode?.().catch(() => {});
  });
  observer.observe(modalRoot, { childList: true, subtree: true });
}
