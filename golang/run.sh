#/bin/sh

pkgFile="Godeps"
tmpl="golang"
installAct="gpm install"
manInstall="go get ..."

echo "==============================="

if [ -f "$pkgFile" ]; then
	echo "'$pkgFile' exists, install requirements for development evnironment ..."

	eval $installAct

    echo ""
	echo "To avoid installing package every time you run this env, use a template dockeRun env '$tmpl' by"
	echo "    dockeRun --template $tmpl"
else
	echo "'$pkgFile' not exists,"
	echo "You need to install packages by '$manInstall' on your own"
	echo "Or put '$pkgFile' in the root of the working directory and rerun the container to get package installed automatically."
	echo "Or use a template dockeRun env '$tmpl' by"
	echo "    dockeRun --template $tmpl"
fi
echo ""

ln -s /workspace /go/src/$PROJECT_NAME

/bin/bash
