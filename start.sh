if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://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@github.com/PirateGamers/Mogenius.git /Mogenius
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Mogenius

fi
cd /Mogenius
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py