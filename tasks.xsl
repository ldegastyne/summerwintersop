<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="html" doctype-system="about:legacy-compat"/>

    <xsl:template match="/">

        <html>

            <xsl:for-each select="sop/sessions/session[@id='2']">
                <head>
                    <meta charset="utf-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

                    <title>Instructions for

                        <xsl:value-of select="sessiontitle"/></title>

                    <!-- Bootstrap core CSS -->
                    <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css" rel="stylesheet"/>

                    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
                    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
                </head>

                <body>

                    <div class="container">

                        <h1>Instructions for the

                            <xsl:value-of select="sessiontitle"/></h1>

                        <xsl:for-each select="tasks/task">
                            <div class="row" id="shortdesc">
                                <div class="col-md-12">

                                    <h2><xsl:value-of select="tasktitle"/></h2>
                                    <p><xsl:value-of select="staging"/></p>
                                </div>

                            </div>
                            <!-- close shortdesc -->

                            <div class="row" id="collapses">
                                <div class="col-md-12">
                                    <div class="accordion" id="accordion2">
                                        <div class="accordion-group">
                                            <div class="accordion-heading">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                                    <h2>Tools and ingredients</h2>
                                                </a>
                                            </div>
                                            <div id="collapseOne" class="accordion-body collapse">
                                                <div class="accordion-inner">
                                                    <ul>

                                                        <xsl:for-each select="ingredients/ingredient">
                                                            <li><xsl:value-of select="item"/></li>
                                                        </xsl:for-each>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="accordion-group">
                                            <div class="accordion-heading">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                                                    <h2>Steps</h2>
                                                </a>
                                            </div>
                                            <div id="collapseTwo" class="accordion-body collapse">
                                                <div class="accordion-inner">
                                                    <ol>

                                                        <xsl:for-each select="steps/step">
                                                            <li><xsl:value-of select="action"/></li>
                                                            <p>
                                                                <i><xsl:value-of select="note"/></i>
                                                            </p>

                                                        </xsl:for-each>
                                                    </ol>
                                                    <p><xsl:value-of select="summary"/></p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--closes collapses -->

                            <hr/>

                            <footer>
                                <p>
                                    <em>Back to the
                                        <a href="index.html">home page</a>
                                    </em>
                                </p>
                            </footer>

                        </xsl:for-each>
                    </div>
                    <!-- /container -->

                    <!-- Bootstrap core JavaScript
    ================================================== -->
                    <!-- Placed at the end of the document so the pages load faster -->
                    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
                    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
                </body>

            </xsl:for-each>
        </html>

    </xsl:template>
</xsl:stylesheet>
