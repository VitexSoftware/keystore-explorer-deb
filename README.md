# KeyStore Explorer Debian Package
KeyStore Explorer is a free GUI replacement for the Java command-line utilities keytool, jarsigner and jadtool.

Web Site: http://www.keystore-explorer.org/

Features:

 -   Create, load, save and convert between various KeyStore types: JKS, JCEKS, PKCS#12, BKS (V1 and V2) and UBER
 -   Change KeyStore and KeyStore entry passwords
 -   Delete or rename KeyStore entries
 -   Cut/copy/paste KeyStore entries
 -   Append certificates to key pair certificate chains
 -   Generate RSA, ECC and DSA key pairs with self-signed X.509 certificates
 -   Apply X.509 certificate extensions to generated key pairs and Certificate Signing Requests (CSRs)
 -   View X.509 Certificate, CRL and CRL entry X.509 V3 extensions
 -   Import and export keys and certificates in many formats: PKCS#12, PKCS#8, PKCS#7, DER/PEM X.509 certificate files, Microsoft PVK, SPC, PKI Path, OpenSSL
 -   Generate, view and sign CSRs in PKCS #10 and SPKAC formats
 -   Sign JAR files, J2ME MIDlet Applications files and CSRs
 -   Configure a CA Certs KeyStore for use with KeyStore operations

Installation
------------

For Debian, Ubuntu & friends please use repo:

    wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
    echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/ease.list
    aptitude update
    aptitude install keystore-explorer



