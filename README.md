# docker-apktool
This docker image is based on `openjdk 13.0.1` and `apktool 2.4.0`.

## Usage
To dcompile apk file use the following command
```
docker run --rm -v `pwd`:/apk tokutoku15/apktool d app.apk
```


