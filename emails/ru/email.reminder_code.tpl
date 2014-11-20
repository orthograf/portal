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
						Изменение пароля 
					</div>														
					<div style="padding: 23px;">
						Для смены пароля на сайте <strong>{Config::Get('view.name')}</strong> перейдите по ссылке: 
						<br><a href="{router page='login'}reminder/{$oReminder->getCode()}/">{router page='login'}reminder/{$oReminder->getCode()}/</a>
					</div>					
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