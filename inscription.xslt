<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    
    <html>
      <head>
        
        <title>Inscription Club Sportif</title>
        
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>
        
      </head>
      
      <body>
        
        <div class="container mt-5">
          
          <h2 class="mb-4">
            <xsl:value-of select="formulaire/titre"/>
          </h2>
          
          <table class="table table-bordered">
            
            <tr>
              <th>Nom</th>
              <td><xsl:value-of select="formulaire/nom"/></td>
            </tr>
            
            <tr>
              <th>Prénom</th>
              <td><xsl:value-of select="formulaire/prenom"/></td>
            </tr>
            
            <tr>
              <th>Email</th>
              <td><xsl:value-of select="formulaire/email"/></td>
            </tr>
            
            <tr>
              <th>Téléphone</th>
              <td><xsl:value-of select="formulaire/telephone"/></td>
            </tr>
            
            <tr>
              <th>Âge</th>
              <td><xsl:value-of select="formulaire/age"/></td>
            </tr>
            
            <tr>
              <th>Sexe</th>
              <td><xsl:value-of select="formulaire/sexe"/></td>
            </tr>
            
            <tr>
              <th>Sport</th>
              <td><xsl:value-of select="formulaire/sport"/></td>
            </tr>
            
            <tr>
              <th>Niveau</th>
              <td><xsl:value-of select="formulaire/niveau"/></td>
            </tr>
            
            <tr>
              <th>Adresse</th>
              <td><xsl:value-of select="formulaire/adresse"/></td>
            </tr>
            
            <tr>
              <th>Certificat médical</th>
              <td><xsl:value-of select="formulaire/certificatMedical"/></td>
            </tr>
            
            <tr>
              <th>Conditions acceptées</th>
              <td><xsl:value-of select="formulaire/conditions"/></td>
            </tr>
            
          </table>
          
        </div>
        
      </body>
    </html>
    
  </xsl:template>
  
</xsl:stylesheet>