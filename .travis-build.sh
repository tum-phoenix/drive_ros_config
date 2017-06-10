#!/usr/bin/env bash

set -e # fail on errors
#set -x # echo commands run

export toolset_branch=$1
export server_type=$2
export tags_list=$3


export ubuntu_version=${ubuntu_version_name:-"trusty"}
export ros_release=${ros_release_name:-"indigo"}
export docker_image=${docker_image_name:-"shadowrobot/build-tools:$ubuntu_version-$ros_release"}

export docker_user=${docker_user_name:-"user"}
export docker_user_home=${docker_user_home_dir:-"/home/user"}

export extra_variables="codecov_secure=$CODECOV_TOKEN github_login=$GITHUB_LOGIN github_password=$GITHUB_PASSWORD ros_release=$ros_release ubuntu_version_name=$ubuntu_version "


sudo docker pull $docker_image
export extra_variables="$extra_variables travis_repo_dir=/host$TRAVIS_BUILD_DIR  travis_is_pull_request=$TRAVIS_PULL_REQUEST"
sudo docker run -w "$docker_user_home/sr-build-tools/ansible" -v $TRAVIS_BUILD_DIR:/host$TRAVIS_BUILD_DIR $docker_image  bash -c "git pull && git checkout $toolset_branch && sudo PYTHONUNBUFFERED=1 ansible-playbook -v -i \"localhost,\" -c local docker_site.yml --tags \"travis,$tags_list\" -e \"$extra_variables\" "

