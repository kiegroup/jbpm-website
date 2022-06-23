<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <p>
            As an open source project, much of our code has been initiated, created or improved by the community. We
            want to thank all our contributors and the open source community at large. Red Hat, as a company, is the
            catalyst in this community of customers, contributors, and partners, creating better technology the open
            source way.
        </p>
        <p>
            For many open source contributors recognition is a key driving factor. We encourage all contributors (active
            and inactive) to contact us (on the mailing list or privately) if you want your details changed or added.
            Beyond title headers this list is in no particular order.
        </p>
        <h2>Core R&D team</h2>
        <p>The Core team is employed full-time to work exclusively on this (or related) project(s).</p>
        <#-- red hat team here -->
        <@listUserBadges userIds=['kverlaenen','enriquegonzalez','lazarotti','xiaofengbai','vaniharipriya','romartin','mbiarnes','cristiano','nmirasch','mdproctor','porcelli','dgutierr','ederign','pefernan','wmedvede','etirelli','mariofusco','ge0ffrey','trikkola','michaelanstis','paulovmr']/>
        <h2>Contributors</h2>
        <p>Thanks to all our contributors:</p>
        <#-- contributors -->
        <@listUserBadges userIds=['mswiderski','tsurdilovic','mauriciosalatino','jlindop','mrietvel','bbrodt','psiroky','karreiro','jrenaat','vkiran','tkobayas','zenix','awaterma','leogomes','nicolassanchez','leandroromero','bauna','lucazamador','estebanaliverti','diega','toulmean','laune','nicolasheron','hzbarcea','abagerman','mfrandsen','swilliams','btruit','bkaplan','sharris','abarnett','ascroix','bmcAllister','dcramer','mhald','rsearl','tdeisler','btopping','ctkoster','dbryant','pkazmier','rfgay','jstrachan','jsreevalsan','rbarone','mpratap','jbrown','rjain','cnagarkar','dahearn','mmiller','enzhao','dhamu','gwiseman','pjorquera','psmith','dlaMotta','michaelneale','bobmcwhirter']/>
        <h2>Red Hat product teams</h2>
        <p>
            A special thanks to our internal Red Hat teams:
            <ul class="list-unstyled">
                <li>The productization team</li>
                <li>The QA team</li>
                <li>The sales and support teams</li>
            </ul>
        </p>
    </@parent.layout>
</#macro>

<#macro listUserBadges userIds>
    <ul class="list-unstyled">
        <#list userIds as userId>
            <li>
                <@macros.userBadge userId="${userId}" long=true/>
            </li>
        </#list>
    </ul>
</#macro>