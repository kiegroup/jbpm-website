<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>
        <h1>Getting started - Using Single Zip Distribution</h1>
        <div class="sect1">
            <div class="sectionbody">
                <h3>Download jBPM</h3>
                <p>First things first, download jBPM server distribution (if not already done) to start quickly with
                    complete environment.</p>
                <div class="ulist">
                    <ul>
                        <li>
                            <a href="${pom.latestFinal.jbpmServerZip}">Download jBPM ${pom.latestFinal.version} server
                                (single zip) distribution</a>
                        </li>
                    </ul>
                </div>
                <p>Just download, unzip and run</p>
                <div class="ulist">
                    <ul>
                        <li>
                            <p>On Unix/Linux</p>
                            <ul>
                                <li>
                                    <p><code>jbpm-server/bin/standalone.sh</code></p>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <p>On Windows</p>
                            <ul>
                                <li>
                                    <p><code>jbpm-server\bin\standalone.bat</code></p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <hr />
                <#include "_content_learn_explore.ftl">
                <hr />
                <h2>Switch to another database</h2>
                <p>jBPM runs by default with H2 database with file storage - located under &lt;JBOSS_HOME&gt;/standalone/data/jbpm-db</p>
                <p>Users can switch to another database very easily by invoking a script located in &lt;JBOSS_HOME&gt;/bin.</p>
                <h3>To switch to MySQL use following command when server is stopped</h3>
                <ul>
                    <li>
                        Unix/Linux:
                        <ul>
                            <li><code>&lt;JBOSS_HOME&gt;/bin/jboss-cli.sh --file=jbpm-mysql-config.cli</code></li>
                        </ul>
                    </li>
                    <li>
                        Windows:
                        <ul>
                            <li><code>&lt;JBOSS_HOME&gt;\bin\jboss-cli.bat --file=jbpm-mysql-config.cli</code></li>
                        </ul>
                    </li>
                </ul>
                <hr />
                <h3>To switch to PostgreSQL use following command when server is stopped</h3>
                <ul>
                    <li>
                        Unix/Linux:
                        <ul>
                            <li><code>&lt;JBOSS_HOME&gt;/bin/jboss-cli.sh --file=jbpm-postgres-config.cli</code></li>
                        </ul>
                    </li>
                    <li>
                        Windows:
                        <ul>
                            <li><code>&lt;JBOSS_HOME&gt;\bin\jboss-cli.bat --file=jbpm-postgres-config.cli</code></li>
                        </ul>
                    </li>
                </ul>
                <p>These scripts assume that database is installed and some default configuration is present:</p>
                <ul>
                    <li>host -> localhost</li>
                    <li>port -> 3306 for MySQL and 5432 for PostgreSQL</li>
                    <li>database name -> jbpm</li>
                    <li>user name -> jbpm</li>
                    <li>password -> jbpm</li>
                </ul>
                <p>in case the values are not correct, edit them in the script files jbpm-mysql-config.cli for MySQL and jbpm-postgres-config.cli for PostgreSQL - in both scripts values to be updated are on line 17.</p>
                <p>There is H2 script as well to go back to default.</p>
                <p>After running the script the only thing that is needed is to start the server.</p>
            </div>
        </div>
    </@parent.layout>
</#macro>