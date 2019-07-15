function PopupNotification(title, message, type) {

    if (type === "Success") {
        $.toast({
            heading: title,
            text: message,
            allowToastClose: true,
            position: "top-right",
            icon: 'success'
        });
    } else if (type === "Warning") {
        $.toast({
            heading: title,
            text: message,
            hideAfter: false,
            allowToastClose: true,
            position: "top-right",
            bgColor: "#9F6000",
            icon: 'warning'
        });
    } else if (type === "Error") {
        $.toast({
            heading: title,
            text: message,
            hideAfter: false,
            allowToastClose: true,
            position: "top-right",
            bgColor: "#ed5249",
            icon: 'error'
        });
    }
}

function ClosePopup() {
    $("[data-dismiss=modal]").trigger({ type: "click" });
}