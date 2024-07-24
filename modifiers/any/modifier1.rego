package sdp

import rego.v1

locations := { "eastus", "westus" }

modifiers["location"] := input.location in locations

