<?xml version="1.0" encoding="UTF-8"?>
                    <xsl:stylesheet
                        version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
                        <!-- Match the root node -->
                        <xsl:template match="/">
                            <html>
                                <head>
                                    <!-- Set the title of the HTML page -->
                                    <title>Twitter</title>
                                    <style>
                                        /* Define CSS styles for better presentation */
                                        h2 {
                                            margin-bottom: 5px;
                                        }
                                        p {
                                            margin-top: 0;
                                        }
                                    </style>
                                </head>
                                <body>
                                    <!-- Display usernames -->
                                    <h2>Usernames:</h2>
                                    <xsl:apply-templates
                                    select="/Twitter/user/username"/>
                                    <!-- Display posts with #programming -->
                                    <h2>Posts with #programming:</h2>
                                    <xsl:apply-templates
                                    select="/Twitter/user/posts/post[contains(content, '#programming')]/content"/>
                                    <!-- Display number of followers for user2 -->
                                    <h2>Number of followers for Borosky_Gh:</h2>
                                    <xsl:value-of select="/Twitter/user[username='Borosky_Gh']/followers"/>
                                </body>
                            </html>
                        </xsl:template>
                        <!-- Template to display usernames -->
                        <xsl:template match="username">
                            <p><xsl:value-of select="."/></p>
                        </xsl:template>
                        <!-- Template to display post content -->
                        <xsl:template match="content">
                            <p><xsl:value-of select="."/></p>
                        </xsl:template>
                    </xsl:stylesheet> 