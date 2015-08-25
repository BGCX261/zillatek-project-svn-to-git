<ion:comment_save /> 
<!-- View used for articles in blog's article detail -->

<div class="post">
	
	<h2><ion:title /></h2>
	<ion:date format="complete" />
	
	<ion:medias type="picture">
	
		<img src="<ion:src folder="540" />" />
	
	</ion:medias>
	
	<!-- This article categories -->
	<p class="categories">
		<ion:translation term="categories" /> : <ion:categories separator=", " />
	</p>
	

	<ion:content />
	

<!-- display comments count only when comments are activated on article -->
<ion:comments_allowed>
	<p><a class="more-link" href="#reply">Reply to this post</a></p>
</ion:comments_allowed>
												


	<?
	/**********
	 * Displaying article admin options for comments, only displayed when the user is logged in and belongs to admin group
	 **********/
	 ?>
	<ion:comments_admin>
		<a name="admin"></a>
		<h4>Admin</h4>
		
		<!-- Display a validation flash message when admin params saving happens -->
		<ion:message tag="div" class="success" id="message">
				Action succeded
				<!-- Some JQuery to autohide the flash message, not mandatory at all -->
				<script language="javascript">
					$('#message').delay(2000).fadeOut('slow');					
				</script>
		</ion:message>
		
		<!-- Displaying admin panel for the current article -->
		<form method="post" action="">

			<input type="hidden" name="comments_article_update" value="1"/>
			<input type="checkbox" name="comments_allow" value="1" <ion:comments_allowed>checked</ion:comments_allowed> />
			<label for="comments_allow"><span>Allow comments</span></label></p>	
	
			<button class="button" type="submit">Save</button>
		</form>
	
	</ion:comments_admin>
	
	
	<!------------------------------------------------ 
	Displaying comments, when the articles allows them 
	-->
	<ion:comments_allowed>
		<a name="comments"></a>
		
		<div class="divider"></div>
		
		<h3><ion:comments_count/> comment(s)</h3>		
								
		<ol class="commentlist">
		
			<ion:comments>
				<li class="comment">					
						
						<div class="comment-body">	
								<div class="comment-author">
									Post by: <b><ion:author/></b> &nbsp; (<span class="comment-date"><ion:date/>)</span>
								</div>
								<ion:content/>
						</div>												
						
						
						<!-- Displaying admin panel for the current comment -->
						<ion:comments_admin>
			
						
							<form method="post" action="<ion:url/>#admin">

								<input type="hidden" name="id_article_comment" value="<ion:id/>"/>
								<input type="checkbox" name="comment_delete" value="1" />
								<label for="comments_allow"><span>Delete comment</span></label>	
	
								<button class="button" type="submit">Go</button>
							</form>
	
						</ion:comments_admin>
						<!-- End admin panel -->
						
						
				</li>
				
			</ion:comments>
		</ol>
		
		<a name="reply"></a>
				
		<!-- Display a validation flash message when on post saving success -->
		<ion:success_message tag="div" class="success" id="message">
				Your message has been added
				
				<!-- Some JQuery to autohide the flash message, not mandatory at all -->
				<script language="javascript">
					$('#message').delay(2000).fadeOut('slow');					
				</script>
		</ion:success_message>
		
		<!-- Display an error flash message when something bad happens while saving (form incomplete) -->
		<ion:error_message tag="div" class="error" id="message">
				Please check if you filled all required fields
				
				<!-- Some JQuery to autohide the flash message, not mandatory at all -->
				<script language="javascript">
					$('#message').delay(5000).fadeOut('slow');					
				</script>
		</ion:error_message>

		
		<ion:partial path="form_blog_comment" /> 
	
	</ion:comments_allowed>
</div>


