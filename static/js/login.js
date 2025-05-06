
document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("login-form");
    form.addEventListener("submit", async function (e) {
        e.preventDefault();
        const formData = new FormData(form);
        const response = await fetch("/login", {
            method: "POST",
            body: formData,
        });
        const result = await response.json();
        document.getElementById("mensaje").innerText = result.message;
    });
});
