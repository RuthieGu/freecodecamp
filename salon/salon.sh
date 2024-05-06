#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo "List of services:"
SERVICES=$($PSQL "SELECT * FROM services")

SERVICE_ID_SELECTED='a'
while [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
do
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  read SERVICE_ID_SELECTED
done

echo "Phone?"
read CUSTOMER_PHONE
# if customer doesn't exist
if [[ -z $($PSQL "SELECT phone FROM customers WHERE phone='$CUSTOMER_PHONE'") ]]
then
  $PSQL "INSERT INTO customers (phone) VALUES ('$CUSTOMER_PHONE')"
  # get new customer name
  echo "Name?"
  read CUSTOMER_NAME
  $PSQL "INSERT INTO customers (name) VALUES ('$CUSTOMER_NAME')"
fi

CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

echo "Time?"
read SERVICE_TIME
$PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')"

SERVICE_NAME_SELECTED=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
echo "I have put you down for a $SERVICE_NAME_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME."


