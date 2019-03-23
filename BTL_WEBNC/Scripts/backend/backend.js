function showMessage(title, text, type, icon) {
        var notice = new PNotify({
            title: title,
            text: text,
            type: type,
            icon: 'glyphicon ' + icon,
            addclass: 'snotify',
            closer: true,
            delay: 1000
        });
}



