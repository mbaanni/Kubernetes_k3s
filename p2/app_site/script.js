function changeText() {
    fetch("/hostname").then(response => response.json())
    .then(data => {
        const appname = data.pod
        document.getElementById("pod").append(data.pod)
        document.getElementById("node").append(data.node)
        document.getElementById("appname").append(appname.split("-")[0] + ".")
    });

}
changeText()