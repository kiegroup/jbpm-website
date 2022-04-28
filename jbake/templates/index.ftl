<#import "base.ftl" as parent>
<#import "macros.ftl" as macros>
<#assign pom = data.get('pom.yml')>

<@layout></@layout>

<#macro layout>
    <@parent.layout
    title="jBPM Business Automation Toolkit"
    description="jBPM is a toolkit for building business applications to help automate business processes and decisions based on solid business automation background."
    uri=""
    googleWebmasterToolsVerification=true>
        <#assign importantNews = data.get('importantNews.yml').data>

        <div class="alert alert-info alert-dismissible" role="alert" id="release-version-alert">
            Looking for pure cloud-native process automation? Take a look at <a href="https://kogito.kie.org">Kogito</a>
            as well (based on jBPM)!
            <button class="btn-close" data-bs-dismiss="alert" type="button" aria-label="Close"></button>
        </div>
        <div class="alert alert-info alert-dismissible" role="alert" id="release-version-alert">
            jBPM ${pom.latestFinal.version} has been released. <a href="learn/releases.html">Click here</a> to see
            what's new.
            <button class="btn-close" data-bs-dismiss="alert" type="button" aria-label="Close"></button>
        </div>
        <div class="row">
            <div class="col-md-8">
                <h2 id="what-is-jbpm-">What is jBPM?</h2>
                <p><strong>jBPM</strong> is a toolkit for building business applications to help automate business
                    processes and
                    decisions.</p>
                <p>jBPM originates from BPM (Business Process Management) but it has evolved to enable users to pick
                    their own
                    path in business automation.
                    It provides various capabilities that simplify and externalize business logic into reusable assets
                    such as
                    cases, processes, decision tables and more.</p>
                <ul>
                    <li>business processes (BPMN2)</li>
                    <li>case management (BPMN2 and CMMN)</li>
                    <li>decision management (<a href="https://drools.org/learn/dmn.html">DMN</a>)</li>
                    <li>business rules (DRL)</li>
                    <li>business optimisation (Solver)</li>
                </ul>
                <p>jBPM can be used as standalone service or embedded in custom service. It does not mandate any of the
                    frameworks to be used, it can be successfully used in</p>
                <ul>
                    <li>traditional JEE applications - war/ear deployments</li>
                    <li>SpringBoot or Thorntail (formerly known as WildFly Swarm) - uberjar deployments</li>
                    <li>standalone java programs</li>
                </ul>
                <p>jBPM is typically used to build business applications. A business application could be defined as a
                    domain-specific solution (built with selected frameworks and capabilities) that solves a particular
                    business
                    problem. To implement the business logic it leverages capabilities from various frameworks like
                    business
                    processes, business rules and planning constraints, but also persistence, messaging, transactions,
                    etc.</p>
                <p style="text-align: center;">
                    <a class="btn btn-lg btn-primary"
                       href="businessapps/gettingStarted.html">
                        Start with Business Applications!
                    </a>
                </p>
                <p>jBPM is open source software, released under the Apache License 2.0. It is written in 100% pure
                    Java™, runs
                    on any JVM and is available in the Maven Central repository too.</p>
                <h2 id="cloud-native-">Cloud-native?</h2>
                <p>Looking for a pure cloud-native process automation solution, specifically targeted towards creating
                    intelligent business applications in the cloud? Take a look at <a href="https://kogito.kie.org">Kogito</a>,
                    based on jBPM.</p>
            </div>
            <div class="col-md-4">
                <@macros.downloadJumbotron/>
                <@macros.documentationJumbotron/>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div style="text-align: center">
                    <div class="carousel slide carousel-dark" data-bs-ride="carousel" id="whatIsCarouselButtons">
                        <div class="carousel-indicators">
                            <button type="button" aria-label="Home" data-bs-slide-to="0"
                                    data-bs-target="#whatIsCarouselButtons"
                                    class="active"></button>
                            <button type="button" aria-label="Authoring" data-bs-slide-to="1"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                            <button type="button" aria-label="ProcessModeler" data-bs-slide-to="2"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                            <button type="button" aria-label="DataModeler" data-bs-slide-to="3"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                            <button type="button" aria-label="FormModeler" data-bs-slide-to="4"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                            <button type="button" aria-label="Simulation" data-bs-slide-to="5"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                            <button type="button" aria-label="ProcessInstances" data-bs-slide-to="6"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                            <button type="button" aria-label="TaskInbox" data-bs-slide-to="7"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                            <button type="button" aria-label="Dashboards" data-bs-slide-to="8"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                            <button type="button" aria-label="Eclipse" data-bs-slide-to="9"
                                    data-bs-target="#whatIsCarouselButtons"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <a href="landingPage/01_Home_Big.png">
                                    <img alt="Home" src="landingPage/01_Home_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/02_Authoring_Big.png">
                                    <img alt="Authoring" src="landingPage/02_Authoring_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/03_ProcessModeler_Big.png">
                                    <img alt="ProcessModeler" src="landingPage/03_ProcessModeler_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/03_DataModeler_Big.png">
                                    <img alt="DataModeler" src="landingPage/03_DataModeler_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/04_FormModeler_Big.png">
                                    <img alt="FormModeler" src="landingPage/04_FormModeler_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/05_Simulation_Big.png">
                                    <img alt="Simulation" src="landingPage/05_Simulation_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/06_ProcessInstances_Big.png">
                                    <img alt="ProcessInstances" src="landingPage/06_ProcessInstances_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/07_TaskList_Big.png">
                                    <img alt="TaskInbox" src="landingPage/07_TaskList_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/08_Dashboards_Big.png">
                                    <img alt="Dashboards" src="landingPage/08_Dashboards_Big.png" width="800">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a href="landingPage/09_Eclipse_Big.png">
                                    <img alt="Eclipse" src="landingPage/09_Eclipse_Big.png" width="800">
                                </a>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#whatIsCarouselButtons"
                                data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#whatIsCarouselButtons"
                                data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <h2>What does jBPM do?</h2>
                <p>A business process allows you to model your business goals by describing the steps that need to be
                    executed to achieve that goal and the order, using a flow chart. This greatly improves the
                    visibility and agility of your business logic, results in higher-level and domain-specific
                    representations that can be understood by business users and is easier to monitor.</p>
                <p>The core of jBPM is a light-weight, extensible workflow engine written in pure Java that allows you
                    to execute business processes using the latest BPMN 2.0 specification. It can run in any Java
                    environment, embedded in your application or as a service.</p>
                <p>On top of the core engine, a lot of features and tools are offered to support business processes
                    throughout their entire life cycle:</p>
                <ul>
                    <li>Eclipse-based and web-based editor to support the graphical creation of your business processes
                        and case definitions (drag & drop).
                    </li>
                    <li>Pluggable persistence and transactions based on JPA / JTA.</li>
                    <li>Pluggable human task service based on WS-HumanTask for including tasks that need to be performed
                        by human actors.
                    </li>
                    <li>Management console supporting process instance management, task lists and task form management,
                        and reporting.
                    </li>
                    <li>Optional process repository to deploy your process (and other related knowledge).</li>
                    <li>History logging (for querying / monitoring / analysis).</li>
                    <li>Integration with various frameworks such as CDI/EJB, Spring(Boot), OSGi, etc.</li>
                </ul>
                <p>BPM makes the bridge between business analysts, developers and end users, by offering process
                    management features and tools in a way that both business users and developers like it.
                    Domain-specific nodes can be plugged into the palette, making the processes more easily understood
                    by business users.</p>
                <p>jBPM supports adaptive and dynamic processes that require flexibility to model complex, real-life
                    situations that cannot easily be described using a rigid process. We bring control back to the end
                    users by allowing them to control which parts of the process should be executed, to dynamically
                    deviate from the process, etc.</p>
                <p>jBPM is also not just an isolated process engine. Complex business logic can be modeled as a
                    combination of business processes with business rules and complex event processing. jBPM can be
                    combined with the Drools project to support one unified environment that integrates these paradigms
                    where you model your business logic as a combination of processes, rules and events.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <h3>Latest News</h3>
                <ul class="list-unstyled">
                    <#list 0..7 as i>
                        <li class="mb-3">
                            <div class="title">
                                <a href="${importantNews[i].newsUrl}"
                                   target="_blank">${importantNews[i].newsTitle}</a>
                            </div>
                            <div>
                                <#if importantNews[i].newsDate??>
                                    ${importantNews[i].newsDate?string("EEE d MMMM yyyy")} - ${importantNews[i].newsContent}
                                <#else>
                                    ${importantNews[i].newsContent}
                                </#if>
                            </div>
                        </li>
                    </#list>
                </ul>
                <div class="float-end">
                    <a href="/news/archive.html">Archive</a>
                </div>
            </div>
            <div class="col-4">
                <h3>Latest Tweets</h3>
                <a class="twitter-timeline" href="https://twitter.com/jbossjbpm?ref_src=twsrc%5Etfw"
                   data-tweet-limit="5" data-height="300" data-chrome="noheader nofooter noborders">Latest Tweets by
                    jBPM</a>
                <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
            </div>
            <div class="col-4">
                <h3>References Books</h3>
                <a href="http://kverlaen.blogspot.be/2015/07/book-mastering-jbpm6.html" target="_blank">
                    <img src="/website/images/books/MasteringjBPM6.png" alt="Mastering jBPM6"/>
                </a>
                <a href="http://kverlaen.blogspot.be/2014/09/jbpm6-developer-guide.html" target="_blank">
                    <img src="/website/images/books/jBPM6DeveloperGuide.png" alt="jBPM6 Developer Guide"/>
                </a>
                <br />
                <a href="http://kverlaen.blogspot.be/2012/12/book-jbpm5-developer-guide.html" target="_blank">
                    <img src="/website/images/books/jBPM5DeveloperGuide.png" alt="jBPM5 Developer Guide"/>
                </a>
                <a href="http://www.schabell.org/2018/03/book-launced-effective-business-process-management-with-jboss-bpm.html"
                   target="_blank">
                    <img src="/website/images/books/effective_bpm.png"
                         alt="Effective Business Process Management with JBoss BPM"/>
                </a>
            </div>
        </div>
    </@parent.layout>
</#macro>
