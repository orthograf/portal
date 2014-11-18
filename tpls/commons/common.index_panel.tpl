<div class="{if E::User()}panel{else}panel panel-no-user{/if} panel-default user-info raised" style="">
    {if E::IsAdmin()}
		<div class="row user-info-block">
			<table style="width: 100%;">
				<tbody>
					<tr>
						<td style="width:70%; vertical-align: top;">
							<div style="padding: 0px 15px 0;" class="">				 
							{* Аватара *}
								<div class="td-hover-av">
									<img src="{E::User()->getAvatarUrl(83)}" alt="{E::User()->getDisplayName()}" class="user-logo" itemprop="photo"/>
								</div>

							{* Имя человека *}
								<div class="user-name td-hover-un">
									<div class="">
										<span class="user-login">{E::User()->getProfileName()}</span>
									</div>

									{* Подпись "О себе" *}
									<div class="user-full-name td-hover-desc">
										{if E::User()->getProfileAbout()}{E::User()->getProfileAbout()}{else}Здесь может быть Ваша подпись...
										<a href="{router page='settings'}profile/"><i class="fa fa-pencil"></i></a>{/if}
									</div>
								</div>
							</div>	
						</td>

					{* Дополнительный блок *}
						<td style="width:40%; vertical-align: top;">
							<div class="">
								
							</div>
						</td>
						
						<td style="width:10%; vertical-align: top;"></td>
					</tr>
				</tbody>	
			</table>
		</div>
	{/if}

	{* Меню панели *}	
	<div class="user-info-block">
		<table class="table table-in td-hover-td" contenteditable="false">
			<tbody>		
				<tr class="tr-reorder">
					<!-- ПАНЕЛЬ -->
						{if E::IsUser()}
							<td class="td-reorder">
								<div>
									<a data-toggle="modal" data-target="#modal-index-panel" href="#">
										<i class="fa fa-reorder"></i>
									</a>    
								</div>
							</td>
						{/if}
					
					<td align="center" class="td-hover-td">
						<table style="width: 70%;">
							<tr>
						    {* Страницы *}	
						    <!-- ГЛАВНАЯ --> 
								<td align="center" class="td-hover {if $sAction=='index'}active{/if} td-hover-fm">
								<i class="fa fa-home"></i>
									<a href="{Config::Get('path.root.url')}" {if Config::Get('path.root.url')}class="active"{/if}>{$aLang.menu_homepage}</a>
								</td>
								
						    <!-- НОВЫЕ ТОПИКИ -->
								<td align="center" class="td-hover {if $sMenuSubItemSelect=='new'}active{/if} td-hover-fm">
									{if $iCountTopicsNew>0}
										<div style="position: relative;">
										<a href="{router page='index'}new/" title="{$aLang.blog_menu_top_period_24h}">
										{$aLang.blog_menu_all_new}</a>
										<strong class="label-red" style="left: auto;margin-left: 5px;">{$iCountTopicsNew}</strong>
										</div>	
									{else}
										<a href="{router page='index'}new/"
										   title="{$aLang.blog_menu_top_period_all}">{$aLang.blog_menu_all_new}
										</a>
									{/if}
								</td>
								
        				    <!-- ЛЕНТА -->	
    							{if E::IsUser()}			
    								<td align="center" class="td-hover td-hover-fm">
    									<a href="{router page='feed'}">{$aLang.userfeed_title}</a>
    								</td>
    							
    								
    							<!-- ПОЧТОВЫЕ СООБЩЕНИЯ -->	
    								{if $iUserCurrentCountTalkNew}
    									<td align="center" class="td-hover td-hover-fm">				
    										<div style="position: relative;">
    											<a href="{router page='talk'}" class="">Почта</a>
    											<strong class="label-red">{$iUserCurrentCountTalkNew}</strong>
    										</div>
    									</td>
    								{/if}	
    							{/if}
							
						    <!-- ПРЯМОЙ ЭФИР -->	
								<td align="center" class="td-hover {if $sAction=='comments'}active{/if} td-hover-fm">
									<a href="{router page='comments'}">{$aLang.widget_stream}</a>
								</td>
								
						    <!-- КАТЕГОРИИ -->	
								<td align="center" class="td-hover {if $sAction=='category'}active{/if} td-hover-fm">
									<a href="{router page='category'}">{$aLang.plugin.categories.categories}</a>
									
									<div class="btn-group">
										<button type="button" class="btn btn-default td-hover-button dropdown-toggle" data-toggle="dropdown">
											<i class="fa fa-angle-down"></i>
										</button>
										<ul class="dropdown-menu" style="background: rgb(255, 255, 255);border: none;">
											<li><a href="{router page='category'}iconography/">иконопись</a></li>
											<li><a href="{router page='category'}community/">сообщество</a></li>
											<li><a href="{router page='category'}materials/">материалы</a></li>
											<li><a href="{router page='category'}wood/">деревообработка</a></li>
										</ul>
									</div>
								</td>	
							</tr>
						</table>
					</td>
				</tr>
			</tbody>
		</table>	
	</div>
</div>

{include file='modals/modal.index_panel.tpl'}
