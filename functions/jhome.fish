function jhome
    if [ 0"$argv" = 0 ];
	echo "Listing them:"
	/usr/libexec/java_home -V
	return
    end
    set -xg JAVA_HOME (/usr/libexec/java_home $argv)
    echo "JAVA_HOME:" $JAVA_HOME
    echo -e "\njava -version below:"
    java -version
end
