// Use this to lazy load blog posts
$( document ).ready(function() {

    $(".blog-post-title").click(function(event) {
        if($(this).hasClass('loaded')) { return; }
 
        let post_name = $(this).attr('aria-controls');
        let post_date = post_name.split('_')[1];
        $.get("/blog/posts/" + post_date).done(function(data){
            $("#"+ post_name).empty().append(data);
        });

        $(this).addClass('loaded');

    });
 
});
