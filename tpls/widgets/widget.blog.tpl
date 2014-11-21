 {* Тема оформления Experience v.1.0  для Alto CMS      *}
 {* @licence     CC Attribution-ShareAlike   *}

{if $oTopic}
    {$oBlog=$oTopic->getBlog()}
    {if $oBlog->getType()!='personal'}
        <div class="panel panel-default sidebar raised widget widget-blog">
            <div class="panel-body">
			
			<div style="margin: 5px 5px 15px;">	
                <img class="user-logo" src="{$oBlog->getAvatarPath(200)}" alt="{$oBlog->getTitle()}" style="border: 1px solid #DBDBDB; padding: 3px;"/>
	        </div>
			
                <div style="text-align: center;">
                    <h4 class="panel-header">
                        <a href="{$oBlog->getUrlFull()}">{$oBlog->getTitle()|escape:'html'}</a>
                    </h4>
                </div>

                <div class="panel-content">
                    <ul class="marked-list no-images">
                        <li class="user-block color-50">
                            <span id="blog_user_count_{$oBlog->getId()}">{$oBlog->getCountUser()}</span>
							<span class="strong">{$oBlog->getCountUser()|declension:$aLang.reader_declension:$sLang}</span>
                        </li>
                        <li class="date-block color-50">
                            <span>{$oBlog->getCountTopic()}</span><span class="strong">{$oBlog->getCountTopic()|declension:$aLang.topic_declension:$sLang}</span>
                        </li>
                    </ul>
                </div>


            </div>

            <div class="panel-footer">
                <a href="{router page='rss'}blog/{$oBlog->getUrl()}/" class="link link-dual link-lead link-clear"><i class="fa fa-rss"></i>&nbsp;RSS</a>
                {if E::IsUser() AND E::UserId() != $oBlog->getOwnerId()}
                        <a href="#" class="link link-dual link-lead pull-right link-clear {if $oBlog->getUserIsJoin()}active{/if}"
                           id="blog-join" data-only-text="1"
                           onclick="ls.blog.toggleJoin(this,{$oBlog->getId()}); return false;">{if $oBlog->getUserIsJoin()}{$aLang.blog_leave}{else}{$aLang.blog_join}{/if}</a>
                {/if}
            </div>
        </div>
    {/if}
{/if}