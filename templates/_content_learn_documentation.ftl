<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>
        <h1>Documentation</h1>
        <div class="sect1">
            <h2 id="_final_releases">Final releases</h2>
            <div class="sectionbody">
                <div class="ulist">
                    <ul>
                        <li>
                            <p>Documentation for jBPM <a href="${pom.latestFinal.version}"></a></p>
                            <div class="ulist">
                                <ul>
                                    <li>
                                        <p>jBPM User Guide <a href="${pom.latestFinal.version}"></a>: <a href="${pom.latestFinal.UserGuide}">HTML</a></p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <p>Older community documentation: <a href="${pom.latestFinal.Archive}">Check the
                                    documentation archive</a>.</p>
                        </li>
                        <li>
                            <p>Red Hat subscription documentation: <a href="https://access.redhat.com/documentation/en-US/Red_Hat_JBoss_BPM_Suite/">Check the customer portal</a>.</p>
                        </li>
                    </ul>
                </div>
                <hr>
                <div class="sect2">
                    <h3 id="_execution_server_rest_api">Execution Server REST API</h3>
                    <div class="ulist">
                        <ul>
                            <li>
                                <p><a href="../api-docs/kie-server/overview.html">Overview</a></p>
                            </li>
                            <li>
                                <p><a href="../api-docs/kie-server/paths.html">Endpoints</a></p>
                            </li>
                            <li>
                                <p><a href="../api-docs/kie-server/definitions.html">Definitions</a></p>
                            </li>
                        </ul>
                    </div>
                    <hr>
                </div>
                <div class="sect2">
                    <h3 id="_controller_rest_api">Controller REST API</h3>
                    <div class="ulist">
                        <ul>
                            <li>
                                <p><a href="../api-docs/controller/overview.html">Overview</a></p>
                            </li>
                            <li>
                                <p><a href="../api-docs/controller/paths.html">Endpoints</a></p>
                            </li>
                            <li>
                                <p><a href="../api-docs/controller/definitions.html">Definitions</a></p>
                            </li>
                        </ul>
                    </div>
                    <hr>
                </div>
                <div class="sect2">
                    <h3 id="_nightly_builds">Nightly builds</h3>
                    <div class="ulist">
                        <ul>
                            <li>
                                <p>jBPM Nightly snapshots: <a href="${pom.nightly.jbpmDocs}">HTML</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </@parent.layout>
</#macro>