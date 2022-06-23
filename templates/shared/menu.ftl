
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light border-bottom shadow">
    <div class="container">
        <a class="navbar-brand" href="${content.rootpath}">
            <img alt="jBPM logo" src="${content.rootpath}headerFooter/jBPMLogo_siteheader.png">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="https://blog.kie.org">Blog</a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarLearn" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Download
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarLearn">
                        <li><a class="dropdown-item" href="${content.rootpath}download/community.html">Community</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}download/docker.html">Docker</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}download/enterprise.html">Enterprise</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarLearn" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Learn
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarLearn">
                        <li><a class="dropdown-item" href="${content.rootpath}learn/gettingStartedUsingSingleZipDistribution.html">Getting Started - Using Single Zip Distribution</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/gettingStartedUsingDocker.html">Getting Started - Using Docker</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/releases.html">Releases</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/documentation.html">Documentation</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/performance.html">Performance</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/video.html">Videos</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}learn/slides.html">Slides</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarBusinessApplications" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Apps
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarLearn">
                        <li><a class="dropdown-item" href="${content.rootpath}businessapps/gettingStarted.html">Getting Started</a></li>
                        <li><a class="dropdown-item" href="${content.rootpath}businessapps/examples.html">Beyond Basics</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}community/getHelp.html">Get help</a></li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}code/sourceCode.html">Source</a></li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}community/team.html">Team</a></li>
                <li class="nav-item"><a class="nav-link" href="${content.rootpath}product/services.html">Services</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarKIE" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        KIE
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarKIE">
                        <li><a class="dropdown-item" href="https://www.drools.org/" target="_blank">Drools</a></li>
                        <li><a class="dropdown-item" href="https://kogito.kie.org/" target="_blank">Kogito</a></li>
                        <li><a class="dropdown-item" href="https://www.jbpm.org/" target="_blank">jBPM</a></li>
                        <li><a class="dropdown-item" href="https://www.optaplanner.org/" target="_blank">OptaPlanner</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="https://www.kie.org/" target="_blank">kie.org</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="p-2"><a aria-label="Star ${config.title} on GitHub" class="github-button" data-show-count="true" href="${config.github}">Star</a></li>
                <#--  <a href="https://twitter.com/jbossjbpm?ref_src=twsrc%5Etfw" class="twitter-follow-button" data-show-count="false">Follow @jbossjbpm</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>  -->
                <li class="p-1"><a href="${config.twitter}" target="_blank" title="Follow ${config.title} on Twitter"><img alt="T" src="${content.rootpath}headerFooter/twitterLogo.png"></a></li>
                <li class="p-1"><a href="https://www.youtube.com/c/KIE-community-channel" target="_blank" title="KIE YouTube channel"><img alt="YT" src="${content.rootpath}headerFooter/youtubeLogo.png" style="height: 16px"></a></li>
            </ul>
        </div>
    </div>
</nav>
