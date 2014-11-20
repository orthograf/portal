 {* Тема оформления Experience v.1.0  для Alto CMS      *}
 {* @licence     CC Attribution-ShareAlike   *}

<table width="100%" align="center" bgcolor="#f8f8f8">
	<tr>
		<td style="height: 50px;">&nbsp;</td>
	</tr>
	<tr>
		<td>
		<table width="600" align="center" bgcolor="#ffffff" style="border: 1px solid #DDDDDD;">
			<tr>
				<td style="padding: 26px 0px 25px 30px; line-height: 5px; background: #F3F3F3;" width="564" colspan="2">
				<h1>
					<a style="font-size: 23px; color: #6E6B92; text-decoration: none;" href="{Config::Get('path.root.url')}">{Config::Get('view.name')}</a>
				</h1>
				<p style="font-size: 14px; color: #b4b4b4;">{Config::Get('view.description')}</p>
				</td>
			</tr>
			
			<tr>
				<td style="padding: 25px 60px 25px 60px;"; width="474" colspan="2">				
					<div style="border-bottom: 1px solid #D8DFE6; color: #6e6b92;">
						Ответ на Ваш комментарий в теме <strong>{$oTopic->getTitle()|escape:'html'}</strong>
					</div>
					
					<br>
					{if $oConfig->GetValue('sys.mail.include_comment')}				
					<table width="100%">
							<tr>
								<td style="vertical-align: top; width: 90px;">
									<div style="text-align: center;"><img src="{$oUserComment->getAvatarUrl(100)}" style="
									width: 60px;
									border-radius: 50%;
									border: 1px solid #DFDFDF;
									padding: 2px;"/>			
									<br><strong>
											<a href="{$oUserComment->getProfileUrl()}">
												{if $oUserComment->getProfileName()}{$oUserComment->getProfileName()}{else}{$oUser->getDisplayName()}{/if}
											</a>
										</strong>
									</div>
								</td>
								<td style="vertical-align: top; text-align: justify; padding: 10px 15px 0px 10px;">{$oComment->getText()|strip_tags}</td>
							</tr>
						</table>				
					{/if}
					<br>
					
					<br><a href="{if Config::Get('module.comment.nested_per_page')}{router page='comments'}{else}{$oTopic->getUrl()}#comment{/if}{$oComment->getId()}">
						Перейти к комментарию
					</a>	
					<br>
					
					<br><a href="{Config::Get('path.root.url')}settings/tuning/" style="color: #6e6b92; font-size: 12px;">Настройка уведомлений на E-Mail</a>
				</td>
			</tr>
			
			<tr>
				<td style="padding: 30px"; width="289">
				&nbsp;</td>
				<td>
				<a href="{Config::Get('path.root.url')}" style="color: #b4b4b4 !important; text-decoration: none;">© {Config::Get('view.name')}</a></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td style="height: 50px;">&nbsp;</td>
	</tr>
</table>