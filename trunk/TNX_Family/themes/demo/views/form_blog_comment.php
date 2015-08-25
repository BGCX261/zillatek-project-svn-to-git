


<!-- Comments module's reply form -->

	
	<form action="<ion:url/>#reply" method="post" id="replyform">		
								
				<p>Your reply</p>
			
					
			
				<p>	
					<label for="author">Your name</label><br />
					<input id="author" name="author" type="text" tabindex="1" />
				</p>
			
				<p style="display: none">
					<label for="email">Your email, won't be published (required)</label><br />
					<input id="email" name="email" value="noneed111@yahoo.com" type="text" tabindex="2" />
				</p>
				<!--	
				<p>
					<label for="url">Website</label><br />
					<input id="url" name="url" value="" type="text" tabindex="3" />
				</p>-->	
					
				<p>
					<label for="content">Your Message</label><br />
					<textarea id="message" name="content" rows="10" cols="40" tabindex="4"></textarea>
				</p>	
			
				<p class="no-border">
					<input class="button" type="submit" value="Send" tabindex="5" />
				</p>
					
			</form>	