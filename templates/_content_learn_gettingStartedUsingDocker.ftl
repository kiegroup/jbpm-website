<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>
        <h1>Getting started - Using Docker</h1>
        <div class="sect1">
            <div class="sectionbody">
                <h2>Running jBPM Docker image</h2>
                <p>If you already have <a href="https://docs.docker.com/install/">Docker</a> installed on your local
                    machine, all you need to do is run the following command:</p>
                <pre class="highlight"><code>docker run -p 8080:8080 -p 8001:8001 -d --name jbpm-server-full jboss/jbpm-server-full:latest</code></pre>
                <p>Once container and web applications started, you can navigate to it and login using the username
                    "wbadmin" and password "wbadmin" or any of the users available in the Business Central listed in the
                    section below.</p>
                <p>http://localhost:8080/business-central</p>
                <p>that's all that is needed to get fully configured and running jBPM distribution that includes:</p>
                <ul>
                    <li>WildFly server</li>
                    <li>Business Central</li>
                    <li>KIE Server</li>
                    <li>jBPM Case Management showcase</li>
                    <li>jBPM Service repository</li>
                </ul>
                <p>Everything configured to work together smoothly, and you can access them at following locations:</p>
                <ul>
                    <li>Business Central - http://localhost:8080/business-central</li>
                    <li>KIE Server - http://localhost:8080/kie-server/services/rest/server</li>
                    <li>KIE Server Swagger docs - http://localhost:8080/kie-server/docs</li>
                    <li>jBPM case management - http://localhost:8080/jbpm-casemgmt</li>
                </ul>
                <hr/>
                <#include "_content_learn_explore.ftl">
                <hr/>
                <h2>Technical details</h2>
                <p>By default everything runs using H2 database with file storage but this image also enables you to
                    switch to other databases like MySQL or PostgreSQL. All dependencies and data source configurations
                    are done automatically, you just need to specify a set of environment variables. Alternatively, you
                    can use the provided <a href="https://docs.docker.com/compose/install/">Docker Compose</a> examples
                    to get
                    started using an alternative database. When using the provided Docker Compose examples, all
                    dependencies to get a running container and configuration for the target database is already set in
                    place.</p>
                <p>The Docker Compose examples are located in the following repository:
                    https://github.com/jboss-dockerfiles/business-central/tree/master/docker-compose-examples</p>
                <h3>MySQL Example using Docker Compose</h3>
                <pre class="highlight"><code>docker-compose -f docker-compose-examples/jbpm-full-mysql.yml up</code></pre>
                <h3>MySQL Example using remote connection</h3>
                <pre class="highlight"><code>docker run -p 8080:8080 -p 8001:8001 -d --name jbpm-server-full -e JBPM_DB_DRIVER=mysql -e JBPM_DB_HOST=172.17.0.1 jboss/jbpm-server-full:latest</code></pre>
                <h3>PostgreSQL Example using Docker Compose</h3>
                <pre class="highlight"><code>docker-compose -f docker-compose-examples/jbpm-full-postgres.yml up</code></pre>
                <h3>PostgreSQL Example using remote connection</h3>
                <pre class="highlight"><code>docker run -p 8080:8080 -p 8001:8001 -d --name jbpm-server-full -e JBPM_DB_DRIVER=postgres -e JBPM_DB_HOST=172.17.0.1 jboss/jbpm-server-full:latest</code></pre>
                <h3>Environment variables</h3>
                <ul>
                    <li>
                        <p><code>JBPM_DB_DRIVER</code> = Specify which database driver to use. Allows either: 'h2',
                            'mysql' or 'postgres'. Default: 'h2'.</p>
                    </li>
                    <li>
                        <p><code>JBPM_DB_HOST</code> = Specify hostname of the database. Default: 'localhost'</p>
                    </li>
                    <li>
                        <p><code>JBPM_DB_PORT</code> = Specify port of the database. Default: '3306' if
                            using 'mysql' driver or '5432' in case of 'postgres'.</p>
                    </li>
                    <li>
                        <p><code>JBPM_DB_NAME</code> = Specify name of the database to use. Default: 'jbpm'</p>
                    </li>
                    <li>
                        <p><code>JBPM_DB_USER</code> = Specify user to use to authenticate to the database.
                            Default: 'jbpm'</p>
                    </li>
                    <li>
                        <p><code>JBPM_DB_PASSWORD</code> = Specify user&#8217;s password to use to authenticate
                            to the database. Default: 'jbpm'</p>
                    </li>
                </ul>
            </div>
            <h3>Useful Docker commands</h3>
            <h3>View container logs</h3>
            <pre class="highlight"><code>$ docker logs -f jbpm-server-full</code></pre>
            <h4 id="_list_running_containers">List running containers</h4>
            <pre class="highlight"><code>$ docker ps
CONTAINER ID        IMAGE                           COMMAND                CREATED             STATUS              PORTS                                            NAMES
88f2e110aff5        jboss/jbpm-server-full:latest   "./start_jbpm-wb.sh"   7 minutes ago       Up 7 minutes        0.0.0.0:8001-&gt;8001/tcp, 0.0.0.0:8080-&gt;8080/tcp   jbpm-server-full</code></pre>
            <p>or</p>
            <pre class="highlight"><code>$ docker ps -a</code></pre>
            <p>In case you want to also list stopped containers.</p>
            <h4>Stopping the jBPM Server Full Distribution container</h4>
            <pre class="highlight"><code>$ docker stop jbpm-server-full</code></pre>
            <h4 id="_delete_jbpm_server_full_distribution_container_and_all_its_data">Delete jBPM Server Full
                Distribution container and all its data</h4>
            <pre class="highlight"><code>$ docker rm jbpm-server-full</code></pre>
            <h4 id="_stopping_the_docker_compose_related_containers">Stopping the Docker Compose related
                containers</h4>
            <pre class="highlight"><code>$ docker-compose -f docker-compose-examples/jbpm-full-mysql.yml stop</code></pre>
            <p>or</p>
            <pre class="highlight"><code>$ docker-compose -f docker-compose-examples/jbpm-full-postgres.yml stop</code></pre>
            <h4 id="_docker_volumes">Docker volumes</h4>
            <p>When using the provided Docker Compose configurations, both database images
                ( MySQL and PostgreSQL ) have local volumes configured to store its data
                in the local file system. You can list and remove these via <code>docker volume</code>
                commands. Example:
            </p>
            <pre class="highlight"><code>$ docker volume ls
DRIVER              VOLUME NAME
local               dockercomposeexamples_mysql_data
$ docker volume rm dockercomposeexamples_mysql_data</code></pre>
            <p>For a comprehensive overview about all settings and details about the
                <code>jbpm-server-full</code> image, please visit its <a
                        href="https://hub.docker.com/r/jboss/jbpm-server-full/">Docker Hub page</a>.</p>
        </div>
    </@parent.layout>
</#macro>