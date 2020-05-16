# Automatic build of application
Gist: https://gist.github.com/runeron/320c3d7ee49caef0352b228fe540f39a

Based on following documents:

## Generating Certificates

* Generate a private key and certificate signing request:
```bash
openssl genrsa -out ios_distribution.key 2048
openssl req -new -key ios_distribution.key -out ios_distribution.csr -subj '/emailAddress=me@example.com, CN=Example, C=US'
```

* Upload CSR to apple (https://developer.apple.com/account/ios/certificate/create)

* Choose Production -> App Store and Ad Hoc

* Download the resulting ios_distribution.cer, and convert it to .pem format:
```bash
openssl x509 -inform der -in ios_distribution.cer -out ios_distribution.
```

* Download Apple's Worldwide developer cert (from portal) and convert it to pem:
```bash
openssl x509 -in AppleWWDRCA.cer -inform DER -out AppleWWDRCA.pem -outform PEM
```

* Convert your cert plus Apple's cert to p12 format (choose a password for the .p12):
```bash
openssl pkcs12 -export -out ios_distribution.p12 -inkey ios_distribution.key -in ios_distribution.pem -certfile AppleWWDRCA.pem
```

* Update provisioning profiles with the new cert, and download from dev portal.

## Info

Targets:
    Loop
    Loop Status Extension
    WatchApp
    WatchApp Extension
    Learn
    LoopCore
    LoopCore-watchOS
    LoopUI
    DoseMathTests
    LoopTests
    Cartfile

Build Configurations:
    Debug
    Release

Schemes:
    Cartfile
    Complication - WatchApp
    DoseMathTests
    Learn
    Loop
    Loop Status Extension
    LoopTests
    Notification - WatchApp
    WatchApp
