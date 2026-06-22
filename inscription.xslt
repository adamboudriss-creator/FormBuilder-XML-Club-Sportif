<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">

    <html>

      <head>

        <meta charset="UTF-8"/>

        <title>
          <xsl:value-of select="formulaire/titre"/>
        </title>

        <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          rel="stylesheet"/>

      </head>

      <body>

        <div class="container mt-5">

          <div class="card shadow">

            <div class="card-header bg-primary text-white">

              <h2>
                <xsl:value-of select="formulaire/titre"/>
              </h2>

            </div>

            <div class="card-body">

              <form>

                <!-- On parcourt les champs dans l'ordre où ils apparaissent
                     réellement dans le XML, quel que soit leur type -->
                <xsl:for-each select="formulaire/*[not(self::titre)]">

                  <xsl:choose>

                    <!-- ===== input ===== -->
                    <xsl:when test="self::input">

                      <div class="mb-3">

                        <label class="form-label">
                          <xsl:attribute name="for">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>
                          <xsl:value-of select="@label"/>
                        </label>

                        <input class="form-control">

                          <xsl:attribute name="type">
                            <xsl:value-of select="@type"/>
                          </xsl:attribute>

                          <xsl:attribute name="id">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>

                          <xsl:attribute name="name">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>

                          <xsl:if test="@required='true'">
                            <xsl:attribute name="required">required</xsl:attribute>
                          </xsl:if>

                          <xsl:if test="@minlength">
                            <xsl:attribute name="minlength">
                              <xsl:value-of select="@minlength"/>
                            </xsl:attribute>
                          </xsl:if>

                          <xsl:if test="@pattern">
                            <xsl:attribute name="pattern">
                              <xsl:value-of select="@pattern"/>
                            </xsl:attribute>
                          </xsl:if>

                        </input>

                      </div>

                    </xsl:when>

                    <!-- ===== select ===== -->
                    <xsl:when test="self::select">

                      <div class="mb-3">

                        <label class="form-label">
                          <xsl:attribute name="for">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>
                          <xsl:value-of select="@label"/>
                        </label>

                        <select class="form-select">

                          <xsl:attribute name="id">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>

                          <xsl:attribute name="name">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>

                          <xsl:for-each select="option">

                            <option>
                              <xsl:value-of select="."/>
                            </option>

                          </xsl:for-each>

                        </select>

                      </div>

                    </xsl:when>

                    <!-- ===== textarea ===== -->
                    <xsl:when test="self::textarea">

                      <div class="mb-3">

                        <label class="form-label">
                          <xsl:attribute name="for">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>
                          <xsl:value-of select="@label"/>
                        </label>

                        <textarea class="form-control" rows="4">

                          <xsl:attribute name="id">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>

                          <xsl:attribute name="name">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>

                          <xsl:if test="@required='true'">
                            <xsl:attribute name="required">required</xsl:attribute>
                          </xsl:if>

                          <xsl:value-of select="."/>

                        </textarea>

                      </div>

                    </xsl:when>

                    <!-- ===== checkbox ===== -->
                    <xsl:when test="self::checkbox">

                      <div class="form-check mb-3">

                        <input
                          type="checkbox"
                          class="form-check-input">

                          <xsl:attribute name="id">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>

                          <xsl:attribute name="name">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>

                        </input>

                        <label class="form-check-label">
                          <xsl:attribute name="for">
                            <xsl:value-of select="@name"/>
                          </xsl:attribute>
                          <xsl:value-of select="@label"/>
                        </label>

                      </div>

                    </xsl:when>

                  </xsl:choose>

                </xsl:for-each>

                <button
                  type="submit"
                  class="btn btn-success">S'inscrire</button>

              </form>

            </div>

          </div>

        </div>

      </body>

    </html>

  </xsl:template>

</xsl:stylesheet>
