#!/bin/bash
passwd;

# add a user (archie) to eliminate root warning
useradd -m -G wheel -s /bin/bash archie;
passwd archie;

su - archie;