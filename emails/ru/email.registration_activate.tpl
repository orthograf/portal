 {* Тема оформления Experience v.1.0  для Alto CMS      *}
 {* @licence     CC Attribution-ShareAlike   *}

Вы зарегистрировались на сайте <a href="{Config::Get('path.root.url')}">{Config::Get('view.name')}</a><br>
Ваши регистрационные данные:<br>
&nbsp;&nbsp;&nbsp;логин: <b>{$oUser->getLogin()}</b><br>
&nbsp;&nbsp;&nbsp;пароль: <b>{$sPassword}</b><br>
<br>
Для завершения регистрации вам необходимо активировать аккаунт пройдя по ссылке: 
<a href="{router page='registration'}activate/{$oUser->getActivateKey()}/">{router page='registration'}activate/{$oUser->getActivateKey()}/</a>

<br><br>
С уважением, администрация сайта <a href="{Config::Get('path.root.url')}">{Config::Get('view.name')}</a>