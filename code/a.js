/*
 * Filename: a.js
 * Author: Olivier Sirol <czo@free.fr>
 * License: GPL-2.0 (http://www.gnu.org/copyleft)
 * File Created: 23 October 2022
 * Last Modified: Sunday 23 October 2022, 12:21
 * $Id:$
 * Edit Time: 0:00:13
 * Description:
 *
 * Copyright: (C) 2022 Olivier Sirol <czo@free.fr>
 */

$(document).ready(function () {
    var olddisptime = '';
    var oldimgName = 0;

    function debugc(str) {
        if (0)
            console.log(str);
    }

    function updateClock() {
        var dow_fr = new Array("dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi");
        var month_fr = new Array("janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre");

        var now = new Date();
        var imgday = Math.floor(now.getTime() / 1000 / 60 / 60 / 24);

        imgName = (imgday % 98) + 1;

        debugc(now.getTime());
        debugc(imgday);
        debugc(imgName);

        if ((imgName != oldimgName)) {
            $(".intro").css("background-image", "url(sbg/wal/" + imgName + ".jpg)");
            oldimgName = imgName;
        }

        hours = now.getHours();
        mins = now.getMinutes();
        secs = now.getSeconds();
        day = dow_fr[now.getDay()] + " " + now.getDate() + " " + month_fr[now.getMonth()];

        if (hours < 10) hours = "0" + hours;
        if (mins < 10) mins = "0" + mins;
        if (secs < 10) secs = "0" + secs;
        disptime = hours + ":" + mins;
        debugc(disptime);

        if (disptime != olddisptime) {
            $('#czotime').text(disptime);
            $('#czodate').text(day);
            olddisptime = disptime;
        }

        // call this function again in 1000ms
        setTimeout(updateClock, 1000);
    }
    updateClock();

});

