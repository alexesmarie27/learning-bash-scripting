#!/bin/bash

echo 'Printing the URLs of the top 10 movies:'
curl www.imdb.com/chart/boxoffice | grep '"/title'
