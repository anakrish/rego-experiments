package policy

import future.keywords

deny if { 
      input.type== "virtualMachine"
      input.subscriptionId == "someguid"

      sdp_modifier
}

# No modifiers have been specified
sdp_modifier if not data.sdp.modifiers

# All modifiers must be true
sdp_modifier if {
      # Loop through each modifier
      every modifier in data.sdp.modifiers {
      	    # Check that modifier is true
      	    modifier == true
      }
}
