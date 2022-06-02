<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>
        <h1>KIE Server</h1>
        <div class="sect1">
            <h2 id="_overview">Overview</h2>
            <div class="sectionbody">
                <div class="sect2">
                    <h3 id="_version_information">Version information</h3>
                    <div class="paragraph">
                        <p><em>Version</em> : 7.0</p>
                    </div>
                </div>
                <div class="sect2">
                    <h3 id="_uri_scheme">URI scheme</h3>
                    <div class="paragraph">
                        <p><em>BasePath</em> : /kie-server/services/rest</p>
                    </div>
                </div>
                <div class="sect2">
                    <h3 id="_tags">Tags</h3>
                    <div class="ulist">
                        <ul>
                            <li>
                                <p>Case instance administration</p>
                            </li>
                            <li>
                                <p>Case instances</p>
                            </li>
                            <li>
                                <p>Case queries</p>
                            </li>
                            <li>
                                <p>Custom queries</p>
                            </li>
                            <li>
                                <p>DMN models</p>
                            </li>
                            <li>
                                <p>Documents</p>
                            </li>
                            <li>
                                <p>Jobs</p>
                            </li>
                            <li>
                                <p>KIE Server and KIE containers</p>
                            </li>
                            <li>
                                <p>KIE session assets</p>
                            </li>
                            <li>
                                <p>Planning and solvers :: BRP</p>
                            </li>
                            <li>
                                <p>Process and task definitions</p>
                            </li>
                            <li>
                                <p>Process and task forms</p>
                            </li>
                            <li>
                                <p>Process images</p>
                            </li>
                            <li>
                                <p>Process instance administration</p>
                            </li>
                            <li>
                                <p>Process instances</p>
                            </li>
                            <li>
                                <p>Process queries</p>
                            </li>
                            <li>
                                <p>Static files endpoint :: BPM</p>
                            </li>
                            <li>
                                <p>Task instance administration</p>
                            </li>
                            <li>
                                <p>Task instances</p>
                            </li>
                            <li>
                                <p>Test scenario execution</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>