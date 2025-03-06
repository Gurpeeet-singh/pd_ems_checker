window.addEventListener('message',
    function(event) {
        if(event.data.type === "update") {
            document.getElementById("policeCount").innerText = event.data.police;
            document.getElementById("emsCount").innerText = event.data.ems;
        }
    });