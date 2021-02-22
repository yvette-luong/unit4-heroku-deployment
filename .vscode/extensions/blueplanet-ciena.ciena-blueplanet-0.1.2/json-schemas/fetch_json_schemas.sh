#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

generate_format_schema () {
    formats=`grep "extends CustomFormat" bpocore-common/src/main/scala/com/cyaninc/bpocore/common/JsonValidationExtraFormats.scala | awk -F'CustomFormat' '{print $2}' | awk -F '"' '{print $2}'`
    formats=`for format in ${formats}; do echo -n "\"${format}\", "; done`
    cat <<EOF
      format {
          description = "Additonal Format information"
          type = string
          enum = [ ${formats::-2} ] 
      }
EOF
}



#clone the bpocore repo to /tmp
pushd /tmp
git clone https://github.cyanoptics.com/Orchestrate/bp-orchestrate-core.git

cd bp-orchestrate-core

#get a list of tags
#I'm not positive if this will properly handle spaces if they exist in tags

for release_tag in $(git tag | grep "rel-v" | grep -v rel-v15) 
do
    git checkout "${release_tag}"
    release_ver=`echo "${release_tag}" | cut -c 6-`
    cp -r bpocore-resources/src/main/resources/com/cyaninc/bpocore/resources/model-definitions/json-schemas "${SCRIPTPATH}/${release_ver}"
    if test -f bpocore-common/src/main/scala/com/cyaninc/bpocore/common/JsonValidationExtraFormats.scala
    then
        echo "Generating format schema section"
        sed '/format.type = string$/r'<(generate_format_schema) -i -- "${SCRIPTPATH}/${release_ver}/tosca-lite-v1/property.hocon"
        sed 's/.*format.type = string$//' -i "${SCRIPTPATH}/${release_ver}/tosca-lite-v1/property.hocon"

    fi
done

popd

rm -rf /tmp/bp-orchestrate-core
