// Use this to lazy load blog posts
console.log("document might not be ready yet");
$( document ).ready(function() {
    console.log("document is ready");

    $(".blog-post-title").click(function(event) {
        if($(this).hasClass('loaded')) { return; }
 
        console.log("blog post title has been clicked");
        let post_name = $(this).attr('aria-controls');
        let post_date = post_name.split('_')[1];
        $.get("/blog/posts/" + post_date).done(function(data){
            $("#"+ post_name).empty().append(data);
        });

        $(this).addClass('loaded');

    });
 
});
