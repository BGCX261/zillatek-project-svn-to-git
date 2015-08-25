
<!-- Main Column -->
<div id="maincolumn">


	<input id="settingsFormSubmit" type="button" class="submit right" value="<?= lang('ionize_button_save_settings') ?>" />

	<h2 class="main website" id="main-title"><?= lang('ionize_title_site_settings') ?></h2>
	
	<!-- Title & Meta keywords & Meta description -->
	<fieldset id="blocks">

		<!-- Tabs -->
		<div id="webSettingsTab" class="mainTabs">
			<ul class="tab-menu">
				<?php foreach(Settings::get_languages() as $l) :?>
					<li<?php if($l['def'] == '1') :?> class="dl"<?php endif ;?>><a><span><?= ucfirst($l['name']) ?></span></a></li>
				<?php endforeach ;?>
				<li id="ga_settings"><a><?= lang('ionize_title_google_analytics') ?></a></li>
				<li id="seo_settings"><a><?= lang('ionize_title_seo') ?></a></li>
			</ul>
			<div class="clear"></div>
		</div>


		<div id="webSettingsTabContent">


			<form name="settingsForm" id="settingsForm" method="post" action="<?= admin_url() ?>setting/save">

				<!-- Tabs content blocks -->
				<?php foreach(Settings::get_languages() as $language) :?>
					
					<div class="tabcontent">
					
						<!-- Title -->
						<dl>
							<dt>
								<label for="site_title_<?=$language['lang']?>"><?=lang('ionize_label_site_title')?></label>
							</dt>
							<dd>
								<input name="site_title_<?=$language['lang']?>" id="site_title_<?=$language['lang']?>" class="inputtext w360" type="text" value="<?=Settings::get('site_title', $language['lang']) ?>"/>
							</dd>
						</dl>
		
						<dl>
							<dt>
								<label for="meta_description_<?=$language['lang']?>"><?=lang('ionize_label_meta_description')?></label>
							</dt>
							<dd>
								<textarea name="meta_description_<?=$language['lang']?>" id="meta_description_<?=$language['lang']?>" class="w360 h60"><?=Settings::get('meta_description', $language['lang']) ?></textarea>
							</dd>
						</dl>
		
						<dl>
							<dt>
								<label for="meta_keywords_<?=$language['lang']?>"><?=lang('ionize_label_meta_keywords')?></label>
							</dt>
							<dd>
								<textarea name="meta_keywords_<?=$language['lang']?>" id="meta_keywords_<?=$language['lang']?>" class="w360 h60"><?=Settings::get('meta_keywords', $language['lang']) ?></textarea>
							</dd>
						</dl>
		
					</div>
		
				<?php endforeach ;?>
	
	
	
				<!-- Google Analytics -->
				<div class="tabcontent">
					<dl class="last">
						<dt>
							<label for="google_analytics" title="<?=lang('ionize_help_setting_google_analytics')?>"><?=lang('ionize_label_google_analytics')?></label>
						</dt>
						<dd>
							<textarea name="google_analytics" id="google_analytics" class="w360 h160"><?= htmlentities(stripslashes(Settings::get('google_analytics')), ENT_QUOTES, 'utf-8') ?></textarea>
						</dd>
					</dl>
				</div>
			
			</form>
			
			
			
			<!-- SEO -->
			<div class="tabcontent">
				
				
				<!-- Compress Sitemap XML -->
				<form name="sitemapGzipForm" id="sitemapGzipForm" method="post" action="<?= admin_url() ?>setting/save_setting">

					<input type="hidden" name="config_file" value="sitemaps" />
					<input type="hidden" name="setting" value="sitemaps_gzip" />
					
					<dl class="last">
						<dt>
							<label for="sitemaps_gzip" title="<?=lang('ionize_help_setting_sitemaps_gzip')?>"><?=lang('ionize_label_sitemaps_gzip')?></label>
						</dt>
						<dd>
							<input class="inputcheckbox" <?php if (config_item('sitemaps_gzip') == '1'):?>checked="checked"<?php endif;?> type="checkbox" name="setting_value" id="sitemaps_gzip" value="true" />
						</dd>
					</dl>
				</form>
				
				
				<h3><?= lang('ionize_title_sitemap_search_engine') ?></h3>
				
				<!-- Sitemaps Search Engines -->
				<form name="sitemapUrlForm" id="sitemapUrlForm" method="post" action="<?= admin_url() ?>setting/save_setting">
					
					<input type="hidden" name="config_file" value="sitemaps" />
					<input type="hidden" name="type" value="array" />
					<input type="hidden" name="setting" value="sitemaps_search_engines" />
					
					<div class="summary r10">
					
						<p><?= lang('ionize_text_sitemaps_url_list') ?> :</p>
						<p><textarea class="w400 h80" name="setting_value"><?= implode("\n", config_item('sitemaps_search_engines')) ?></textarea></p>
						<input id="submit_sitemap_url" type="submit" class="submit" value="<?= lang('ionize_button_save') ?>" />
						
					</div>
				</form>
				
				
				<!-- Permalink Ping -->
				<h3 class="mt20"><?= lang('ionize_title_permalink_ping_server') ?></h3>

				<form name="pingUrlForm" id="pingUrlForm" method="post" action="<?= admin_url() ?>setting/save_seo_urls">
					
					<input type="hidden" name="type" value="permalink_ping" />

					<div class="summary r10">

						<p><?= lang('ionize_text_ping_url_list') ?> :</p>
						<p><textarea class="w400 h80" name="urls"><?= str_replace("|", "\n", Settings::get('permalink_ping_urls')) ?></textarea></p>
						<input id="submit_ping_url" type="submit" class="submit" value="<?= lang('ionize_button_save') ?>" />
						
					</div>
				</form>

			
			</div>

		</div>
	</fieldset>

</div> <!-- /maincolumn -->


<script type="text/javascript">
	
	/**
	 * Panel toolbox
	 *
	 */
	ION.initToolbox('setting_toolbox');

	/**
	 * Options Accordion
	 *
	 */
	ION.initAccordion('.toggler', 'div.element');

	/**
	 * Init help tips on label
	 * see init-content.js
	 *
	 */
	ION.initLabelHelpLinks('#settingsForm');

	/** 
	 * Tabs init
	 *
	 */
	new TabSwapper({tabsContainer: 'webSettingsTab', sectionsContainer: 'webSettingsTabContent', selectedClass: 'selected', deselectedClass: '', tabs: 'li', clickers: 'li a', sections: 'div.tabcontent', cookieName: 'webSettingsTab' });

	/**
	 * Views form
	 * see ionize-form.js for more information about this method
	 */
	ION.setFormSubmit('settingsForm', 'settingsFormSubmit', 'setting/save');


	/**
	 * SEO URLs forms action
	 */
	ION.setFormSubmit('pingUrlForm', 'submit_ping_url', 'setting/save_seo_urls', 'mainPanel', 'setting/technical');
	
	ION.setFormSubmit('sitemapUrlForm', 'submit_sitemap_url', 'setting/save_setting', 'mainPanel', 'setting/technical');

	
	ION.setChangeSubmit('sitemapGzipForm', 'sitemaps_gzip', 'setting/save_setting', 'mainPanel', 'setting/technical');

	/**
	 * Save with CTRL+s
	 *
	 */
	ION.addFormSaveEvent('settingsFormSubmit');


</script>