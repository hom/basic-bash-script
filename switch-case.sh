#!/bin/bash

echo -n "Please enter the name of a car brand: "
read car

case ${car} in
  Tesla)
    echo -n "${car}'s factory in the USA."
    ;;
  BMW | Mercedes | Audi | Porsche)
    echo -n "${car}'s factory in Germany."
    ;;
  Toyoda | Mazda | Mitsubishi | Subaru)
    echo -n ${car}'s factory in Japan.'""
    ;;
  *)
    echo -n "${car} is an unknown car brand."
    ;;
esac
