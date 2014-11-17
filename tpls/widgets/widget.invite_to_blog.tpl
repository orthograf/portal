 {* Тема оформления Experience v.1.0  для Alto CMS      *}
 {* @licence     CC Attribution-ShareAlike   *}


<!-- Блок сайдбара -->
<div class="panel panel-default sidebar raised widget widget-blogs-invite">
    <div class="panel-body">
        <h4 class="panel-header">
            <i class="fa fa-gift"></i>
            {$aLang.blog_admin_user_add_header}
        </h4>

        <div class="panel-content">
            <form onsubmit="return ls.blog.addInvite({$oBlogEdit->getId()});">
                <div class="form-group">
                    <div class="input-group">
                        <input class="form-control autocomplete-users-sep" name="add" id="blog_admin_user_add"
                               value="{if $_aRequest.fields.$iFieldId}{$_aRequest.fields.$iFieldId}{/if}"/>
                        <label class="input-group-addon pa0">
                            <button class="btn btn-light">{$aLang.blog_admin_user_invite}</button>
                        </label>
                    </div>
                    <small class="control-notice">{$aLang.blog_admin_user_add_label}</small>
                </div>
            </form>

            <h5 class="bold">{$aLang.blog_admin_user_invited}:</h5>

            <div id="invited_list_block">
                {if $aBlogUsersInvited}
                    <ul id="invited_list" class="list-unstyled text-muted">
                        {foreach $aBlogUsersInvited as $oBlogUser}
                            {$oUser=$oBlogUser->getUser()}
                            <li id="blog-invite-remove-item-{$oBlogEdit->getId()}-{$oUser->getId()}">
                                <span>
                                    <a class="link-clear" href="{$oUser->getProfileUrl()}" title="{$oUser->getDisplayName()}"><img
                                                src="{$oUser->getAvatarUrl(16)}" alt="{$oUser->getDisplayName()}"
                                                class="avatar"/></a>
                                    <a href="{$oUser->getProfileUrl()}" class="user">{$oUser->getDisplayName()}</a>
                                </span>
                                <span class="pull-right">
                                    <a href="#" onclick="return ls.blog.repeatInvite({$oUser->getId()}, {$oBlogEdit->getId()});"
                                       title="{$aLang.blog_user_invite_readd}"
                                       class="actions-edit actions-delete link link-lead link-clear link-dark mar6"><i
                                                class="fa fa-repeat"></i></a>
                                    <a href="#" onclick="return ls.blog.removeInvite({$oUser->getId()}, {$oBlogEdit->getId()});"&nbsp;&nbsp;
                                       title="{$aLang.blog_user_invite_remove}"
                                       class="actions-delete link link-lead link-clear link-red-blue"><i class="fa fa-times"></i></a>
                                </span>

                            </li>
                        {/foreach}
                    </ul>
                {/if}

                <span id="blog-invite-empty" class="text-muted"
                      {if $aBlogUsersInvited}style="display: none"{/if}>{$aLang.blog_admin_user_add_empty}</span>
            </div>
        </div>
    </div>

    <div class="panel-footer">
        <a class="link link-dual link-lead link-clear" href="{router page='peoples'}"><i class="fa fa-users"></i>{$aLang.all_users}</a>
    </div>
</div>