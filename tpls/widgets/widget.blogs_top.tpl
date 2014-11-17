 {* Тема оформления Experience v.1.0  для Alto CMS      *}
 {* @licence     CC Attribution-ShareAlike   *}

<ul class="blogs-list">
    {foreach $aBlogs as $oBlog}
    <li>
        <a href="{$oBlog->getUrlFull()}" class="blog-name link link-dual link-lead link-clear">
            {$sPath = $oBlog->getAvatarPath(24)}
            {if $sPath}
                <img src="{$oBlog->getAvatarPath(24)}" width="24" height="24" class="avatar uppercase"/>
            {else}
                <i class="fa fa-folder"></i>
            {/if}

            {$oBlog->getTitle()|escape:'html'}
            <span class="topic-count">{$oBlog->getRating()}</span>
        </a>
    </li>
    {/foreach}
</ul>