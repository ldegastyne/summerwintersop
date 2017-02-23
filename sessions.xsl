<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:output method="html" doctype-system="about:legacy-compat"/>

    <xsl:template match="/">

        <html lang="en">

            <xsl:for-each select="sop/sessions/session">
                <head>
                    <meta charset="utf-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

                    <title>Sop</title>

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

                        <!-- Main component for a primary marketing message or call to action -->
                        <div class="jumbotron">
                            <h1>Instructions for the

                                <xsl:value-of select="sessiontitle"/></h1>
                            <p><xsl:value-of select="welcome"/></p>

                            <div class="row">

                                <p>
                                    <a class="btn btn-primary btn-lg" href="{url}"><xsl:value-of select="sessiontitle"/></a>
                                </p>

                            </div>

                        </div>

                    </div>
                    <!-- /container -->

                    <!-- Bootstrap core JavaScript
    ================================================== -->
                    <!-- Placed at the end of the document so the pages load faster -->
                    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
                    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
                </body>

            </xsl:for-each>
            <footer>
                <p>
                    <em>Hokies</em>
                </p>
            </footer>
        </html>

    </xsl:template>
</xsl:stylesheet>
