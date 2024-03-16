function update_hasura() {
  echo "Updating Hasura..."
  cd ~/work/nmg/hasura/hasura
  echo "Applying Metadata"
  hasura metadata apply 
  echo "Applying Migrations"
  hasura migrate apply --database-name postgres
  echo "Reloading Metadata"
  hasura metadata reload
}

