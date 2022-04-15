# apkcheck
Docker wrapper around scanapk and apktool to check apk files for tracker libraries.

Checks all apks in the given folder and stores the results as `results.txt` in the same folder.

```
docker build -t apkcheck .

docker run --rm -v /path/to/apk/folder:/root/data apkcheck
```