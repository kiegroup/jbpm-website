<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>
        <h1>Release information</h1>
        <strong>${pom.latestFinal.version} is the latest and greatest version of jBPM.</strong>
        <p>jBPM releases a new minor version at the end of every 3-week sprint.</p>
        <p>Complete release notes can be found in the <a href="${pom.latestFinal.whatsNewVersion}">documentation</a>.</p>
        <p>Detailed content of the release can be found in JIRA <a href="${pom.latestFinal.releaseNotesVersion}">here</a>.</p>
    </@parent.layout>
</#macro>