function doLike(uid, pid, user)
{

    let btnButton = document.querySelector('#button');
    let btnText = document.querySelector('#btnText');

    btnButton.addEventListener('click', function () {

        btnButton.classList.remove('btn-outline-dark');
        btnButton.classList.add('btn-dark', 'text-white');
    });

//    console.log(pid + ", " + uid);

    /*const d = {
        uid: uid,
        pid: pid,
        operation: 'like'
    }
    $.ajax({
        url: "LikeServlet",
        data: d,
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            if (data.trim() == 'true')
            {
                let c = $(".like-counter").html();
                c++;
                $('.like-counter').html(c);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(data);
        }
    })
*/
    const dd = {
        uid: uid,
        pid: pid,
        user: user,
        operation: 'check'
    };
    console.log(uid);
    $.ajax({
        url: 'LikeServlet',
        data: dd,
        success: function (data, textStatus, jqXHR) {   
            console.log(data);
            if (data.trim() === 'notLiked')
            {
                let c = $(".like-counter").html();
                c++;
                $('.like-counter').html(c);
            } else if (data.trim() === 'liked') {
                let c = $(".like-counter").html();
                console.log(c);
                c--;
                $('.like-counter').html(c);
            }
             else if (data.trim() === 'true') {
                let c = $(".like-counter").html();
                console.log(c);
                c++;
                $('.like-counter').html(c);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(data);
        }
    });
}