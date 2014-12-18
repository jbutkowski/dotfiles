# App default user credentials
export USER="jbutkowski"
export USER_PASSWORD="password1!"

# Full domain name for your application. Eg `sales.example.com`.
#export APP_DOMAIN="lvh.me:3000"

# Provided by Stripe. Required.
export STRIPE_PUBLISHABLE_KEY="pk_test_9131dqrzZ84zeeupk2CbfGVQ"
export STRIPE_SECRET_KEY="sk_test_W7llqJ13NUgwHypibCDwYKvZ"

# Sets up a link from the admin sale view page to the corresponding Stripe page.
#export STRIPE_MANAGE_BASE_URL=""

# Sets the Rails secret token. Required.
export SECRET_TOKEN="a885d95dec00314b11deb8d3a5738556c235b22644c49c6e214045d78a96713c607a502c933a997d9426465020f7e5be4f3ff1f77218c8e62d2851c0a4edf71d"

# The database to use. Provided by Heroku. Required.
#export DATABASE_URL=""

# Required for sending emails.
export SMTP_SERVER_ADDRESS="smtp.gmail.com"
export SMTP_SERVER_PORT="465"
export SMTP_SERVER_USERNAME="jbutkowski@gmail.com"
export SMTP_SERVER_PASSWORD="xwdtjublultejecs"
export SMTP_SERVER_DOMAIN="gmail.com"

# Sets the 'From' address for error notification emails.
#export NOTIFIER_FROM_ADDRESS="noreply@example.com"

# Sets the 'To' address for error notification emails. 
# Optional, but if you want emails you need to set both From and To.
#export NOTIFIER_TO_ADDRESS=""

# Sets up Rails' asset host behavior. Optional.
#export ASSET_HOS=""

#Sets up Google Analytics tracking. Optional.
#export GOOGLE_ANALYTICS_DOMAIN_NAME=""

#Sets up Mixpanel tracking. Optional.
#export MIXPANEL_ACCOUNT_ID=""
