env.DIND_PROJECT_LABEL_DEDICATED='base'
env.DOCKER_IMAGE_REPO="registry-vpc.cn-hangzhou.aliyuncs.com/gaodingx/echo-server-for-test"
env.DINGTALK_ACCESS_TOKEN="096a3d6941e3b679ab1fcc646d0007b70d613dd490dc39080117cd94786ba0a4"
env.DINGTALK_MOBILES="13960902574"

pipelineDefault.run({
  stage('Deploy') {
      sh '''
        imageName=`dind-docker-image-name -b "${GIT_BRANCH}" -c "${GIT_COMMIT}" -r "${DOCKER_IMAGE_REPO}"`
        dind-docker-build -n "${imageName}"
        dind-docker-push -n "${imageName}"
        dind-notify-dingtalk -a "${DINGTALK_ACCESS_TOKEN}" -m "${DINGTALK_MOBILES}" -t "$(dind-notify-text -t docker-push-complete)"
      '''
  }
})