ssh-add -D  # This removes all identities
ssh-add ~/.ssh/id_rsa-sofar-prototype

# Set Git user name and email for your private repository temporarily
git config user.name "prince"
git config user.email "prince@inspiredtech.ca"


# press enter to continue
read -p "Press enter to continue"

git add .
# Commit the changes
git commit -m "Updated website"

# Rename the branch to 'main' (assuming you're using 'main' as the default branch)
git branch -M main

# Set the remote repository URL to your private repository
git remote add origin git@github.com:inspiredtechinc/inspiredtechinc.git

# Push the changes to the 'main' branch of the remote repository
git push -u origin main


# Echo a message to indicate the operation is complete
echo 'Pushed to the private repository'

# Clean up and set Git user name and email back to your work profile

# Remove all SSH identities
ssh-add -D
#
## Add your default (work) SSH key
ssh-add ~/.ssh/id_rsa


## Set Git user name and email back to your work profile
git config user.name "Prince Agbebiyi"
git config user.email "pagbebiyi@realmatters.com"

# Confirm the user name and email have been reset
echo "Current name:   $(git config user.name)"
echo "Current email:  $(git config user.email)"

# List SSH identities to confirm they've been reset
ssh-add -l

# Echo a message to indicate the script is done
echo 'Done'
