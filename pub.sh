#!/bin/bash

version=$1
examples=( "asyncValidation" "asyncChangeValidation" "fieldArrays" "fieldLevelValidation" "immutable" "initializeFromState" "material-ui" "normalizing" "react-widgets" "simple" "selectingFormValues" "submitValidation" "remoteSubmit" "syncValidation" "wizard" )

#cd ~/oss/redux-form-website-template
#npm run build
#cp -r ~/oss/redux-form-website-template/dist/* ~/oss/redux-form-examples/node_modules/redux-form-website-template/dist


for example in "${examples[@]}"
do
  echo $example
  #cd ~/oss/redux-form-examples/$example
  #cp -r ~/oss/redux-form-website-template/dist/* node_modules/redux-form-website-template/dist
  #rm -rf node_modules/redux-form-website-template
  #rm -rf node_modules/redux-form
  #rm -rf node_modules
  #npm install
  mkdir -p ~/oss/redux-form-docs/$version/examples/$example
  cp -r ~/oss/redux-form-examples/$example/dist ~/oss/redux-form-docs/$version/examples/$example
  cp ~/oss/redux-form-examples/$example/index.html ~/oss/redux-form-docs/$version/examples/$example
done

cd ~/oss/redux-form-docs
npm install redux-form-website-template
npm run build

cp ~/oss/redux-form-docs/node_modules/redux-form-website-template/dist/bundle.* ~/oss/redux-form-docs/$version

npm install
npm run publish $version
