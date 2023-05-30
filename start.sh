if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Arshad-ek2/purito-dq-new-version.git/purito-dq-new-version
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /purito-dq-new-version
fi
cd /purito-dq-new-version
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
