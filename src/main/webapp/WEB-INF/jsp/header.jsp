<!-- Modal -->
<div class="modal fade" id="pleaseWaitDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" style="padding-top:15%" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title mobile-dialog text-center"><spring:message code="header.modal.pleasewait.text"/>
                </h2>
            </div>
            <div class="modal-body center pleasewait-modal-body-config">
                <div class="center-block align-items-center">
                    <img src="img/icons/gif4.gif">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Top Line -->
<div>
    <hr class="topline"/>
</div>
<div class="relative shadow-redesign" style="z-index: 1001">

    <!-- Menu -->
    <div id="header-menu" class="row header-padding">

        <div class="col-12">
            <div class="container-header-main-logo-menu-group">
                <div class="header-main-logo">
                    <a href="index"><img class="logo-svg" src="img/ukwa-2018-onwhite-close.svg"></a>
                </div>
                <div class="container-header-main-logo-menu-inner-group header-main-logo-menu-desktop">
                    <div id="headermenu_index" class="header-menu-item"><a href="index"
                                                                           title="<spring:message code="main.menu.home.title" />">
                        <spring:message code="main.menu.home"/>
                    </a></div>
                    <div id="headermenu_collection" class="header-menu-item2x"><a href="collection"
                                                                                  title="<spring:message code="main.menu.collections.title" />">
                        <spring:message code="main.menu.collections"/>
                    </a></div>
                    <div id="headermenu_save" class="header-menu-item2x"><a href="info/nominate"
                                                                            title="<spring:message code="main.menu.nominate.title" />">
                        <spring:message code="main.menu.nominate"/>
                    </a></div>
                    <div id="headermenu_about" class="header-menu-item"><a href="about"
                                                                           title="<spring:message code="main.menu.about.title" />">
                        <spring:message code="main.menu.about"/>
                    </a></div>
                    <div id="headermenu_contact" class="header-menu-item"><a href="contact"
                                                                             title="<spring:message code="main.menu.contact.title" />">
                        <spring:message code="main.menu.contact"/>
                    </a></div>
                </div>

                <!-- Language menu group-->
                <div class="container-header-main-logo-menu-lang-inner-group header-main-logo-menu-desktop">

                    <c:set var="params" value="${requestScope['javax.servlet.forward.query_string']}"/>
                    <c:set var="textUri" value="${requestScope['javax.servlet.forward.request_uri']}"/>
                    <c:set var="textUriWithoutLang" value="${textUri == '/en' || textUri == '/cy'
                                            ? '/'
                                            : fn:replace(fn:replace(textUri, '/en/', '/'), '/cy/', '/')}"/>
                    <c:if test="${!fn:startsWith(textUri, '/cy/') && textUri != '/cy'}">

                        <div class="header-menu-lang-item">
                            <a href="/cy<c:out value="${textUriWithoutLang}?${params}"/>"
                               title="<spring:message code="main.menu.welsh.title" />">
                                <spring:message code="main.menu.welsh"/>
                            </a>
                        </div>

                    </c:if>
                    <c:if test="${!fn:startsWith(textUri, '/en/') && textUri != '/en'
              && (fn:contains(textUri, '/cy/')  || textUri =='/cy')}">

                        <div class="header-menu-lang-item">
                            <a href="/en<c:out value="${textUriWithoutLang}?${params}"/>"
                               title="<spring:message code="main.menu.english.title" />">
                                <spring:message code="main.menu.english"/>
                            </a>
                        </div>

                    </c:if>
                </div>

                <!-- Mobile menu empty -->
                <div class="header-main-logo-menu-mobile header-menu-item2x">
                </div>

                <!-- Mobile menu icon -->
                <div class="header-main-logo-menu-mobile padding-right-20 padding-top-30 header-mobile-menu-link">
                    <a href="#mobilemenu2" data-toggle="collapse" class="q-grid no-decoration"><i class="fa fa-bars fa-border fa-2x mobile-menu-icon-settings icon-to-change"></i></a>
                </div>

            </div>


        </div>

    </div>

    <div class="row">
        <div class="col-12">
            <!-- Top Navigation Menu -->
                <div class="topnav">

                <!-- Navigation links (hidden by default) -->
                <div id="mobilemenu2" class="collapse padding-bottom-20 padding-top-20">
                    <a href="index" title="<spring:message code="main.menu.home.title" />"><spring:message
                            code="main.menu.home"/></a>
                    <a href="collection" title="<spring:message code="main.menu.collections.title" />"><spring:message
                            code="main.menu.collections"/></a>
                    <a href="info/nominate" title="<spring:message code="main.menu.nominate.title" />"><spring:message
                            code="main.menu.nominate"/></a>
                    <a href="about" title="<spring:message code="main.menu.about.title" />"><spring:message
                            code="main.menu.about"/></a>
                    <a href="contact" title="<spring:message code="main.menu.contact.title" />"><spring:message
                            code="main.menu.contact"/></a>


                    <c:set var="params" value="${requestScope['javax.servlet.forward.query_string']}"/>
                    <c:set var="textUri" value="${requestScope['javax.servlet.forward.request_uri']}"/>
                    <c:set var="textUriWithoutLang" value="${textUri == '/en' || textUri == '/cy'
                                            ? '/'
                                            : fn:replace(fn:replace(textUri, '/en/', '/'), '/cy/', '/')}"/>
                    <c:if test="${!fn:startsWith(textUri, '/cy/') && textUri != '/cy'}">


                        <a href="/cy<c:out value="${textUriWithoutLang}?${params}"/>"
                           title="<spring:message code="main.menu.welsh.title" />">
                            <spring:message code="main.menu.welsh"/>
                        </a>


                    </c:if>
                    <c:if test="${!fn:startsWith(textUri, '/en/') && textUri != '/en'
              && (fn:contains(textUri, '/cy/')  || textUri =='/cy')}">


                        <a href="/en<c:out value="${textUriWithoutLang}?${params}"/>"
                           title="<spring:message code="main.menu.english.title" />">
                            <spring:message code="main.menu.english"/>
                        </a>


                    </c:if>

                </div>

            </div>
        </div>
    </div>




</div>