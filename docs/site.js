let currentLang = "en";

const languageButton = document.getElementById("langToggle");
const galleryMain = document.getElementById("galleryMain");
const galleryTitle = document.getElementById("galleryTitle");
const galleryTabs = [...document.querySelectorAll(".gallery-tab")];

function applyLanguage(lang) {
  currentLang = lang;
  document.documentElement.lang = lang;
  document.querySelectorAll("[data-en][data-es]").forEach(el => {
    el.textContent = el.dataset[lang];
  });
  languageButton.textContent = lang === "en" ? "ES" : "EN";

  const activeTab = document.querySelector(".gallery-tab.active");
  if (activeTab) {
    galleryTitle.textContent = activeTab.dataset[`title${lang === "en" ? "En" : "Es"}`];
  }
}

languageButton.addEventListener("click", () => {
  applyLanguage(currentLang === "en" ? "es" : "en");
});

galleryTabs.forEach(tab => {
  tab.addEventListener("click", () => {
    galleryTabs.forEach(item => item.classList.remove("active"));
    tab.classList.add("active");
    galleryMain.style.opacity = ".25";
    setTimeout(() => {
      galleryMain.src = tab.dataset.image;
      galleryMain.style.opacity = "1";
    }, 130);
    galleryTitle.textContent = tab.dataset[`title${currentLang === "en" ? "En" : "Es"}`];
  });
});

galleryMain.style.transition = "opacity .18s ease";
applyLanguage("en");
