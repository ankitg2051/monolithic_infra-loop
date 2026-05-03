function runPipeline() {
    document.getElementById("pipeline").innerText = "Running...";
    document.getElementById("pipeline").style.color = "#f1c40f";

    setTimeout(() => {
        document.getElementById("pipeline").innerText = "Succeeded";
        document.getElementById("pipeline").style.color = "#2ecc71";
        document.getElementById("deployTime").innerText = new Date().toLocaleString();
    }, 2000);
}
