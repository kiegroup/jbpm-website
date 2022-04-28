<h2>Explore your running environment</h2>
<h3>Business Central</h3>
<p>Business Central provides feature rich authoring and management environment. It consists of:</p>
<ul>
    <li>
        Design perspectives where users can create projects and pages
    </li>
    <li>
        Deploy perspectives where users can manage execution servers
    </li>
    <li>
        Manage perspectives where users can take control over process and case instances
    </li>
    <li>
        Track perspectives where users can access assigned tasks and reports
    </li>
</ul>
<p>Business Central can be accessed (once the server was started) at <b><a
                href="http://localhost:8080/business-central">http://localhost:8080/business-central</a></b>
</p>
<p>There is a set of predefined users that can be used to log directly into Business Central:</p>
<ul>
    <li>wbadmin/wbadmin</li>
    <li>krisv/krisv</li>
    <li>john/john</li>
    <li>mary/mary</li>
    <li>katy/katy</li>
    <li>jack/jack</li>
    <li>kieserver/kieserver1!</li>
</ul>
<p>Additional users can be created via Business Central Admin section.</p>
<hr/>
<h3>KIE Server Swagger documentation</h3>
<p>KIE Server is the execution server that provides various capabilities</p>
<ul>
    <li>BRM (business rules)</li>
    <li>BPM (business processes)</li>
    <li>BRP (planning/solver)</li>
    <li>Case Management</li>
    <li>DMN (decisions)</li>
</ul>
<p>Its complete REST api documentation can be accessed at <b><a
                href="http://localhost:8080/kie-server/docs">http://localhost:8080/kie-server/docs</a></b>
</p>
<hr/>
<h3>jBPM Case Management Showcase</h3>
<p>jBPM Case Management Showcase is a web application that aims at illustrating various case management
    building blocks in action. These are UI components built on top of KIE Server REST api for case
    management. It's not intended for production usage but more for getting better understanding of the
    capabilities. Case management, in general should be business focused so generic UI won't provide
    much business context to the knowledge workers.</p>
<p>jBPM Case Management application can be accessed at
    <b><a href="http://localhost:8080/jbpm-casemgmt">http://localhost:8080/jbpm-casemgmt</a></b></p>
<p>Same users as for Business Central can be used to logon to this application.</p>
<hr/>
<h2>Try examples</h2>
<p>Once you get yourself familiar with the tools of the jBPM it's time to see something running. The
    easiest way is to try one of the examples shipped with the platform, it will show typical path users
    take to design, build and execute business logic.</p>
<h3>Evaluation process</h3>
<p>Evaluation process is a business process that is human centric (heavily uses human actors to perform
    work) that defines a complete flow of
    activities to perform employee evaluation. This examples shows:</p>
<ul>
    <li>importing example project</li>
    <li>building and deploying project</li>
    <li>verifying deployment to execution server</li>
    <li>executing process instance and work with human tasks</li>
    <li>exploring reporting capabilities</li>
</ul>
<div class="justify-content-center text-center">
    <iframe width="560" height="315"
            src="https://www.youtube.com/embed/-fxL2iioPRI"
            title="YouTube video player"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen></iframe>
</div>
<hr/>
<h3>IT Orders case</h3>
<p>IT Orders case is more advanced use of the jBPM that relies on dynamic nature of business problems.
    It allows to take actions based on data so it's more event/data driven than structured processes.
    Although it still allows users to take advantage of process fragments to express bit of workflows
    within the case. This examples shows:</p>

<ul>
    <li>importing example project</li>
    <li>building and deploying project</li>
    <li>verifying deployment to execution server</li>
    <li>use of jBPM Case management Showcase application</li>
    <li>document upload and handing</li>
    <li>monitoring of case instance in Business Central</li>
</ul>
<p>More about case management capabilities can be found in following articles</p>
<ul>
    <li><a href="http://mswiderski.blogspot.com/2016/10/case-management-jbpm-v7-part-1.html">Introduction
            to jBPM Case Management</a></li>
    <li><a href="http://mswiderski.blogspot.com/2016/10/case-management-jbpm-v7-part-2-working.html">Working
            with case data</a></li>
    <li><a href="http://mswiderski.blogspot.com/2016/10/case-management-jbpm-v7-part-3-dynamic.html">Working
            with dynamic activities</a></li>
</ul>
<div class="justify-content-center text-center">
    <iframe width="560" height="315"
            src="https://www.youtube.com/embed/jtYY5jVD9T0"
            title="YouTube video player"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen></iframe>
</div>
<hr />
<h3>Build your project from scratch</h3>
<p>Building new project from scratch can give you an option to have a clean start where you design your
    process or case to fit your needs. This example shows:</p>
<ul>
    <li>creating new project</li>
    <li>creating new asset - business process</li>
    <li>build and deploy to execution server</li>
    <li>execute process instance</li>
</ul>
<div class="justify-content-center text-center">
    <iframe width="560" height="315"
            src="https://www.youtube.com/embed/pdgj0hrF5rc"
            title="YouTube video player"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen></iframe>
</div>