# deb-dhis2
Files necessarry for building a debian package for dhis2. 
debuild -S to build a signed debian package.
run build.sh for a fpm built package.  (fpm required)

##Requirements
* debian based distro
* packaging-dev if building with debuild
* fpm
* dhis2-tools - required for deb installation

##How to run
### Debian Packaging
`debuild -us -uc` for unsigned deb
`debuild -S` for signed deb
### FPM
Install fpm.    
Make desired changes to `build.sh`.    
Run `./build.sh`.    

