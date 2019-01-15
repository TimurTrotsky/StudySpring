<#import "parts/common.ftl" as c>
<@c.page>
User editor
<form action="/user" method="post" >
    <input type="text" name="username" value="${user.username}">
    <#list roles as role>
        <div>
            <label><input type="chekbox" name="${role}" ${user.roles?seq_contains(role)?string("cheked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}"
    <input type="hidden" value="${_csrf.token}" name="_csrf">
<button type="submit">Save </button>
</form>
</@c.page>