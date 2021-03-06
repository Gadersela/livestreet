{include file='header.tpl'}
{include file='modals/modal.userfields.tpl'}


<h2 class="page-header">{$aLang.user_field_admin_title}</h2>

<a href="javascript:ls.userfield.showAddForm()" class="link-dotted">{$aLang.user_field_add}</a>
<br /><br />

<ul class="userfield-list" id="user_field_list">
	{foreach from=$aUserFields item=oField}
		<li id="field_{$oField->getId()}"><strong class="userfield_admin_name">{$oField->getName()|escape:"html"}</strong>
			/ <span class="userfield_admin_title">{$oField->getTitle()|escape:"html"}</span>
            / <span class="userfield_admin_type">{$oField->getType()|escape:"html"}</span>
            / <span class="userfield_admin_pattern">{$oField->getPattern()|escape:"html"}</span>

			<div class="userfield-actions">
				<a href="javascript:ls.userfield.showEditForm({$oField->getId()})" title="{$aLang.user_field_update}" class="icon-edit"></a>
				<a href="javascript:ls.userfield.deleteUserfield({$oField->getId()})" title="{$aLang.user_field_delete}" class="icon-remove"></a>
			</div>
		</li>
	{/foreach}
</ul>


{include file='footer.tpl'}