gh repo list Askath --limit 4000 | while read -r repo _; do
	gh repo clone "$repo"
done
