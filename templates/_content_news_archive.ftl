<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>
        <#assign importantNews = data.get('importantNews.yml').data>

        <h1>Important News</h1>

        <ul class="list-unstyled">
            <#list importantNews as news>
                <li class="mb-3">
                    <div class="title">
                        <a href="${news.newsUrl}"
                           target="_blank">${news.newsTitle}</a>
                    </div>
                    <div>
                        <#if news.newsDate??>
                            ${news.newsDate?string("EEE d MMMM yyyy")} - ${news.newsContent}
                        <#else>
                            ${news.newsContent}
                        </#if>
                    </div>
                </li>
            </#list>
        </ul>
    </@parent.layout>
</#macro>