<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>
        <div class="sect1">
            <h2 id="_latest_final_version_pom_latestfinal_version">Latest final version: ${pom.latestFinal.version}</h2>
            <div class="sectionbody">
                <div class="ulist">
                    <ul>
                        <li>
                            <p>Release date: <code>${pom.latestFinal.releaseDate?date}</code></p>
                        </li>
                        <li>
                            <p><a href="${pom.latestFinal.jbpmWhatsNew}">New and Noteworthy in
                                jBPM ${pom.latestFinal.version}</a></p>
                        </li>
                        <li>
                            <p><a href="${pom.latestFinal.releaseNotesVersion}">Release Notes</a></p>
                        </li>
                        <li>
                            <p>License: <a href="../code/license.html">Apache License 2.0</a></p>
                        </li>
                    </ul>
                </div>
            </div>
            <h5>The jBPM Server distribution is the easiest way to start with jBPM.</h5>

            <p><a href="${pom.latestFinal.jbpmServerZip}">Download jBPM ${pom.latestFinal.version} server (single zip)
                    distribution</a></p>

            <p>Just download, unzip and run</p>
            <div class="ulist">
                <ul>
                    <li>
                        <p>jbpm-server/bin/standalone.sh (Unix / Linux)</p>
                    </li>
                    <li>
                        <p>jbpm-server\bin\standalone.bat (Windows)</p>
                    </li>
                </ul>
            </div>

            <p>It includes:</p>
            <div class="ulist">
                <ul>
                    <li>
                        <p>WildFly server</p>
                    </li>
                    <li>
                        <p>Business Central</p>
                    </li>
                    <li>
                        <p>KIE Server</p>
                    </li>
                    <li>
                        <p>jBPM Case Management showcase app</p>
                    </li>
                    <li>
                        <p>jBPM Service repository (with community work items)</p>
                    </li>
                </ul>
            </div>
            <p>all configured to work smoothly together.</p>
            <p>Once download is completed have a look at <a href="../learn/gettingStartedUsingSingleZipDistribution.html">Getting started guide - Using Single Zip Distribution</a> or <a href="../learn/gettingStartedUsingDocker.html">Getting started guide - UsingDocker</a></p>

            <hr/>

            <h5>The jBPM binaries include documentation, examples and sources.</h5>
            <p>Download jBPM 7.69.0.Final binaries</p>
            <div class="ulist">
                <ul>
                    <li>
                        <a href="${pom.latestFinal.jbpmBinZip}">jBPM ${pom.latestFinal.version}-bin.zip</a>
                    </li>
                    <li>
                        <a href="${pom.latestFinal.jbpmExamplesZip}">jBPM ${pom.latestFinal.version}-examples.zip</a>
                    </li>
                    <li>
                        <a href="${pom.latestFinal.jbpmInstallerZip}">jBPM-installer ${pom.latestFinal.version}.zip</a>
                    </li>
                    <li>
                        <a href="${pom.latestFinal.jbpmInstallerFullZip}">jBPM-installer-full ${pom.latestFinal.version}.zip</a>
                    </li>
                </ul>
            </div>

            <hr/>

            <h5>Eclipse update site</h5>
            <p>We stopped to release Eclipse tools synchronously with jBPM, thus the recent version of jBPM and the
                latest released version of Eclipse tools (update site) may differ.</p>
            <p><a href="${pom.latestFinal.updatesite}">updatesite</a> (latest released version *7.46.0.Final*)</p>

            <hr/>
            <h5>Older community releases</h5>
            <p>Check <a href="https://download.jboss.org/jbpm/release/">the release archive</a>.</p>
        </div>
    </@parent.layout>
</#macro>