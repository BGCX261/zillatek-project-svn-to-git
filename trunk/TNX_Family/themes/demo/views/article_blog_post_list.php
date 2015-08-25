
<div class="post">
	<h2><a href="<ion:url />"><ion:title class="pagetitle" /></a></h2>	
	<p class="date"><ion:date format="complete" /></p>
	
	<div class="each_post_list">		
		<ion:medias type="picture" limit="1">		
		<div class="blog_list_img">
			<a href="<ion:url />"><img src="<ion:src folder="150" />" /></a>
		</div>
		</ion:medias>
		
		
		<div class="blog_list_content">
			<!-- This article categories -->
			<p class="categories">
				<ion:translation term="categories" /> : <ion:categories separator=", " />
			</p>
			<ion:content paragraph="1" />
			<br/>			
		</div>
		<div class="clr"> </div>
	</div>
        <div class="blog_detail_link"><a href="<ion:url />">View detail</a>  &raquo;</div>
	<ion:comments_allowed>
		<div class="comments"><a href="<ion:url />"><ion:comments_count/> comments</a></div>
	</ion:comments_allowed>
</div>