<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>

        <h1>Business Applications - Docs, Tutorials and Examples</h1>

        <div class="literalblock">
            <div class="content">
                <pre>Documentation provides you various topics to move beyond basics. You can read on</pre>
            </div>
        </div>
        <div class="ulist">
            <ul>
                <li>
                    <p>Configuring your application</p>
                </li>
                <li>
                    <p>Running your application</p>
                </li>
                <li>
                    <p>Developing your application</p>
                </li>
                <li>
                    <p>Deploying your application to OpenShift or Docker</p>
                </li>
            </ul>
        </div>
        <p style="text-align: center;">
            <a class="btn btn-lg btn-primary"
               href="${pom.latestFinal.UserGuide}index.html#_overview_2" target="_blank">
                <img alt="Download" src="/learn/documentation.png">
                Read documentation
            </a>
        </p>
        <div class="sect1">
            <h2 id="_tutorials">Tutorials</h2>
            <div class="sectionbody">
                <div class="paragraph">
                    <p>jBPM comes with tutorials (that are being constantly enahnced) to let users
                        build more sofisticated business applications.</p>
                </div>
                <div class="paragraph">
                    <p>Currently below are tutorials available online</p>
                </div>
                <div class="sect2">
                    <h3 id="_my_first_business_application">My First Business Application</h3>
                    <div class="paragraph">
                        <p>Build and run your first business application starting from scratch.</p>
                    </div>
                </div>
            </div>
        </div>
        <p style="text-align: center;">
            <a class="btn btn-lg btn-primary"
               href="${pom.latestFinal.UserGuide}index.html#_my_first_business_application" target="_blank">
                <img alt="Download" src="/learn/documentation.png">
                Open tutorial
            </a>
        </p>
        <div class="sect2">
            <h3 id="_business_application_with_business_assets">Business Application with Business Assets</h3>
            <div class="paragraph">
                <p>Enhance your business application with business process that can be executed
                    with directly through REST API of your application or by using Business Central
                    web interface</p>
            </div>
        </div>
        <p style="text-align: center;">
            <a class="btn btn-lg btn-primary"
               href="${pom.latestFinal.UserGuide}index.html#_business_application_with_business_assets" target="_blank">
                <img alt="Download" src="/learn/documentation.png">
                Open tutorial
            </a>
        </p>
        <div class="sect2">
            <h3 id="_business_application_with_custom_work_item_handlers_and_event_listeners">Business Application with
                custom work item handlers and event listeners</h3>
            <div class="paragraph">
                <p>Enhance your business application with business assets that execute custom business
                    logic and monitors execution via event listeners</p>
            </div>
        </div>
        <p style="text-align: center;">
            <a class="btn btn-lg btn-primary"
               href="${pom.latestFinal.UserGuide}index.html#_business_application_with_custom_work_item_handlers_and_event_listeners"
               target="_blank">
                <img alt="Download" src="/learn/documentation.png">
                Open tutorial
            </a>
        </p>
        <div class="sect2">
            <h3 id="_business_application_with_jpa_entity">Business Application with JPA entity</h3>
            <div class="paragraph">
                <p>Enhance your business application with JPA entity that will be used both by your
                    business application service and business assets.</p>
            </div>
        </div>
        <p style="text-align: center;">
            <a class="btn btn-lg btn-primary"
               href="${pom.latestFinal.UserGuide}index.html#_business_application_with_jpa_entity" target="_blank">
                <img alt="Download" src="/learn/documentation.png">
                Open tutorial
            </a>
        </p>
        <div class="sect2">
            <h3 id="_business_application_with_jms">Business Application with JMS</h3>
            <div class="paragraph">
                <p>Build business application that uses JMS to send information between your business
                    processes. It combines process logic and messaging to provide comprehensive
                    solution to common problems e.g. how to notify other participants of particular
                    event.</p>
            </div>
        </div>
        <p style="text-align: center;">
            <a class="btn btn-lg btn-primary"
               href="${pom.latestFinal.UserGuide}index.html#_business_application_with_jms" target="_blank">
                <img alt="Download" src="/learn/documentation.png">
                Open tutorial
            </a>
        </p>
        <div class="sect2">
            <h3 id="_business_application_with_dynamic_assets">Business Application with dynamic assets</h3>
            <div class="paragraph">
                <p>Enhance your business application with some dynamic assets that allow more adaptive
                    approach to business logic compared with structured business processes.</p>
            </div>
        </div>
        <p style="text-align: center;">
            <a class="btn btn-lg btn-primary"
               href="${pom.latestFinal.UserGuide}index.html#_business_application_with_dynamic_assets" target="_blank">
                <img alt="Download" src="/learn/documentation.png">
                Open tutorial
            </a>
        </p>
        <div class="sect1">
            <h2 id="_examples">Examples</h2>
            <div class="sectionbody">
                <div class="paragraph">
                    <p>Examples are intended to provide fully featured sample business applications
                        that can be used as base start. They are usually more advanced than tutorials
                        as they should provide complete (end to end covered) business goal.</p>
                </div>
                <div class="paragraph">
                    <p>Similar as tutorials there will be more coming with every release of jBPM so
                        stay tuned and keep an eye on
                        <a href="https://github.com/business-applications">Business Applications</a> GitHub
                        organization. Each repository in this organization is fully working
                        example of a business application.</p>
                </div>
            </div>
        </div>
        <p style="text-align: center;">
            <a class="btn btn-lg btn-success"
               href="https://github.com/business-applications" target="_blank">
                Go to examples repository
            </a>
        </p>
    </@parent.layout>
</#macro>