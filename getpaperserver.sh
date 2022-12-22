# original script by https://github.com/astorks/PaperMC.sh/blob/master/papermc.sh

PAPERMC_VERSION=$1
LATEST_BUILD=$(curl -s "https://papermc.io/api/v2/projects/paper/versions/${PAPERMC_VERSION}" | jq '.builds[-1]')
LATEST_DOWNLOAD=$(curl -s "https://papermc.io/api/v2/projects/paper/versions/${PAPERMC_VERSION}/builds/${LATEST_BUILD}" | jq '.downloads.application.name' -r)
echo -----------------
echo $PAPERMC_VERSION#$LATEST_BUILD
echo -----------------
PAPERMC_DOWNLOAD_URL="https://api.purpurmc.org/v2/purpur/1.16.5/1171/download"
curl -s -o paperclip.jar ${PAPERMC_DOWNLOAD_URL}
