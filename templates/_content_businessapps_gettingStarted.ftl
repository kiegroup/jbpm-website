<#import "normalBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
    <@parent.layout>
        <#assign pom = data.get('pom.yml')>

        <h1>Business Applications - Getting Started</h1>
        <div class="sect1">
          <h2 id="_overview">Overview</h2>
          <div class="sectionbody">
            <div class="paragraph">
              <p>Business application can be defined as an automated solution, built with selected
                frameworks and capabilities that implements business functions and/or business
                problems. Capabilities can be (among others):</p>
            </div>
            <div class="ulist">
              <ul>
                <li>
                  <p>persistence</p>
                </li>
                <li>
                  <p>messaging</p>
                </li>
                <li>
                  <p>transactions</p>
                </li>
                <li>
                  <p>business processes, business rules</p>
                </li>
                <li>
                  <p>planning solutions</p>
                </li>
              </ul>
            </div>
            <div class="paragraph">
              <p>Business application is more of a logical grouping of individual services that
                represent certain business capabilities. Usually they are deployed separately
                and can also be versioned individually. Overall goal is that the complete
                business application will allow particular domain to achieve their business
                goals e.g. order management, accommodation management, etc.</p>
            </div>
            <div class="ulist">
              <div class="title">Business application is</div>
              <ul>
                <li>
                  <p>Build on any runtime</p>
                </li>
                <li>
                  <p>Deployable to cloud with just single command</p>
                </li>
                <li>
                  <p>UI agnostic (doesn’t enforce any UI frameworks and let users to make their
                    own choice)</p>
                </li>
                <li>
                  <p>Configurable database profiles</p>
                </li>
                <li>
                  <p>Generated</p>
                </li>
              </ul>
            </div>
            <div class="ulist">
              <div class="title">Business application consists of (though are not restricted to have only one
                of each project types)</div>
              <ul>
                <li>
                  <p>data model project - shared data model between business assets and service</p>
                </li>
                <li>
                  <p>business assets (kjar) project - easily importable into workbench</p>
                </li>
                <li>
                  <p>service project - actual service with various capabilities</p>
                </li>
              </ul>
            </div>
            <div class="paragraph">
              <p><strong>Service project</strong> is the one that is deployable but will in
                most of the cases include business assets and data model projects.</p>
            </div>
            <div class="paragraph">
              <p><strong>Data model project</strong> represents the common data structures that
                will be shared between service implementation and business assets. That enables
                proper encapsulation and promotes reuse and at the same time reduces shortcuts
                to make data model classes something more than they are - include too much
                of implementation into data models.</p>
            </div>
            <div class="paragraph">
              <p><strong>Business assets project</strong> represents your business logic as
                processes, cases, rules, decision tables and more.</p>
            </div>
            <div class="paragraph">
              <p>Following are the maven archetype commands need to be used to generate different
                types of projects:</p>
            </div>
            <div class="ulist">
              <ul>
                <li>
                  <p>Data model archetype</p>
                </li>
              </ul>
            </div>
            <div class="listingblock">
              <div class="content">
                <pre class="highlight"><code class="language-bash" data-lang="bash">mvn archetype:generate -B -DarchetypeGroupId=org.kie -DarchetypeArtifactId=kie-model-archetype -DarchetypeVersion=${pom.latestFinal.version} -DgroupId=com.company -DartifactId=business-application-model -Dversion=1.0-SNAPSHOT -Dpackage=com.company.model</code></pre>
              </div>
            </div>
            <div class="paragraph">
              <p>This command creates a project which generates business-application-model-1.0-SNAPSHOT.jar</p>
            </div>
            <div class="ulist">
              <ul>
                <li>
                  <p>Business assets project archetype</p>
                </li>
              </ul>
            </div>
            <div class="listingblock">
              <div class="content">
                <pre class="highlight"><code class="language-bash" data-lang="bash">mvn archetype:generate -B -DarchetypeGroupId=org.kie -DarchetypeArtifactId=kie-kjar-archetype -DarchetypeVersion=${pom.latestFinal.version} -DgroupId=com.company -DartifactId=business-application-kjar -Dversion=1.0-SNAPSHOT -Dpackage=com.company</code></pre>
              </div>
            </div>
            <div class="paragraph">
              <p>This command creates a project which generates business-application-kjar-1.0-SNAPSHOT.jar</p>
            </div>
            <div class="ulist">
              <ul>
                <li>
                  <p>Dynamic assets project archetype</p>
                </li>
              </ul>
            </div>
            <div class="listingblock">
              <div class="content">
                <pre class="highlight"><code class="language-bash" data-lang="bash">mvn archetype:generate -B -DarchetypeGroupId=org.kie -DarchetypeArtifactId=kie-kjar-archetype -DarchetypeVersion=${pom.latestFinal.version} -DcaseProject=true -DgroupId=com.company -DartifactId=business-application-kjar -Dversion=1.0-SNAPSHOT -Dpackage=com.company</code></pre>
              </div>
            </div>
            <div class="paragraph">
              <p>This command creates a project which generates business-application-kjar-1.0-SNAPSHOT.jar</p>
            </div>
            <div class="paragraph">
              <p>Service project archetype can be used based on the capabilities that are needed
                in the project. Capabilities essentially define the features that your business
                application will be equipped with. Available options are:</p>
            </div>
            <div class="ulist">
              <ul>
                <li>
                  <p>Business automation(bpm) covers features for process management, case management,
                    decision management and optimization. These will be by default configured
                    in the service project of your business application. Although you can
                    turn them off via configurationService project archetype(Business Automation)</p>
                </li>
              </ul>
            </div>
            <div class="listingblock">
              <div class="content">
                <pre class="highlight"><code class="language-bash" data-lang="bash">mvn archetype:generate -B -DarchetypeGroupId=org.kie -DarchetypeArtifactId=kie-service-spring-boot-archetype -DarchetypeVersion=${pom.latestFinal.version} -DgroupId=com.company -DartifactId=business-application-service -Dversion=1.0-SNAPSHOT -Dpackage=com.company.service -DappType=bpm</code></pre>
              </div>
            </div>
            <div class="ulist">
              <ul>
                <li>
                  <p>Decision management(brm) covers mainly decision and rules related features
                    (backed by Drools project)</p>
                </li>
              </ul>
            </div>
            <div class="listingblock">
              <div class="content">
                <pre class="highlight"><code class="language-bash" data-lang="bash">mvn archetype:generate -B -DarchetypeGroupId=org.kie -DarchetypeArtifactId=kie-service-spring-boot-archetype -DarchetypeVersion=${pom.latestFinal.version} -DgroupId=com.company -DartifactId=business-application-service -Dversion=1.0-SNAPSHOT -Dpackage=com.company.service -DappType=brm</code></pre>
              </div>
            </div>
            <div class="ulist">
              <ul>
                <li>
                  <p>Business optimization(planner) covers planning problems and solutions related
                    features (backed by OptaPlanner project)</p>
                </li>
              </ul>
            </div>
            <div class="listingblock">
              <div class="content">
                <pre class="highlight"><code class="language-bash" data-lang="bash">mvn archetype:generate -B -DarchetypeGroupId=org.kie -DarchetypeArtifactId=kie-service-spring-boot-archetype -DarchetypeVersion=${pom.latestFinal.version} -DgroupId=com.company -DartifactId=business-application-service -Dversion=1.0-SNAPSHOT -Dpackage=com.company.service -DappType=planner</code></pre>
              </div>
            </div>
            <div class="literalblock">
              <div class="content">
                <pre>These commands create a project which generates business-application-service-1.0-SNAPSHOT.jar</pre>
              </div>
            </div>
          </div>
        </div>
        <div class="sect1">
          <h2 id="_build_your_first_business_application">Build your first Business Application</h2>
          <div class="sectionbody">
            <div class="paragraph">
              <p>To build your first business application,use the above mentioned maven archetype
                commands to generate a Data project,Business assets project and a Service
                project with desired capabilities.</p>
            </div>
            <div class="paragraph">
              <p>It is recommended to generate all the three types of projects -Data Model,
                Business assets and Service projects using the archetypes in same directory
                on your computer.</p>
            </div>
            <div class="paragraph">
              <p>Once you have the application on your computer just follow these steps to have
                it up and running</p>
            </div>
            <div class="ulist">
              <ul>
                <li>
                  <p>go to directory suffixed with -service</p>
                </li>
                <li>
                  <p>execute <code>./launch.sh clean install</code> for unix or <code>launch.bat clean install</code>            for windows</p>
                </li>
                <li>
                  <p>once the boot has finished go to <a href="http://localhost:8090">http://localhost:8090, window="_blank"</a></p>
                </li>
              </ul>
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