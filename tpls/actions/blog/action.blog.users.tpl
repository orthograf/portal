 {* Тема оформления Experience v.1.0  для Alto CMS      *}
 {* @licence     CC Attribution-ShareAlike   *}

{extends file="_index.tpl"}

{block name="layout_pre_content"}
    <div class="panel panel-default panel-search raised">
        <div class="panel-body">
            <h2 class="panel-header">
                {$aLang.blog_user_readers_all} ({$iCountBlogUsers}):<a class="link link-lead link-dark link-clear" href="{$oBlog->getUrlFull()}">{$oBlog->getTitle()|escape:'html'}</a>
            </h2>
        </div>
    </div>
{/block}

{block name="layout_content"}

    {if $aBlogUsers}
        {$aUsersList=[]}
        {foreach $aBlogUsers as $oBlogUser}
            {$aUsersList[]=$oBlogUser->getUser()}
        {/foreach}
        {include file='commons/common.user_list.tpl' aUsersList=$aUsersList bUsersUseOrder=true sUsersRootPage=$sUsersRootPage}
    {else}
        {$aLang.blog_user_readers_empty}
    {/if}

{/block}
